import UIKit

// MARK: - Task 1 - Classes + Initialization
// 1. Создайте 3 любых класса и реализуйте в них инициализаторы разного типа
class Human1 {
var name: String
var pashport: Int
var age: Int

    init(name:String, pashport: Int, age: Int) {
self.name = name
self.pashport = pashport
self.age = age
        
    }
}
class fastFood {
    enum tipeOfRestourant {
        case McDonalds
        case KFC
        case BurgerKing
    }
    enum tipeHumans {
        case people
        case children
    }
    var type: tipeOfRestourant
    var eat: String
    var human: tipeHumans

init() {
    self.eat = "Hamburger"
    self.type = .McDonalds
    self.human = .people
    
    }
}
//init(type: tipeOfRestourant, eat: String, human: tipeHumans = .children) {
//    self.eat = "Hamburger"
//    self.type = type
//    self.human = human
//}




// MARK: - Task 2 - Structure
// Используйте решение и предыдущей домашней работы
// Если домашнее было не выполнено, тогда реализуйте Ваше решение ниже.

// 1. Создайте структуру Студент.
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этой структуры и заполните их данными.
// Положите их всех в массив (журнал).

// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?
// Распечатайте оба массива.
struct Student {
    
    var name: String
    var surname: String
    var dateBirdthday: String
    var mark: Double
    
}
let student1: Student = Student(name: "Sasha", surname: "Mich", dateBirdthday: "10.09.1999", mark: 5.5)
let student2: Student = Student(name: "Masha", surname: "Artemowa", dateBirdthday: "05.08.1996", mark: 3)
let student3: Student = Student(name: "Sergey", surname: "Korova", dateBirdthday: "30.01.1999", mark: 8.1)
let student4: Student = Student(name: "Sasha", surname: "Vxiol", dateBirdthday: "10.09.1999", mark: 7.5)


var journal: [Student] = []
journal.append(student1)
journal.append(student2)
journal.append(student3)
journal.append(student4)


journal.sort{ $0.mark > $1.mark }
journal.sort{ $0.surname < $1.surname }
journal.enumerated().forEach {
print("\($0 + 1) - \($1)")
    
}
var newStudentJournal: [Student] = journal

let student5: Student = Student(name: "Habib", surname: "NUrmof", dateBirdthday: "10.09.1999", mark: 5.5)
newStudentJournal.enumerated().forEach{
 
print("\($0 + 1) - \($1.name) \($1.surname) \($1.dateBirdthday) \($1.mark)")
}
journal.enumerated().forEach {
print("\($0 + 1) - \($1)")
}
//    init(surname: String, datebirthday: String, name: String, mark: Int) {
//        self.surname = surname
//        self.name = name
//        self.dateBirdthday = dateBirdthday
//        self.mark = mark

    






// MARK: - Task 3 - Classes
// Используйте решение и предыдущей домашней работы
// Если домашнее было не выполнено, тогда реализуйте Ваше решение ниже.

// 1. Создайте класс Студент
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этого класса и заполните их данными.
// Положите их всех в массив (журнал).

// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?
class Students {
    var name: String
    var surname: String
    var year: Int
    var mark: Double

    init(surname: String, year: Int, name: String, mark: Double) {
        self.surname = surname
        self.year = year
        self.name = name
        self.mark = mark
    }
}
let student11: Students = Students(surname: "Zaba", year: 1980, name: "Lexa", mark: 9.9)
let student22: Students = Students(surname: "Baba", year: 1930, name: "Pasha", mark: 2.3)
let student33: Students = Students(surname: "MaMa", year: 2011, name: "Masha", mark: 5.5)
let student44: Students = Students(surname: "Raba", year: 1999, name: "Sasha", mark: 3.4)

var journal1: [Students] = []
journal1.append(student11)
journal1.append(student22)
journal1.append(student33)
journal1.append(student44)
journal1.sorted(by: { $0.mark > $1.mark })
journal1.enumerated().forEach {
    print("\($0 + 1) - \($1.name) \($1.surname) \($1.year) \($1.mark)")
}

var newJournal1:[Students] = journal1

