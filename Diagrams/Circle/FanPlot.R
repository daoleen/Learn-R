# Веерная диаграмма
# На круговых диаграммах сложно сравнивать значения сегментов (если только они не
# приведены в подписях). К примеру, сможете ли вы сравнить США и Германию, глядя на простую
# круговую диаграмму? Если можете, то вы проницательней меня. В качестве попытки улучшить
# ситуацию, был разработан вариант круговой диаграммы под названием веерная диаграмма. Эта
# диаграмма (Lemon & Tyagi, 2009) предоставляет пользователю возможность представить графически
# и сами значения, и различия между ними. В R эту диаграмму можно построить при помощи функции
# fan.plot() из пакета plotrix.

library(plotrix)
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
fan.plot(slices, labels = lbls, main="Fan Plot")

# На веерной диаграмме сегменты расположены так, что они налегают друг на друга, а их радиусы
# имеют такой размер, чтобы каждый сегмент был виден. Здесь можно видеть, что Германии
# соответствует самый большой сегмент и что размер сегмента США составляет примерно 60% от
# Германии. Франция составляет около половины от Германии и вдвое превосходит Австралию.
# Помните, что здесь важна ширина сегментов, а не их радиус.