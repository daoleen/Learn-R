####                              Повторение и циклы                              ####
# for (var in seq) statement
for (i in 1:10) print("Hello")

# while (cond) statement
i <- 10
while (i > 0) {
  print("Hello"); 
  i <- i - 1
}

# Циклы в R могут быть неэффективными и занимать много времени, когда вы имеете дело с
# большими объемами данных. При любой возможности лучше вместо циклов использовать
# встроенные числовые и текстовые функции в R вместе с функциями семейства apply.



####                          Условные операторы                                ####

# if (cond) statement
# if (cond) statement1 else statement2
grade <- "aaa"
if (is.character(grade)) 
  grade <- as.factor(grade)

if (!is.factor(grade)) {
  grade <- as.factor(grade) 
} else {
  print("Grade already is a factor")
}

# Конструкция ifelse – компактная и векторизованная версия конструкции if-else. Синтаксис
# таков:
#  ifelse(cond, statement1, statement2)
score <- 0.3
ifelse(score > 0.5, print("Сдал"), print("Провалился"))
outcome <- ifelse (score > 0.5, "Сдал", "Провалился")



####                                Switch                                          ####
# switch(expr, ...) 
# где троеточие означает команды, соответствующие возможным значениям expr
чувства <- c("печаль", "страх")
for (i in чувства)
  print(
    switch(i,
           счастье = "Я рад, что ты счастлив",
           страх = "Тут нечего бояться",
           печаль = "Приободрись",
           злость = "Успокойся"
    )
  )
