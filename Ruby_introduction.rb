#Ruby introduction
#Коментарии
=begin
   Этот комментарий
   занимает несколько 
   строк
=end

#Константы
MyNum = 42

# если попробуем изменить переменную - получим ошибку
MyNum = 8

# получим ошибку:
# warning: already initialized constant MyNum 

#Операторы
#Возведение в степень 

a = 2
b = 5
puts a**b
# возводим число 2 в 5-ую степень и получаем 32

#Сокращенные операторы присваивания
x, y = 10, 20
x += y  # x=x+y
x -= y  # x=x-y
x *= y  # x=x*y
x /= y  # x=x/y
x %= y  # x=x%y
x **= y  # x=x**y

#Параллельное присваивание
a, b = b, a

#Повторение строки
a = "abc"
puts a*3
# выведет "abcabcabc"

puts '5'*4
# выведет 5555

#Пользовательский ввод 
puts "Enter your name"
name = gets.chomp
puts "Welcome, #{name}"

#Booleans
puts 3 == 3.0 # true 
# но
puts 3.eql?(3.0) # false

puts "abc" < "bca" // true
puts "abc" > "cbd" // false

#Оператор else
age = 15
if age > 18 
  puts "Welcome"
elsif age == 10
  puts "Number is 10"
else 
  puts "Too young"
end

# выведет "Too young"

#Оператор unless
case a
    when (a > 0) then
    puts 1
    when (a == 0) then
    puts 0
    when (a < 0) then
    puts -1
end

#Цикл while
x = 0
while x < 10
  puts x
  x += 1
end

#Цикл until
a = 0
until a > 10
  puts "a = #{a}"
  a +=2
end

#Диапазоны (Ranges)
a = (1..7).to_a
puts a # [1, 2, 3, 4, 5, 6, 7]

b = (79...82).to_a
puts b # [79, 80, 81]

c = ("a".."d").to_a
puts c # [a, b, c, d]

#Цикл for
for i in (1..10)
  puts i
end

#Оператор next
for i in 0..10
  next if i %2 == 0
  puts i
end

#Цикл loop do
x = 0
loop do
  puts x
  x += 1
  break if x > 10
end

#Массивы
items = ["Apple", "Orange", "Banana"]

#Добавление элементов
arr = [5, "Dave", 15.88, false]

puts arr[0] # 5
puts arr[1] # "Dave"
puts arr[-1] # false

#Для добавления новых элементов в массив можно использовать оператор <<
arr << 8
arr.push(8)
arr.insert(2, 8)

#Удаление элементов
arr = [1, 2, 3]
arr.pop
print arr
# [1, 2]

arr = [2, 4, 6, 8]
arr.delete_at(2)
print arr
# [2, 4, 8]

#Диапазоны в массивах
nums = [6, 3, 8, 7, 9]
print nums[1..3]
# [3, 8, 7]

#Объединение массивов
Объединение массивов

#Вы можете объединить два массива:
a = [1, 2, 3]
b = [4, 5]
res = a + b
print res # [1, 2, 3, 4, 5]

a = [1, 2, 3, 4, 5]
b = [2, 4, 5, 6]
res = a - b
print res #[1, 3]

#Логические операторы
a = [2, 3, 7, 8]
b = [2, 7, 9]
print a & b # [2, 7]

a = [2, 3, 7, 8]
b = [2, 7, 9]
print a | b # [2, 3, 7, 8, 9]

#Перемещение элементов
#возвращает новый массив
arr = [5, 3, 8]
res = arr.reverse
print res # [8, 3, 5]

#reverse! изменяет исходную переменную
arr = [1, 2, 3]
print arr.reverse!

#Методы массива
puts arr.length
puts arr.sort
puts arr.uniq
puts arr.freeze
puts arr.include?(4)
puts arr.min 
puts arr.max

#Хэши (hashes)
ages = {"David" => 28, "Amy" => 19, "Rob" => 42}

puts ages["Amy"] 
# выведет 19

#Символы (symbols)
#похожи на строки, но они неизменны
h = {:name=>"Dave", :age=>28, :gender=>"male"}

puts h[:age]

