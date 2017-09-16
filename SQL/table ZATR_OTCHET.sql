/******************************************************************************/
/***               Generated by IBExpert 16.09.2017 14:57:32                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/


CREATE GENERATOR GEN_ZATR_OTCHET_ID;

CREATE TABLE ZATR_OTCHET (
    OTCHET_ID         INTEGER NOT NULL,
    DOC_ID            INTEGER NOT NULL,
    KSM_ID            INTEGER,
    RAZDEL_ID         INTEGER,
    KEI_ID            INTEGER,
    PARENT            INTEGER,
    ACCOUNT           CHAR(6),
    ACTIVE_DOPR       INTEGER,
    OST_BEG_S         NUMERIC(18,6),
    OST_BEG_NZ        NUMERIC(18,6),
    PRIHOD            NUMERIC(18,6),
    ZAGRUZ            NUMERIC(18,6),
    RASHOD            NUMERIC(18,6),
    PER_S             NUMERIC(18,6),
    PER_NZ            NUMERIC(18,6),
    OST_END_S         NUMERIC(18,6),
    OST_END_NZ        NUMERIC(18,6),
    PERERAS_M         NUMERIC(18,6),
    PERERAS_G         NUMERIC(18,6),
    DATE_TIME_UPDATE  TIMESTAMP,
    USER_NAME         CHAR(10),
    RASHOD_YEAR       NUMERIC(18,6),
    RASHOD_QUAT       NUMERIC(18,6)
);




/******************************************************************************/
/***                              Primary keys                              ***/
/******************************************************************************/

ALTER TABLE ZATR_OTCHET ADD CONSTRAINT PK_ZATR_OTCHET PRIMARY KEY (OTCHET_ID);


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: ZATR_OTCHET_BI */
CREATE OR ALTER TRIGGER ZATR_OTCHET_BI FOR ZATR_OTCHET
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.otchet_id is null) then
    new.otchet_id = gen_id(gen_zatr_otchet_id,1);
end
^


/* Trigger: ZATR_OTCHET_BIU1 */
CREATE OR ALTER TRIGGER ZATR_OTCHET_BIU1 FOR ZATR_OTCHET
ACTIVE BEFORE INSERT OR UPDATE POSITION 1
AS
begin
  new.date_time_update = current_timestamp;
  new.user_name = current_user;
end
^

SET TERM ; ^



/******************************************************************************/
/***                               Privileges                               ***/
/******************************************************************************/


/* Privileges of users */
GRANT ALL ON ZATR_OTCHET TO IGOR WITH GRANT OPTION;

/* Privileges of roles */
GRANT ALL ON ZATR_OTCHET TO SKLAD_CEH;
