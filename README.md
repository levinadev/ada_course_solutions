# Решения задач курса [Адское программирование](https://stepik.org/a/304460) на Stepik

В репозитории собраны все 11 задач курса, в которых нужно написать программу на Ada. Языка Ada нет среди языков задач Stepik, поэтому в этих задачах программа пишется и запускается у себя на компьютере, а в поле ответа на Stepik вводится число, которое она вывела. В файле задачи есть условие и решение автора курса. Каждое решение собрано компилятором GNAT и выводит тот ответ, который принимает Stepik.

Тесты курса "Что выведет этот код?" и "Почему компилятор не соберёт" сюда не входят, их нужно решать без подсказки.

## Как пользоваться

1. Сначала решите задачу сами и введите ответ на Stepik.
2. Найдите файл задачи. Он лежит в папке модуля, внутри неё в папке урока. Ссылки на все файлы есть в содержании ниже.
3. Сравните своё решение с решением из файла. Программы могут быть написаны по-разному, главное, чтобы ответ совпал.

Если задача не получается, не открывайте решение сразу. Перечитайте теорию урока и подсказку под условием на Stepik, выведите через `Put_Line` промежуточные значения, посмотрите комментарии под шагом. Подсмотренное решение почти ничему не учит.

## Как запустить решение

Нужен компилятор GNAT. Как его поставить, рассказано в уроке 2.2 курса. Файл называется так же, как процедура внутри него, этого требует GNAT. Перейдите в папку задачи, соберите программу и запустите. Например, так запускается первая задача в Linux.

```bash
cd 02_ada_and_its_language/04_numbers_and_output
gnatmake remainder.adb
./remainder
```

В Windows и macOS с Alire команда сборки начинается с `alr exec --`, а запуск такой же. Собирайте из папки проекта Alire, как в уроке 2.2, тогда Alire найдёт свой компилятор.

```bash
alr exec -- gnatmake remainder.adb
./remainder
```

При сборке рядом с программой появятся файлы `.o` и `.ali`. Это промежуточные файлы компилятора, их можно удалить.

## Содержание

Номер модуля в названии папки совпадает с номером модуля в курсе, а номер урока с номером урока внутри модуля.

### 2. Ада и её язык

| Урок | Шаг | Файл |
|---|---|---|
| 2.4 Числа и вывод | 3 | [`02_ada_and_its_language/04_numbers_and_output/remainder.adb`](02_ada_and_its_language/04_numbers_and_output/remainder.adb) |

### 3. Строгие типы

| Урок | Шаг | Файл |
|---|---|---|
| 3.2 Целые и дробные числа | 4 | [`03_strict_types/02_integers_and_floats/speed.adb`](03_strict_types/02_integers_and_floats/speed.adb) |
| 3.3 Символы и строки | 4 | [`03_strict_types/03_characters_and_strings/codes.adb`](03_strict_types/03_characters_and_strings/codes.adb) |

### 4. Ветвления и циклы

| Урок | Шаг | Файл |
|---|---|---|
| 4.2 Циклы | 4 | [`04_branches_and_loops/02_loops/count.adb`](04_branches_and_loops/02_loops/count.adb) |

### 5. Свои типы

| Урок | Шаг | Файл |
|---|---|---|
| 5.2 Перечисления | 4 | [`05_own_types/02_enumerations/days.adb`](05_own_types/02_enumerations/days.adb) |

### 6. Массивы и строки

| Урок | Шаг | Файл |
|---|---|---|
| 6.2 Массивы без размера и строки | 4 | [`06_arrays_and_strings/02_unconstrained_arrays_and_strings/letters.adb`](06_arrays_and_strings/02_unconstrained_arrays_and_strings/letters.adb) |

### 7. Подпрограммы

| Урок | Шаг | Файл |
|---|---|---|
| 7.2 Режимы параметров и перегрузка | 4 | [`07_subprograms/02_parameter_modes_and_overloading/digit_count.adb`](07_subprograms/02_parameter_modes_and_overloading/digit_count.adb) |

### 8. Записи и пакеты

| Урок | Шаг | Файл |
|---|---|---|
| 8.3 Закрытые типы | 4 | [`08_records_and_packages/03_private_types/chain_average.adb`](08_records_and_packages/03_private_types/chain_average.adb) |

### 9. Исключения и контракты

| Урок | Шаг | Файл |
|---|---|---|
| 9.1 Исключения | 4 | [`09_exceptions_and_contracts/01_exceptions/fib_count.adb`](09_exceptions_and_contracts/01_exceptions/fib_count.adb) |
| 9.3 Предикаты типов | 4 | [`09_exceptions_and_contracts/03_type_predicates/leap_count.adb`](09_exceptions_and_contracts/03_type_predicates/leap_count.adb) |

### 10. Аналитическая машина

| Урок | Шаг | Файл |
|---|---|---|
| 10.2 Программа на Ada | 3 | [`10_analytical_engine/02_ada_program/bernoulli.adb`](10_analytical_engine/02_ada_program/bernoulli.adb) |
