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
    let tipeOfRestourant: String
    let menu: String
    var price: Int
    var people: Int
    
    init() {
        self.tipeOfRestourant = ""
        self.menu = ""
        self.price = 0
        self.people = 0
    }
    init(tipeOfRestourant: String, menu: String, price: Int, people: Int) {
        self.tipeOfRestourant = tipeOfRestourant
        self.menu = menu
        self.price = price
        self.people = people
    }
}
class human {
    let wieght: Int = 0
    let hight: Int = 0
    let name: String = ""
}

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
var student1: Student = Student(name: "Sasha", surname: "Mich", dateBirdthday: "10.09.1999", mark: 5.5)
var student2: Student = Student(name: "Masha", surname: "Artemowa", dateBirdthday: "05.08.1996", mark: 3)
var student3: Student = Student(name: "Sergey", surname: "Korova", dateBirdthday: "30.01.1999", mark: 8.1)
var student4: Student = Student(name: "Sasha", surname: "Vxiol", dateBirdthday: "10.09.1999", mark: 7.5)


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
newStudentJournal[0].name = "Habib"
newStudentJournal[0].surname = "Bighl"
newStudentJournal[0].dateBirdthday = "10.09.1999"
newStudentJournal[0].mark = 5.5

newStudentJournal[1].name = "Pasha"
newStudentJournal[1].surname = "Allright"
newStudentJournal[1].dateBirdthday = "15.03.1939"
newStudentJournal[1].mark = 8.5
newStudentJournal.enumerated().forEach{
    
    print("\($0 + 1) - \($1.name) \($1.surname) \($1.dateBirdthday) \($1.mark)")
}
journal.enumerated().forEach {
    print("\($0 + 1) - \($1)")
}
//не изменился так как он пренадлежит структуре









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
func sortJournal (_ array:[Students]) -> [Students] {
    return array.sorted(by: {$0.surname == $1.surname ?
                            $0.name < $1.name :
                            $0.surname < $1.surname})
}

