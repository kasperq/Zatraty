unit MoneyTypes;

interface

type
  TMoneyTypes = (
                  zagr = 1,       // ���� ��������
                  ostBegNz,       // ���� ������� �� ������ ������ � �/�
                  ostEndNz,       // ���� ������� �� ����� ������ � �/�
                  bux,            // ���� ������� � ���� � ��� ����������
                  rash            // ���� ������� �� ���������
                );

  TTipDok = (
              report = 237,
              zatrKol = 238,
              zatrSum = 239
            );

implementation

end.
