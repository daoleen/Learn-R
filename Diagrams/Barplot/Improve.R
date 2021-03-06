source("../vcd_data.R")

# Улучшение столбчатых диаграмм
# Есть несколько способов улучшения внешнего вида столбчатых диаграмм. К примеру, если у вас
# есть много столбцов, их подписи могут начать перекрываться. Можно уменьшить размер шрифта
# при помощи параметра cex.names (для достижения нужного эффекта его значения должны быть
# меньше единицы). В качестве альтернативы можно использовать параметр names.arg, который
# позволяет задать текстовый вектор с подписями для столбцов. Также для оптимизации расположения
# текста можно использовать графические параметры
par(mar=c(5,8,4,2))
par(las=2)
counts <- table(Arthritis$Improved)
barplot(counts,
        main="Treatment Outcome",
        horiz=TRUE, cex.names=0.8,
        names.arg=c("No Improvement", "Some Improvement","Marked Improvement")
)

# В этом примере мы повернули столбцы диаграммы (las=2), изменили текст подписей, а также
# одновременно увеличили левого поля рисунка (при помощи mar) и уменьшили размер шрифта
# (cex.names=0.8), чтобы как следует разместить подписи. Функция par() позволяет существенно
# изменять создаваемые по умолчанию диаграммы.