SET TERM ^ ;

create or alter procedure ADD_ZATR_OTCHET
returns (
    OTCHET_ID integer)
as
begin
  OTCHET_ID = gen_id(gen_zatr_otchet_id,1);
  suspend;
end^

SET TERM ; ^

/* Following GRANT statetements are generated automatically */

GRANT USAGE ON SEQUENCE GEN_ZATR_OTCHET_ID TO PROCEDURE ADD_ZATR_OTCHET;

/* Existing privileges on this procedure */

GRANT EXECUTE ON PROCEDURE ADD_ZATR_OTCHET TO IGOR;
