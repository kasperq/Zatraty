unit SvodParams;

interface

type
  TSvodType = (
                  svodVed = 1,       // сводная ведомость
                  itogNez,            // итоговая незавершенка
                  tovarProd        // расход на товарную продукцию
                );

  TSvodPlace = (              // площадка
                  medPrep = 1,       // медпрепараты
                  endokr            // эндокринка
                );

implementation

end.
