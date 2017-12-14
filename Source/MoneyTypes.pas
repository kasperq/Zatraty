unit MoneyTypes;

interface

type
  TMoneyTypes = (
                  zagr = 1,       // цена загрузки
                  ostBegNz,       // цена остатка на начало мес€ца в н/з
                  ostEndNz,       // цена остатка на конец мес€ца в н/з
                  bux,            // цена прихода в цеха в ј–ћ Ѕухгалтера
                  rash            // цена расхода на выработку
                );

  TTipDok = (
              report = 237,
              zatrKol = 238,
              zatrSum = 239
            );

implementation

end.
