# Круговые диаграммы
# Несмотря на то, что круговые диаграммы широко используются в деловом мире, они критикуются
# большинством статистиков, включая тех, кто пишет помощь для R. Они рекомендуют применять
# столбчатые или точечные диаграммы вместо круговых диаграмм, поскольку людям легче сравнивать
# длины, чем площади и объемы. Возможно, именно из-за таких соображений возможности
# построения круговых диаграмм в R довольно сильно ограничены по сравнению с другими
# статистическими программами.
# Круговые диаграммы создаются при помощи функции
# pie(x, labels)
# где x – это лишенный отрицательных значений числовой вектор, определяющий площадь каждого
# сегмента диаграммы, а labels – текстовый вектор, содержащий подписи для сегментов. В
# представленном ниже программном коде содержатся четыре примера:

# Объединяем четыре графика
par(mfrow=c(2, 2))
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie(slices, labels = lbls, main="Simple Pie Chart")

# Добавляем проценты к круговой диаграмме
pct <- round(slices/sum(slices)*100)
lbls2 <- paste(lbls, " ", pct, "%", sep="")
pie(slices, labels=lbls2, col=rainbow(length(lbls2)),
    main="Pie Chart with Percentages")

# 3D-диаграмма
library(plotrix)
pie3D(slices, labels=lbls,explode=0.1, main="3D Pie Chart ")

# Делаем диаграмму из таблицы
mytable <- table(state.region)
lbls3 <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls3, main="Pie Chart from a Table\n (with sample sizes)")


# Сначала вы задаете параметры диаграммы, так что все четыре элемента объединены на одной панели
# (объединение нескольких диаграмм в одну комбиированную рассмотрено в главе 3). Затем вы
# вводите данные, которые будут использованы в первых трех диаграммах.
# Для второй круговой диаграммы  вы преобразовываете размер выборок в проценты и
# добавляете эту информацию к подписям сегментов. Кроме того, сегменты этой диаграммы
# раскрашены с использованием функции rainbow(), описанной в главе 3. В нашем случае
# rainbow(length(lbls2)) означает rainbow(5), что задает пять цветов для диаграммы.
# Третья диаграмма – это трехмерная круговая диаграмма, созданная при помощи команды
# pie3D() из пакета plotrix. Проверьте, что вы скачали и установили этот пакет перед первым
# использованием. Статистики, которые не любят круговые диаграммы, прямо-таки ненавидят их
# трехмерную версию (хотя, возможно, втайне считают ее симпатичной). Это происходит потому, что
# 3D-эффект не дает никакой дополнительной информации о данных, а только отвлекает внимание,
# как приятная глазу вещь.
# На примере четвертой круговой диаграммы вы увидите, как построить ее на основе таблицы. 
# В этом случае вы подсчитываете число штатов в каждом регионе США и добавляете эту
# информацию к подписям сегментов перед созданием диаграммы.