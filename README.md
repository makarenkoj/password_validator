Test task:
Password Validator
=

Description
-
Предположим, что у нас есть текстовый файл, который выглядит следующим образом:

---
a 1-5: abcdj

z 2-4: asfalseiruqwo

b 3-6: bhhkkbbjjjb

---
Каждая строчка состоит из требования к паролю и самого пароля. Требование к
паролю указывает символ, который должен содержаться в пароле, и сколько раз он
должен встречаться. Например, требование в первой строчке означает, что символ "a"
должен встречаться от 1 до 5 раз. В примере выше два пароля валидны (1 и 3),
потому что удовлетворяют своим требования, 2-й - нет, потому что символ "z" в нем
должен встречаться от 2 до 4 раз, но не встречается ни разу.
Нужно написать код, который посчитает количество валидных паролей в таком файле.

Requirements
-

* ruby
* git


How to use
-

* Clone the repository on your computer

  `git clone git@github.com:makarenkoj/password_validator.git`

* Transfer the `passwords.txt` file to the data folder

* Open terninal in program folder and launch program:

  `ruby result.rb`
