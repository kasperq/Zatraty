unit Document;

interface

uses DocumentDM, DBDM,
  Forms, Data.DB;

type
  TDocument = class
  private
    db : TdDM;
    dm : TFDocumentDM;

  public
    Constructor Create(var db : TdDM);
    Destructor Destroy; override;

    function find(strukId, klientId, tipOpId, tipDokId : integer; dateBegin,
                  dateEnd : TDate) : boolean;
    function createDocument(strukId, klientId, tipOpId, tipDokId : integer;
                            dateDok, dateOp : TDate; ndok : string) : boolean;
    function saveDocument() : boolean;

    function getCurrentDocId() : integer;

    property docId : integer read getCurrentDocId;
  end;

implementation

{ TDocument }

constructor TDocument.Create(var db: TdDM);
begin
  inherited Create;
  self.db := db;
  if (dm = nil) then
    dm := TFDocumentDM.Create(application);

  dm.q_document.Database := db.db;
  dm.q_document.Transaction := db.trans_read;
  dm.upd_document.UpdateTransaction := db.trans_write;

  dm.proc_addDoc.Database := db.db;
  dm.proc_addDoc.Transaction := db.trans_read;
end;

function TDocument.createDocument(strukId, klientId, tipOpId, tipDokId: integer;
  dateDok, dateOp: TDate; ndok: string): boolean;
begin
  dm.ndok := ndok;
  dm.dateDok := dateDok;
  dm.dateOp := dateOp;
  dm.strukId := strukId;
  dm.klientId := klientId;
  dm.tipOpId := tipOpId;
  dm.tipDokId := tipDokId;
  dm.q_document.Append;
end;

destructor TDocument.Destroy;
begin

  inherited;
end;

function TDocument.find(strukId, klientId, tipOpId, tipDokId: integer;
  dateBegin, dateEnd: TDate): boolean;
begin
  result := false;
  dm.openDocument(strukId, klientId, tipOpId, tipDokId, dateBegin, dateEnd);
  dm.q_document.First;
  if (dm.q_document.FieldByName('DOC_ID').AsInteger > 0) then
    result := true;
end;

function TDocument.getCurrentDocId: integer;
begin
  result := dm.q_document.FieldByName('DOC_ID').AsInteger;
end;

function TDocument.saveDocument: boolean;
begin
  if (dm.q_document.Modified)
     or (dm.q_document.State = dsEdit) or (dm.q_document.State = dsInsert) then
    dm.q_document.Post;
  if (dm.q_document.UpdatesPending) then
    dm.q_document.ApplyUpdates;

end;

end.
