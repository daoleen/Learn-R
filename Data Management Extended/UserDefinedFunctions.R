# Одно из существенных преимуществ R – это то, что пользователи могут создавать собственные
# функции. Структура этих функций выглядит примерно так:
#  myfunction <- function(arg1, arg2, ... ){
#    statements
#    return(object)
#  }

mystats <- function(x, parametric=TRUE, print=FALSE) {
  if (parametric) {
    center <- mean(x); 
    spread <- sd(x)
  } else {
    center <- median(x); 
    spread <- mad(x)
  }
  
  if (print & parametric) {
    cat("Mean=", center, "\n", "SD=", spread, "\n")
  } else if (print & !parametric) {
    cat("Median=", center, "\n", "MAD=", spread, "\n")
  }
  
  result <- list(center=center, spread=spread)
  return(result)
}

# Чтобы увидеть эту функцию в действии, сначала создадим некоторые данные (случайная выборка из
# 500 чисел, принадлежащих нормальному распределению):
set.seed(1234)
x <- rnorm(500)
# После выполнения команды
y <- mystats(x, print=T)


mydate <- function(type="long") {
  switch(type,
         long = format(Sys.time(), "%A %B %d %Y"),
         short = format(Sys.time(), "%m-%d-%y"),
         cat(type, "это неизвестный формат\n")
  )
}

mydate("long")
mydate("short")


# Существует несколько функций, которые помогают исправлять ошибки в написанных вами
# функциях. Для создания сообщений об ошибке можно использовать функцию warning(). Функция
# message() создает диагностические сообщения, а функция stop() останавливает выполнение
# функции и выводит на экран сообщение об ошибке. Прочтите онлайн-справку по этим функциям для
# получения дальнейшей информации.

# Совет. Как только вы начнете писать функции, вне зависимости от их длины и сложности
# вам понадобятся хорошие средства для отладки команд. В R есть много встроенных функций для
# поиска ошибок, а дополнительные пакеты предоставляют еще большие возможности. Прекрасный
# источник информации по этой теме – онлайн-пособие Дункан Мардоч (Duncan Murdoch) «Отладка
# команд в R» (http://www.stats.uwo.ca/faculty/murdoch/software/debuggingR).