// застрял на этой задаче не выводит и не сортирует
// MARK: - Почему по итогу массивы из заданий 2 и 3 менялись / не менялись? Чем это обусловлено?

//в структурах не должно меняться, а в классах должно, не дошел до этого
// MARK: - Резюмируйте, чем отличаются классы от структур и когда что лучше использовать?



// MARK: - Task 4 - Properties
// Добавить студенту property «Дата рождения» (структура, содержащая день, месяц, год) и два computed property:
// 1 — вычисляющее его возраст
// 2 — вычисляющее, сколько всего лет он учился (студент учился в школе с 6 лет, если ему меньше 6 лет — возвращать 0)

//не понял как мне записать условие для второго пункта, куда и где
struct dateOfBirthaday {
    var day: Int
    var month: Int
    var year: Int
    
}
class Studentss {
    var birthday: dateOfBirthaday = dateOfBirthaday(day: 10, month: 09, year: 2010)
    
    
    var age: Int{
        get {
            
            //                if self.age > 6 {
            //                    print("\(age) лет")
            //                } else {
            //                    print("0")
            //                }
            return 2020 - birthday.year
        }
        
    }
    var howYearHeStudy: Int{
        get {
            return age - 6
        }
    }
}

let studentAge = Studentss()

studentAge.age
if studentAge.howYearHeStudy < 6{
    print("0")
}
print(studentAge.age)

//let todaydate = dateOfBirthaday(day: 22, month: 11, year: 2020)
//let studentSasha = dateOfBirthaday(day: 10, month: 09, year: 1994)
//var birthday: Int = todaydate.year - studentSasha.year
//print(birthday)

//var howYearHeStudy: Int {
//    if birthday > 6 {
//        print("\(birthday - 6)")
//    }else{
//        print("0")
//    }
//}


    


// MARK: - Task 5 - Properties
// 1. Создайте класс Человек, который будет содержать имя, фамилию, возраст, рост и вес.
// 2. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
// - минимальный и максимальный возраст каждого объекта
// - минимальную и максимальную длину имени и фамилии
// - минимально возможный рост и вес
// - создайте свойство, которое будет содержать количество созданных объектов этого класса
class Human {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    var nationality: String
    
    init(name: String, age: Int, height: Double, weight: Double, nationality: String) {
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.nationality = nationality
        
        
    }
}
let human1: Human = Human(name: "Sasha", age: 35, height: 175, weight: 75.3, nationality: "Belarus")
let human2: Human = Human(name: "Masha", age: 33, height: 164, weight: 59.8, nationality: "China")



   

// MARK: - Task 6 - Inheritance
// 1. Создайте класс Кот
// 2. Наделите родительский класс свойствами и методами
// 3. Создайте 2 класса наследника: Рыжий кот и Черная кошка
// 4. Добавьте все необходимые свойства: цвет, пол, размер
// 5. Добавьте приватное свойство Голос, в которое нельзя записать значение извне
// 6. Реализуйте свойство имя кота, доступное только для чтения, и дайте имя каждому котику
// 7. Реализуйте конструктор, который в качестве аргумента принимает имя животного и устанавливает его в переменную с соответствующим уровнем доступа, который не позволяет переопределить её в дочерних классах

class Cat {
    var name: String
    var age1: Int
    var color: String
    private var voice: String = "MIAUUUUUU"
    
    init(name: String, age1: Int, color: String) {
        self.name = name
        self.age1 = age1
        self.color = color
    }

}
class RedHeadCat: Cat {
    
}
class BlackCat: Cat {
    var male: String = "Ж"
}

// MARK: - Task 7 - Overriding
// 1. Создайте класс Геометрическая фигура и реализуйте в нем метод подсчета площади фигуры
// 2. Создайте 5 классов-наследников: Круг, Квадрат, Треугольник, Трапеция и Ромб
// 3. Переопределите метод подсчета площади фигуры и реализуйте расчет этой площади для каждой фигуры
// 4. Все результаты вывести в консоль.
// 5. Добавьте переменную Description, которая характеризует тип фигуры
// 6. Переопределите ее для каждой фигуры и выведите описание каждой фигуры в консоль
// 7. Определите свойство цвет для каждой фигуры
// 8. Если фигуры - Круг, Треугольник или Ромб - задайте им красный цвет
// 9. Если фигуры - Квадрат или Трапеция - задайте им зеленый цвет






