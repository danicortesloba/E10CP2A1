#Crear un módulo llamado Formula.
module Formula
  # Dentro del modulo Formula crear un metodo llamado perimetro que
  # reciba dos argumentos (lados) y devuelva el perimetro.
  def perimetro(lado1, lado2)
    peri = lado1 + lado1 + lado2 + lado
    p "El perimetro es #{peri}"
  end
  # Dentro del modulo Formula crear un metodo llamado area que reciba
  # dos argumentos (lados) y devuelva el area.
  def area(lado1, lado2)
    ar = lado1 * lado2
    p "El área es #{ar}"
  end
end
# Implementar -mediante Mixin- el modulo en las clases Rectangulo y Cuadrado.
class Rectangulo
  include Formula
  attr_accessor :base, :altura
  def initialize(base, altura)
    @base = base
    @altura = altura
  end
  def lados
    p "Base: #{@base}, Altura: #{@altura}"
  end
end

class Cuadrado
  include Formula
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
    p "Lado: #{@lado}"
  end
end
# Agregar un metodo de instancia llamado lados en ambas clases.
# El metodo debe imprimir un string con las medidas de los lados.

Rectangulo.new(24, 50).lados

# Instanciar un Rectangulo y un Cuadrado.
Cuadrado.new(10).perimetro(10,10)
Rectangulo.new(4, 5).area(4,5)
# Imprimir el area y perimetro de los objetos instanciados utilizando
# el metodo del modulo implementado.
