#+++++++++++COMANDOS BÁSICOS PARA RUBY+++++++++

#+++++++++++++SALIDA POR PANTALLA++++++++++++++
puts "Wow!!!!!!!!!1" #Imprime y realiza un salto de línea automático.
print "Comandos para Ruby\n" #Sólo imprime sin realizar salto de línea.
array = ["Ruby", "Python", "Scala", "Java"] #Lista
puts array.sort #Ordena una Lista
puts array #Presenta los elementos de la lista
( array = array.sort ) == array.sort!
puts "Ruby" + " on Rails" #El + concatea caracteres
puts 'Repeat me' * 2 #Repite dos veces la cadena

#.push y << añaden elementos a una lista
myList = [12, 58, 93]
myList.push("Number")
myList << 481

#+++++++++++++DICCIONARIOS++++++++++++++++++++++
#En Ruby a los diccionarios se les denomina hash.
dict = {1 => 2, "2" => "4"}
puts dict

#Agregar nueva llave y elemento 
dict[3] = "Nuevo"
puts dict

#+++++++++++++++RANGOS++++++++++++++++++++++++++
a = (1..10).to_a
puts a 
puts "\n"
b = (1...10).to_a
puts b

#++++++++++ESTRUCTURAS DE CONTROL+++++++++++++++
#break: Termina totalmente el ciclo
#next: Termina ejecución del bucle actual
#redo: Reinicia la iteración actual

#++++++++++++++SENTENCIA CASE+++++++++++++++++++
valor = 30
case valor
when 30, (1..10)
	puts "1 - 10" + ", o puede ser 30"
when 11..20
	puts "11 - 20"
end

#+++++++++++++++FOR++++++++++++++++++++++++
numeros = [1,2,3,4,5]
for numero in numeros
	puts numero
end

for i in (0..4)
	print i
end

print "\n\n"

#++++++++++++++++CADENAS++++++++++++++++++++
cadena = "hola "
puts cadena.length #Imprime el número de caracteres de una cadena
puts cadena.class #Imprime la clase de un objeto

#+++++++++++++++++MÉTODOS+++++++++++++++++++
def nombreDelMetodo
#Comandos
end
def nombreDelMetodo(a,b)
#Comandos
end

#++++++++++++SOBRECARGA DE MÉTODOS+++++++++++++
def nombre(*args) # el símbolo * implica número variable de argumentos
if args.size < 2 || args.size > 3
	puts 'ERROR: Este método recibe dos o tres argumentos'
else
if args.size == 2
	#Comandos
else
	#Comandos
end
end
end

#+++++++++++++++POLIMORFISMO++++++++++++++
class Ave
def vuela
puts "Volando"
end
end
class Pinguino<Ave
def vuela
puts "Yo no vuelo"
end
end

#++++++++++++++++ENCAPSULAMIENTO+++++++++++++
class Persona
def initialize(edad)
@edad = edad
end
def getEdad(clave)
return getEdadReal - 5
end
def getEdadReal
return @edad
end
private :getEdadReal
end

#++++++++++++++++HERENCIA++++++++++++++++++
class Animal
def respira
puts "Inhalar y exhalar"
end
end
class Perro<Animal
def ladrar
puts "Guau"
end
end
Perro.new.respira

#+++++++++++++++++MÉTODO SINGLETON+++++++++++++
class Persona
def initialize(edad)
@edad = edad
end
def getEdad
return getEdadReal
end
def getEdadReal
return @edad
end
private :getEdadReal
end
persona_1 = Persona.new(20)
persona_2 = Persona.new(28)
def persona_2.getEdad
return getEdadReal - 3
end