func printSortJournal(_ array:[Students]) {
    for (number, student) in array.enumerated() {
        print("\(number + 1): name: \(student.name). surname: \(student.surname). year: \(student.year). mark: \(student.mark). ")
        
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
journal1.sort { $0.mark > $1.mark }
journal1.enumerated().forEach {
    print("\($0 + 1) - \($1.name) \($1.surname) \($1.year) \($1.mark)")
}
var sortedJournal : [Students] = sortJournal(journal1)
print(printSortJournal(journal1))// так мне не выводит пробуем через функцию
var newJournal1:[Students] = journal1
newJournal1[0].name = "Erik"
newJournal1[0].surname = "Mazets"
newJournal1[0].year = 1994
newJournal1[0].mark = 6.9

newJournal1[1].name = "Ania"
newJournal1[1].surname = "Mir"
newJournal1[1].year = 1999
newJournal1[1].mark = 9.9

newJournal1[3].name = "Sanya"
newJournal1[3].surname = "Shpil"
newJournal1[3].year = 1989
newJournal1[3].mark = 3.9
print(printSortJournal(newJournal1))
print(printSortJournal(journal1))
//тут видим изменения
// MARK: - Почему по итогу массивы из заданий 2 и 3 менялись / не менялись? Чем это обусловлено?

// В первой задаче со структурами массив не поменялся так как структура значимый тип, при создании структуры в памяти создается новая яйчейка памяти.А во второй задаче все изменилось так как Класс это ссылочный тип, если меняем одно то и в памяти оно тоже поменяется
// MARK: - Резюмируйте, чем отличаются классы от структур и когда что лучше использовать?
//Классы и структуры имеют много общего. И в классах и в структурах можно:
//Объявлять свойства для хранения значений
//Объявлять методы, чтобы обеспечить функциональность
//Объявлять индексы, чтобы обеспечить доступ к их значениям, через синтаксис индексов
//Объявлять инициализаторы, чтобы установить их первоначальное состояние
//Они оба могут быть расширены, чтобы расширить их функционал за пределами стандартной реализации
//Они оба могут соответствовать протоколам, для обеспечения стандартной функциональности определенного типа
//НО КЛАССЫ ИМЕЮТ ДОП ВОЗМОЖНОСТИ ЧЕГО НЕТ У СТРУКТУР:
//Наследование позволяет одному классу наследовать характеристики другого
//Приведение типов позволяет проверить и интерпретировать тип экземпляра класса в процессе выполнения
//Деинициализаторы позволяют экземпляру класса освободить любые ресурсы, которые он использовал
//Подсчет ссылок допускает более чем одну ссылку на экземпляр класса.



// MARK: - Task 4 - Properties
// Добавить студенту property «Дата рождения» (структура, содержащая день, месяц, год) и два computed property:
// 1 — вычисляющее его возраст
// 2 — вычисляющее, сколько всего лет он учился (студент учился в школе с 6 лет, если ему меньше 6 лет — возвращать 0)


struct DateOfBirthaday {
    var day: Int
    var month: Int
    var year: Int
    
}
class Studentss {
    var birthday: DateOfBirthaday = DateOfBirthaday(day: 10, month: 09, year: 2009)
    var age: Int {
        2020 - birthday.year
    }
    
    var howYearHeStudy: Int {
        return self.age >= 6 ?
            self.age - 6 : 0
    }
    
}

let studentAge = Studentss()
studentAge.age
print(studentAge.age)
print(studentAge.howYearHeStudy)

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
    struct NumberOfOjekt {
        static var human = 0
    }
    private var _name: String
    var name: String {
        get {
            return self._name
        }
        set {
            newValue.count > 0 && newValue.count < 20 ? self._name = newValue : print("не првильное количество символов")
        }
    }
    private var _age: Int
    var age: Int {
        get {
            return self._age
        }
        set {
            newValue > 0 && newValue < 100 ? self._age = newValue : print("не правельный возраст")
        }
    }
    private var _height: Double
    var height: Double {
        get {
            return self._height
        }
        set {
            newValue > 0 && newValue < 235 ? self._height = newValue : print("слишком большой рост")
        }
    }
    private var _weight: Double
    var weight: Double {
        get {
            return self._weight
        }
        set {
            newValue > 0 && newValue < 250 ? self._weight = newValue : print("слишком большой вес")
        }
    }
    init(_name: String, _age: Int, _height: Double, _weight: Double) {
        self._age = _age
        self._name = _name
        self._height = _height
        self._weight = _weight
        NumberOfOjekt.human += 1
    }
}

Human.NumberOfOjekt.human
var human12 = Human(_name: "Ekatsiaryna", _age: 250, _height: 164.4, _weight: 270)
var human13 = Human(_name: "Lecha", _age: 40, _height: 184.4, _weight: 70)
var human14 = Human(_name: "Jajo", _age: 20, _height: 150.4, _weight: 400)
Human.NumberOfOjekt.human
print("human12.age")
//human12.age = 250
//print(human12.age)
//human12.name = "Ekatsiaryna"
//print(human12.name)
//human12.height = 164.4
//print(human12.height)
//human12.weight = 270
//print(human12.weight)



//    var nationality: String

//    init(name: String, height: Double, weight: Double, nationality: String) {
//        self.name = name
//
//        self.height = height
//        self.weight = weight
//        self.nationality = nationality


//let human1: Human = Human(name: "Sasha", _age: 35, height: 175, weight: 75.3, nationality: "Belarus")
//let human2: Human = Human(name: "Masha", age: 33, height: 164, weight: 59.8, nationality: "China")
//
//var people: [Human] = []
//
//people.append(human1)
//people.append(human2)
//
//
//let minAge = people.max { $0.age > $1.age }
//minAge?.age

// MARK: - Task 6 - Inheritance
// 1. Создайте класс Кот
// 2. Наделите родительский класс свойствами и методами
// 3. Создайте 2 класса наследника: Рыжий кот и Черная кошка
// 4. Добавьте все необходимые свойства: цвет, пол, размер
// 5. Добавьте приватное свойство Голос, в которое нельзя записать значение извне
// 6. Реализуйте свойство имя кота, доступное только для чтения, и дайте имя каждому котику
// 7. Реализуйте конструктор, который в качестве аргумента принимает имя животного и устанавливает его в переменную с соответствующим уровнем доступа, который не позволяет переопределить её в дочерних классах

class Cat {
    var male: String
    var age1: Double
    var color: String
    private(set) var voice: String = "MIAUUUUUU"
    
    private var _name: String = ""
    var name: String {
        get {
            return self._name
        }
        set{
            self._name = newValue
        }
    }
    
    init(name:String, male: String, age1: Double, color: String) {
        self.male = male
        self.age1 = age1
        self.color = color
        self.name = name
        
    }
    
}
class RedHeadCat: Cat {
    func Voise(){
        print(super.voice)
    }
    init(){
        super.init(name: "Рыжик",male: "М", age1: 1.5, color: "Рыжий")
        
    }
    
}
class BlackCat: Cat {
    func Voise(){
        print(super.voice)
    }
    init(){
        super.init(name:"Чернуха", male: "Ж", age1: 1.5, color: "Черный")
        
    }
}
var firstCat = RedHeadCat()
print("Имя: \(firstCat.name), Пол: \(firstCat.male), Лет: \(firstCat.age1), Цвет: \(firstCat.color), Говорит: \(firstCat.voice)")
//firstCat.voice = "pppppp"
//firstCat.name = "Щарик"
print(firstCat.Voise())
var secondCat = BlackCat()
print("Имя: \(secondCat.name), Пол: \(secondCat.male), Лет: \(secondCat.age1), Цвет: \(secondCat.color), Говорит: \(secondCat.voice)")






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
class Geometria {
    enum Color: String {
        case red
        case green
    }
    var description: String
    var color: Color
    var name: String
    init(description: String, color: Color, name: String) {
        self.description = description
        self.color = color
        self.name = name
    }
    
    func square() -> Double {
        return 0.0
    }
}

class Round: Geometria {
    var side: Double
    init(side: Double) {
        self.side = side
        super.init(description: "Фигура без углов", color: .red , name: "Круг")
        self.name = name
        self.description = description
        self.color = color
    }
    override func square() -> Double {
        return self.side * self.side * 3.14
    }
}

var squareRound = Round(side: 8)
squareRound.square()

class Squaree: Geometria {
    var side: Double
    
    init(side: Double) {
        self.side = side
        super.init(description: "Все углы и стороны равны", color: .green , name: "Квадрат")
        self.name = name
        self.description = description
        self.color = color
    }
    override func square() -> Double {
        return self.side * self.side
    }
}
var ssquare = Squaree(side: 4)
ssquare.square()

class Triangle: Geometria {
    var side: Double
    var side2: Double
    init(side: Double, side2: Double) {
        self.side = side
        self.side2 = side2
        super.init(description: "Фигура у которой будет всегда 2 острых угла ", color: .green , name: "Треугольник")
        self.name = name
        self.description = description
        self.color = color
    }
    override func square() -> Double {
        return self.side * self.side2 / 2
    }
}
var squareTriangle = Triangle(side: 5, side2: 8)
squareTriangle.square()

//func SquareTriangle() -> Int {
//    return self * self / 2
//}

class Trapeziod: Geometria {
    var side: Double
    var side2: Double
    var hieght: Double
    init(side: Double, side2: Double, hieght: Double) {
        self.side = side
        self.side2 = side2
        self.hieght = hieght
        super.init(description: "Четырехугольник у которого две стороны параллельны, а две не параллельны", color: .red , name: "Трапеция")
        self.name = name
        self.description = description
        self.color = color
        
    }
    override func square() -> Double {
        return ((self.side + self.side2) / 2) * self.hieght
    }
}
var squareTrapeziod = Trapeziod(side: 5, side2: 22.4, hieght: 21.8)
squareTrapeziod.square()
//func SquareTrapezoid(A: Double, B: Double, H: Double) -> Double {
//    return (A + B) / 2 * H


class Rhombus: Geometria {
    var side: Double
    var hieght: Double
    init(side: Double, hieght: Double) {
        self.side = side
        self.hieght = hieght
        super.init(description: "У Ромба противоположные стороны равны и попарно параллельны", color: .green , name: "Ромб")
        self.name = name
        self.description = description
        self.color = color
    }
    override func square() -> Double {
        return self.side * self.hieght
    }
}
var squareRhombus = Rhombus(side: 2, hieght: 8.1)
squareRhombus.square()
print(squareRhombus.description)
print(squareTrapeziod.description)
print(squareTriangle.description)
print(squareRound.description)
print(ssquare.description)
print(Geometria.Color.red)

//func SquareRhombus(A: Double, B: Double) -> Double {
//    return A * B


// MARK: - Task 8 - Extensions
// 1. Создайте расширение для Int со свойствами isNegative, isPositive
// 2. Добавьте свойство, которое возвращает количество символов в числе
// 3. Добавьте типу String метод trimText(), чтобы он мог отсекать N последних символов
// !!! Обратите внимание, как будет вести себя ваша программа, если вы попытаетесь удалить больше символов, чем есть в строке

// 4. Добавьте типу String метод truncate(length: Int), который определит, что строка длиннее, чем length
// А затем отсечет лишние символы и заменит их на "..."
extension Int{
    enum Kind{
        case isNegative, isPositive
    }
    var kind1 : Kind {
        switch self {
        case let x where x >= 0:
            return .isPositive
        default:
            return .isNegative
        }
    }
    func trimText() -> Int {
        return String(self).count
    }
}
extension String {
    func trimText(count: Int) -> String {
        return String(self.dropLast(count))
    }
    func truncate(length: Int) -> String {
        if self.count > length {
            let extraChar = self.count - length
            var newString = String(self.dropLast(extraChar))
            let point: String = "."
            for _ in 0...extraChar {
                newString.append(point)
            }
            return newString
        } else {
            return "Length is more then String!"
        }
    }
}
let numb = 12345
let name = "Александр"

print(numb.kind1)
print("summ = \(numb.trimText())")
print(name)
print(name.trimText(count: 8))
print(name.trimText(count: 2))
print(name.trimText(count: 210))
print(name.truncate(length: 5))


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
protocol PayableBusinessTrip: BusinessTrip {
    var salaryInBusinessTrip: Double { get }
    var salaryCoefficient: Double { get }
}

protocol BusinessTrip {
    var country: Artist.Countries { get set }
    var durationTrip: Int { get }
    func startTrip()
    func endTrip()
    func expressIndignation()
}

class Artist {
    struct Name {
        var name: String
    }
    enum Countries {
        case belarus
        case russia
        case ukraine
        case other(country: String)
    }
    enum Genre {
        case pop
        case rok
        case rnb
        
    }
    
    final func prinArtistInformation() {
        print("Name: \(name). Age: \(age). Experience: \(self.workExperience) yers.")
    }
    
    func printNameOfClass() {
        print("It is supper class Artist")
    }
    func play() {
        prinArtistInformation()
        print("Show name: \(nameShow) \n Genre - \(genre)")
    }
    var salaryInBusinessTrip: Double {
        return salaryDay * salaryCoefficient
    }
    
    var workExperience: Int
    var nameShow: String
    var genre: Genre
    var salaryWeek: Double
    var country: Countries
    var durationTrip: Int
    private(set) var name: Name
    private var _age: Int
    var age: Int {
        get {
            return _age
        }
        set {
            newValue >= 0 ? _age = newValue : print("Uncorrect age")
        }
    }
    var salaryDay: Double {
        salaryWeek / 5
    }
    var partOfWorkingLife: Double {
        Double(workExperience * 100 / _age)
    }
    
    init(name: Name, _age: Int, workExperience: Int,
         salaryWeek: Double, nameShow: String,
         genre: Genre, durationTrip: Int, country: Countries) {
        self.name = name
        self.workExperience = workExperience
        self.salaryWeek = salaryWeek
        self._age = _age
        self.nameShow = nameShow
        self.genre = genre
        self.durationTrip = durationTrip
        self.country = country
    }
    init() {
        self.name = Name.init(name: "Default name")
        self._age = 0
        self.workExperience = 0
        self.salaryWeek = 0
        self.nameShow = "Enter name show"
        self.genre = .pop
        self.durationTrip = 0
        self.country = .belarus
    }
}

class Musicant: Artist {
    enum Instruments {
        case guitar
        case piano
        case drumms
        
    }
    
    override func printNameOfClass() {
        print("It is class Musicant")
    }
    func goToConcert(country: Countries) {
        switch country {
        case .other(country: "Moscow"):
            print("Dont play in Moscow")
        default:
            print("Rady to play concert in \(country)!")
        }
    }
    var instrument: Instruments
    init(instrument: Instruments, name: Name, _age: Int,
         workExperience: Int, salaryWeek: Double, nameShow: String,
         genre: Genre, durationTrip: Int, country: Countries) {
        self.instrument = instrument
        super.init(name: name, _age: _age, workExperience: workExperience,
                   salaryWeek: salaryWeek, nameShow: nameShow, genre: genre,
                   durationTrip: durationTrip, country: country)
    }
}

class Painter: Artist {
    func getPublicName() -> String {
        var publicName = String()
        var array = [Character]()
        self.name.name.forEach { char in array.append(char) }
        array.shuffle()
        array.forEach { char in publicName.append(char) }
        return publicName
    }
    override func printNameOfClass() {
        print("It is class Painter")
    }
    
    var publicName: String {
        return getPublicName()
    }
}

class Dancer: Artist {
    override func printNameOfClass() {
        print("Dancer")
    }
    override func play() {
        super.play()
        if self.salaryDay > 100 {
            print("Lets dance!")
        } else {
            print("refused to dance")
        }
    }
    
    override var salaryDay: Double {
        if salaryWeek / 5 > 100 {
            return salaryWeek / 5
        } else {
            print("Dancer refused to dance")
            return salaryWeek / 5
        }
    }
    override var salaryInBusinessTrip: Double {
        return (salaryDay * salaryCoefficient) + (salaryDay * salaryCoefficient / 10)
    }
}

var firstArtist = Artist(name: Artist.Name.init(name: "Sasha"), _age: 25, workExperience: 1,
                         salaryWeek: 1000, nameShow: "Hello world!", genre: .pop, durationTrip: 1, country: .belarus)

var secondArtist = Artist(name: Artist.Name.init(name: "Pasha"), _age: 24, workExperience: 2,
                          salaryWeek: 1500, nameShow: "Hello world!", genre: .rok, durationTrip: 2, country: .russia)

var firstPainter = Painter(name: Artist.Name.init(name: "Masha"), _age: 22, workExperience: 3,
                           salaryWeek: 2000, nameShow: "Hello world!", genre: .rnb, durationTrip: 3, country: .ukraine)

var secondPainter = Painter(name: Artist.Name.init(name: "Dasha"), _age: 20, workExperience: 4,
                            salaryWeek: 1000, nameShow: "Hello world!", genre: .rok, durationTrip: 34, country: .other(country: "Poland"))

var firstDancer = Dancer(name: Artist.Name.init(name: "Katya"), _age: 21, workExperience: 5,
                         salaryWeek: 1500, nameShow: "Hello world!", genre: .pop, durationTrip: 5, country: .belarus)

var secondDancer = Dancer(name: Artist.Name.init(name: "Erik"), _age: 22, workExperience: 6,
                          salaryWeek: 2000, nameShow: "Hello world!", genre: .rok, durationTrip: 6, country: .russia)

var firstMusicant = Musicant(instrument: Musicant.Instruments.drumms, name: Artist.Name.init(name: "Artiom"),
                             _age: 28, workExperience: 7, salaryWeek: 1000, nameShow: "Hello world!",
                             genre: .rok, durationTrip: 7, country: .ukraine)

var SecondMusicant = Musicant(instrument: Musicant.Instruments.guitar, name: Artist.Name.init(name: "Vadim"),
                              _age: 21, workExperience: 8, salaryWeek: 1500, nameShow: "Hello world!",
                              genre: .rnb, durationTrip: 8, country: .other(country: "Germany"))

var artists = [Artist]()
artists.append(firstArtist)
artists.append(secondArtist)
artists.append(firstPainter)
artists.append(secondPainter)
artists.append(firstDancer)
artists.append(secondDancer)
artists.append(firstMusicant)
artists.append(SecondMusicant)

for artist in artists {
    artist.play()
    if artist is Dancer {
        print(artist.salaryDay)
    }
    if let musicant: Musicant = artist as? Musicant {
        print("Favorite instrument is \(musicant.instrument)")
    }
}
extension Artist: BusinessTrip, PayableBusinessTrip {
    var salaryCoefficient: Double {
        switch workExperience {
        case 1...2:
            return 1
        case 3...5:
            return 1.5
        default:
            return 2
        }
    }
    
    func endTrip() {
        print("End of trip")
    }
}
extension BusinessTrip {
    func startTrip() {
        print("country for trip is \(country). Duration of the trip is \(durationTrip)")
    }
    func expressIndignation() { }
}

extension Painter {
    func expressIndignation() {
        print("I don't want this trip")
    }
}

extension Dancer {
    func startTrip() {
        if self.salaryInBusinessTrip > 100 {
            print("Country for trip is \(self.country). Duration of the trip is \(self.durationTrip)")
        } else {
            print("Refused go to this trip")
        }
    }
}

firstArtist.age
firstArtist.country
firstArtist.durationTrip
firstArtist.genre
firstArtist.name
firstArtist.nameShow
firstArtist.partOfWorkingLife
firstArtist.salaryCoefficient
firstArtist.salaryDay
firstArtist.salaryInBusinessTrip
firstArtist.salaryWeek
firstArtist.workExperience
firstArtist.endTrip()
firstArtist.play()
firstArtist.prinArtistInformation()
firstArtist.printNameOfClass()
firstArtist.expressIndignation()
firstArtist.startTrip()

firstPainter.age
firstPainter.country
firstPainter.durationTrip
firstPainter.genre
firstPainter.name
firstPainter.nameShow
firstPainter.partOfWorkingLife
firstPainter.salaryCoefficient
firstPainter.salaryDay
firstPainter.salaryInBusinessTrip
firstPainter.salaryWeek
firstPainter.workExperience
firstPainter.endTrip()
firstPainter.printNameOfClass()
firstPainter.play()
firstPainter.prinArtistInformation()
firstPainter.expressIndignation()
firstPainter.startTrip()

firstDancer.age
firstDancer.country
firstDancer.durationTrip
firstDancer.genre
firstDancer.name
firstDancer.nameShow
firstDancer.partOfWorkingLife
firstDancer.salaryCoefficient
firstDancer.salaryDay
firstDancer.salaryInBusinessTrip
firstDancer.salaryWeek
firstDancer.workExperience
firstDancer.endTrip()
firstDancer.play()
firstDancer.prinArtistInformation()
firstDancer.printNameOfClass()
firstDancer.expressIndignation()
firstDancer.startTrip()

firstMusicant.age
firstMusicant.country
firstMusicant.durationTrip
firstMusicant.genre
firstMusicant.name
firstMusicant.nameShow
firstMusicant.partOfWorkingLife
firstMusicant.salaryCoefficient
firstMusicant.salaryDay
firstMusicant.salaryInBusinessTrip
firstMusicant.salaryWeek
firstMusicant.workExperience
firstMusicant.endTrip()
firstMusicant.play()
firstMusicant.prinArtistInformation()
firstMusicant.printNameOfClass()
firstMusicant.expressIndignation()
firstMusicant.startTrip()

