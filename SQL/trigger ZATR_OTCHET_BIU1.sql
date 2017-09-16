SET SQL DIALECT 3;



SET TERM ^ ;



CREATE OR ALTER TRIGGER ZATR_OTCHET_BIU1 FOR ZATR_OTCHET
ACTIVE BEFORE INSERT OR UPDATE POSITION 1
AS
begin
  new.date_time_update = current_timestamp;
  new.user_name = current_user;
end
^

SET TERM ; ^

