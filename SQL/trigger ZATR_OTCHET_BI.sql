SET SQL DIALECT 3;


CREATE GENERATOR GEN_ZATR_OTCHET_ID;

SET TERM ^ ;



CREATE OR ALTER TRIGGER ZATR_OTCHET_BI FOR ZATR_OTCHET
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.otchet_id is null) then
    new.otchet_id = gen_id(gen_zatr_otchet_id,1);
end
^

SET TERM ; ^

