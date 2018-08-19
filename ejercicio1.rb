class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(notas)
    alumnos = []
    data = []
    File.open(notas, 'r') { |file| data = file.readlines }
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
    print alumnos
  end
end

Alumno.read_file('notas.txt')


# Crear un metodo de clase llamado read_file que reciba como argumento el nombre
# del archivo (por defecto debe ser 'notas.txt') y devuelva la coleccion
# de objetos. El metodo debe alojar las instrucciones que se encuentran despues
# de la clase. Finalmente imprimir la coleccion de objetos generada.
# Hint: Debes reemplazar el argumento de File.open con el nombre del argumento
#  del metodo read_file.
