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

#Diccionarios
#En Ruby a los diccionarios se les denomina hash.
dict = {1 => 2, "2" => "4"}
puts dict

#Agregar nueva llave y elemento 
dict[3] = "Nuevo"
puts dict

#Rangos
a = (1..10).to_a
puts a 
puts "\n"
b = (1...10).to_a
puts b