h.delete(:name)
h.key(28)
h.invert
k = h.keys
v = h.values
h.length

#Вложенные массивы
arr = [ [1, 2, 3], [4, 5, 6] ]
puts arr[1][2]

#Вложенные хэши
cars = {
  bmw: { year:2016, color:"red"},
  mercedes: { year:2012, color:"black"},
  porsche: { year:2014, color:"white"}
}

puts cars[:bmw][:color]
# выведет "red"

#Итераторы
arr = [2, 4, 6]

arr.each do |x|
  puts x
end

sizes = {svga:800, hd:1366, uhd:3840}

sizes.each do |key, value|
  puts "#{key}=>#{value}"
end

sizes = {svga:800, hd:1366, uhd:3840}

sizes.each { |key, value| puts "#{key}=>#{value}" }

(1..10).each do |x|
  puts x
end

# выведет числа с 1 до 10, каждое на новой строке

"string".each_char do |x|
  puts x
end

# выведет все символы поданой строки, каждый символ на новой строке.

10.times do
  puts "Hi"
end

#Метод default используется для установки значения по  умолчанию для хэша
freqs = {}
freqs.default = 0

#Методы
def say
  puts "Hi"
end
#вызов метода
say
# выведет "Hi"

#Параметры
def sqr(x)
  puts x*x
end

sqr(8) 
# выведет 64

#Параметры по умолчанию
def sum(a, b=8)
  puts a+b
end

#Необязательные параметры
def someMethod(*p)
  puts p
end

someMethod(25, "hello", true)

#Возвращаемые значения
def sum(a, b)
  res = a+b
  return res
end

#Ruby всегда возвращает вычисленный результат последней строки выполняемого метода
def demo(a, b)
  a = b-2
  b = a-3
end

puts demo(5, 6)

#Область видимости переменной
#Глобальная область видимости
$x = 42

def change
  $x = 8
end

change
puts $x
# выведет 8
#$x доступна во всей программе
# выведет 1

#Классы
class Person
  def initialize
    puts "Hi there"
  end
end

#Объекты
class Person
  def initialize
    puts "Hi there"
  end
end

p1 = Person.new
p2 = Person.new
# выведет:
# Hi there
# Hi there

#Переменные экземпляра
class Animal
  @age = 0
  def initialize(name, age)
    @name = name
    @age = age
  end
end

ob = Animal.new("Jacky", 3)

#Методы экземпляра
class Dog
  def bark
    puts "Woof!"
  end
end

d = Dog.new
d.bark

# выведет "Woof"

#Средства доступа
class Person
  def initialize(name)
    @name = name
  end
  def get_name
    @name
  end
  def set_name=(name)
    @name = name
  end
end

p = Person.new("David")
p.set_name = "Bob"
puts p.get_name

# выведет "Bob"

#Методы доступа (accessors)
class Person

  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end

p = Person.new("David")
p.name = "Bob"
puts p.name

#Методы доступа также могут быть вызваны внутри класса по ключевому слову self
class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def change(n, a)
    self.name = n
    self.age = a
  end
  def show_info
    puts "#{self.name} is #{self.age}"
  end
end

p = Person.new("David", 28)
p.change("Bob", 42)
p.show_info

# выведет "Bob is 42"

#Методы класса
class Person
  def self.info
    puts "A Person"
  end
end

Person.info
# выведет "A Person"

#Переменные класса
class Person
  @@count = 0
  def initialize
    @@count += 1
  end
  def self.get_count
    @@count
  end
end

p1 = Person.new
p2 = Person.new

puts Person.get_count
# выведет 2

#Константы класса
class Calc
  PI = 3.14
end

puts Calc::PI
# выведет 3.14

#Метод to_s
p = Person.new
puts p
# выведет "#<Person:0x0000000272e140>"

#добавить пользовательскую реализацию
class Person
  def initialize(n, a)
    @name = n
    @age = a
  end
  def to_s
    "#{@name} is #{@age} years old."
  end
end
p = Person.new("David", 28)
puts p
# выведет: "David is 28 years old."

#Наследование
#Ruby не поддерживает множественное наследование
class Animal
  def initialize(name, color)
    @name = name
    @color = color
  end
  def speak
    puts "Hi"
  end
