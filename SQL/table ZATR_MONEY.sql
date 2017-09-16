/******************************************************************************/
/***               Generated by IBExpert 16.09.2017 14:56:25                ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/


CREATE GENERATOR GEN_ZATR_MONEY_ID;

CREATE TABLE ZATR_MONEY (
    MONEY_ID          INTEGER NOT NULL,
    STRUK_ID          INTEGER,
    KSM_ID            INTEGER,
    KEI_ID            INTEGER,
    KSM_IDPR          INTEGER,
    ZAGR_MONEY        NUMERIC(18,6),
    OST_MONEY         NUMERIC(18,6),
    "MONTH"           INTEGER,
    "YEAR"            INTEGER,
    PF                INTEGER,
    DATE_TIME_UPDATE  TIMESTAMP,
    USER_NAME         CHAR(10)
);




/******************************************************************************/
/***                              Primary keys                              ***/
/******************************************************************************/

ALTER TABLE ZATR_MONEY ADD CONSTRAINT PK_ZATR_MONEY PRIMARY KEY (MONEY_ID);


/******************************************************************************/
/***                                Triggers                                ***/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/***                          Triggers for tables                           ***/
/******************************************************************************/



/* Trigger: ZATR_MONEY_BI */
CREATE OR ALTER TRIGGER ZATR_MONEY_BI FOR ZATR_MONEY
ACTIVE BEFORE INSERT POSITION 0
as
begin
  if (new.money_id is null) then
    new.money_id = gen_id(gen_zatr_money_id,1);
end
^


/* Trigger: ZATR_MONEY_BIU0 */
CREATE OR ALTER TRIGGER ZATR_MONEY_BIU0 FOR ZATR_MONEY
ACTIVE BEFORE INSERT OR UPDATE POSITION 0
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
GRANT ALL ON ZATR_MONEY TO IGOR WITH GRANT OPTION;

/* Privileges of roles */
GRANT ALL ON ZATR_MONEY TO SKLAD_CEH;