// MARK: - Task 8 - Extensions
// 1. Создайте расширение для Int со свойствами isNegative, isPositive
// 2. Добавьте свойство, которое возвращает количество символов в числе
// 3. Добавьте типу String метод trimText(), чтобы он мог отсекать N последних символов
// !!! Обратите внимание, как будет вести себя ваша программа, если вы попытаетесь удалить больше символов, чем есть в строке

// 4. Добавьте типу String метод truncate(length: Int), который определит, что строка длиннее, чем length
// А затем отсечет лишние символы и заменит их на "..."





// MARK: - Task 9 - Inheritance + Protocol
// 1. Создайте базовый класс «Артист», у которого должны быть:

/// `Свойства`
// - имя (структура) - разрешить только чтение
// - возраст - сделать проверку на положительное значение
// - страна работы (Беларусь, Россия, Украина, другое (enum associated value))
// - стаж работы
// - зарплата в неделю - артист может отказаться её озвучивать
// - зарплата за день - вычисляется на основе зарплаты в неделю после того, как было установлено новое значение
// - сколько процентов своей жизни работал артистом - computed property

/// `Инициализаторы`
// 2 разных инициализатора (имя в каждом инициализаторе - обязательно)

/// `Методы`
// статический метод, возвращающий возможные страны проживания артиста. сделать недоступным к переопределению
// статический метод, выводящий информацию о названии класса в консоль
// метод с информацией об артисте - выводит все свойства в читаемом виде. недоступен к переопределению
// метод «выступить», выводящий информацию об артисте, в каком жанре выступает и что показывает

// Создать классы «Музыкант», «Художник», «Танцор», наследующиеся от артиста.
// В каждом классе переопределить метод с информацией о классе.
// - Танцор отказывается выступать, если его зарплата за день меньше 100, о чем сообщает в консоли.
// - Художник не хочет использовать своё родное имя, заменяя его на сценическое, которое состоит из перемешанных букв родного имени.
// - Музыканты не хотят работать в Турции, уезжая в любую другую страну из списка доступных, а также у них появляется новый параметр - любимый инструмент.

// Создать по два экземпляра каждого класса (в том числе родителя) с различными данными, положив их в массив типа Артист.
// Пройтись по массиву и вызвать у каждого элемента метод выступить. Если в списке попался Танцор, то вывести его зарплату за день, если Музыкант, то отобразить любимый инструмент.

// 2. Создать протокол BusinessTrip со свойствами страна, продолжительность поездки, методы startTrip(), endTrip() и expressIndignation().
// Сделать реализацию по умолчанию метода startTrip(), который выводит страну командировки и продолжительность поездки.
// Позволить сущностям, который подчиняются протоколу, не реализовывать метод expressIndignation() - можно сделать через расширение
// Подчиниться в extension класса Артист протоколу BusinessTrip.
// В классе Художник в расширении реализовать метод expressIndignation(), в котором Художник выражает недовольство о необходимости поездки в командировку.

// 3. Создать протокол PayableBusinessTrip, наследующийся от протокола BusinessTrip, с новыми computed property - salaryInBusinessTrip, salaryCoefficient.
/// properties - `salaryInBusinessTrip`,  `salaryCoefficient` - доступ только на чтение

// Подчиниться в классе Артист протоколу PayableBusinessTrip в уже имеющемся extension.
// salaryInBusinessTrip вычисляется на основе зарплаты за день (если артист отказался ее называть, то зарплата по умолчанию - 80), помноженной на salaryCoefficient, зависящий от стажа работы:
/// - `1-2 года - 1x`,
/// - `3-5 лет - 1.5x`,
/// - `> 5 лет -  2x`.
// Танцорам повысить salaryInBusinessTrip на 10% и доработать метод startTrip(), исходя из требования танцора о минимальной зарплате в 100.


