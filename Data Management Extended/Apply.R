# Применение функций к матрицам и таблицам данных
# Одно из интересных свойств функций R – это то, что их можно применять к разным типам объектов
# (скаляры, векторы, матрицы, массивы и таблицы данных). Приведенный ниже программный код
# послужит иллюстрацией этого.

a <- 5
sqrt(a)
# [1] 2.236068
b <- c(1.243, 5.654, 2.99)
round(b)
# [1] 1 6 3
c <- matrix(runif(12), nrow=3)
c
#       [,1]  [,2]  [,3]  [,4]
#[1,] 0.4205 0.355 0.699 0.323
#[2,] 0.0270 0.601 0.181 0.926
#[3,] 0.6682 0.319 0.599 0.215
log(c)
#        [,1]   [,2]  [,3]  [,4]
#[1,] -0.866 -1.036 -0.358 -1.130
#[2,] -3.614 -0.508 -1.711 -0.077
#[3,] -0.403 -1.144 -0.513 -1.538
mean(c)
# [1] 0.444


# Обратите внимание на то, что в программном коде среднее значение матрицы c равно скаляру
# (0.444). Функция mean() вычисляет среднее арифметическое для всех 12 элементов матрицы. А что
# если вам нужно вычислить средние значения для каждой из трех строчек или каждого из четырех
# столбцов?
# В R есть функция apply(), которая позволяет применить любую функцию к любой части
# матрицы, массива или таблицы данных. Формат применения этой функции таков:
#  apply(x, MARGIN, FUN, ...)
# где x – это объект, MARGIN – индекс, обозначающий часть объекта (столбцы или строки), FUN –
# функция и ... – это любые параметры этой функции. Для матрицы или таблицы данных MARGIN=1
# обозначает строки, а MARGIN=2 – столбцы. Взгляните на пример
mydata <- matrix(rnorm(30), nrow=6) # Генерируем данные
mydata
#         [,1]  [,2]   [,3]    [,4]  [,5]
#[1,] 0.71298 1.368 -0.8320 -1.234 -0.790
#[2,] -0.15096 -1.149 -1.0001 -0.725 0.506
#[3,] -1.77770 0.519 -0.6675 0.721 -1.350
#[4,] -0.00132 -0.308 0.9117 -1.391 1.558
#[5,] -0.00543 0.378 -0.0906 -1.485 -0.350
#[6,] -0.52178 -0.539 -1.7347 2.050 1.569
apply(mydata, 1, mean) # Вычисляем средние значения для строк
# [1] -0.155 -0.504 -0.511 0.154 -0.310 0.165
apply(mydata, 2, mean) # Вычисляем средние значения для столбцов
# [1] -0.2907 0.0449 -0.5688 -0.3442 0.1906
apply(mydata, 2, mean, trim=0.2) # Вычисляем усеченные средние
# [1] -0.1699 0.0127 -0.6475 -0.6575 0.2312 значения для столбцов


# Поскольку FUN означает любую функцию в R, в том числе и ту, которую вы сами написали
# функция apply() – это мощное средство. В то время как apply() применяется к
# строкам или столбцам массива данных, lapply() и sapply() применяют функцию к целому списку. 
# Функция sapply() представляет собой дружественный к пользователю вариант функции lapply()