end

class Dog < Animal
end

d = Dog.new("Bob", "brown")
d.speak
# выведет "Hi"

#super
class Animal
  def speak
    puts "Hi"
  end
end

class Cat < Animal
  def speak
    super
    puts "Meow"
  end
end

c = Cat.new
c.speak
# выведет
# Hi
# Meow

class Cat < Animal
  def initialize(name, age)
    super(name)
    @age = age
  end
  def to_s
    "#{@name} is #{@age} years old."
  end
end

c = Cat.new("Bob", 3)
puts c

# выведет "Bob is 3 years old."

#Модификаторы доступа
class Person
  def initialize(age)
    @age = age
  end
  def show
    puts "#{@age} years = #{days_lived} days"
  end

  private
  def days_lived
    @age * 365
  end
end

p = Person.new(42)
p.show

#Модули
module Flyable
  def fly
    puts "I'm flying!"
  end
end

class Vehicle
end

class Car < Vehicle
end

class Jet < Vehicle
  include Flyable
end

class Plane < Vehicle
  include Flyable
end

#mixins (примеси)
class Human
  include Walkable
  include Speakable
  include Runnable
end

#Пространство имен
module Mammal
  class Dog
    def speak
      puts "Woof!"
    end
  end

  class Cat
    def speak
      puts "Meow"
    end
  end
end

#вызывать классы в модуле
a = Mammal::Dog.new
b = Mammal::Cat.new

a.speak  # "Woof"
b.speak  # "Meow"

module MyMath
  PI = 3.14
  def self.square(x)
    x*x
  end
  def self.negate(x)
    -x
  end
  def self.factorial(x)
     (1..x).inject(:*) || 1
  end
end

puts MyMath.factorial(8)
#or
puts MyMath::factorial(8)

#Структуры (structs)
Point = Struct.new(:x, :y)
origin = Point.new(0, 0)
dest = Point.new(15, 42)
puts dest.y  # 42

#OStruct
require "ostruct"

person = OpenStruct.new
person.name = "John"
person.age = 42
person.salary = 250

puts person.name  # John
person1 = OpenStruct.new(name:"John", age:42, salary:250)
puts person1.name  # John

#Time
# текущее время
t = Time.now
puts t

# год, месяц, день
puts t.year
puts t.month
puts t.day

# произвольная дата
t = Time.new(1988, 6, 10)

# день недели: 0 это воскресенье
puts t.wday

# день года
puts t.yday

#Procs
greet = Proc.new do |x|
  puts "Welcome #{x}"
end

greet.call "David"
greet.call "Amy"

# выведет
# "Welcome David"
# "Welcome Amy"

sum = Proc.new do |*p|
    puts p.sum
end

#Лямбды (lambdas)
talk = lambda {puts "Hi"}
talk1 = ->() {puts "Hi"}
talk.call

#Лямбды проверяют количество аргументов, а proc - нет.
talk = lambda { |x| puts "Hello #{x}" }
talk_proc = Proc.new { |x| puts "Hello #{x}" }

talk.call "David"
# outputs "Hello David"

talk_proc.call "Amy"
# выведет "Hello Amy"

talk_proc.call
# выведет Hello

talk.call
# выведет "Error: wrong number of arguments (given 0, expected 1)"

def lambda_test
  lam = lambda { return }
  lam.call
  puts 'Лямбда напечатает!'
end
lambda_test # => Лямбда напечатает!
def proc_test
  proc = Proc.new { return }
  proc.call
  puts 'Прок не напечатает :('
end
proc_test # => ...пусто...

#Создание файлов 
#Запись файлов
file = File.new("test.txt", "w+")
file.puts("some text")
file.close

#Чтение файлов
f = File.new("test.txt", "w+")
f.puts("a line of text")
f.puts("another line of text")
f.close

puts File.read("test.txt")

# выведет:
# a line of text
# another line of text

File.open("test.txt", "a+") {
  |file| file.puts("a line of text")
  file.puts("another line of text")
}

File.readlines("test.txt").each {
  |line| puts " --- #{line}"
}

#Удаление файлов
File.delete("test.txt")
