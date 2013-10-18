# Implementar en este fichero la clase para crear objetos racionales
#require "../lib/gcd.rb"
def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0
    u, v = v, u % v
  end
  u
end

class Fraccion
  attr_accessor :numerador, :denominador
  def initialize(num, den)
    if den < 0
      num = -num
      den = -den
    end
    if num.kind_of?(Integer) and den.kind_of?(Integer)
      @numerador = num
      @denominador = den
    else
      @numerador = num.to_i
      @denominador = den.to_i
    end
    max=gcd(@numerador,@denominador)
    @numerador=@numerador/max
    @denominador=@denominador/max
  end
  
  #  * `to_s`     #devuelve una cadena con la representación del racional
  def to_s
    if @denominador == 1
      @numerador.to_s
    else
      @numerador.to_s+"/"+@denominador.to_s
    end
  end
  
  #    * `suma`     #devuelve un nuevo racional que suma al objeto que invoca el que le pasan como parámetro
  def suma(a)
    if a.kind_of?(Fraccion)
      num = @numerador * a.denominador
      num_a = a.numerador * @denominador
      Fraccion.new(num + num_a, @denominador * a.denominador)
    else
      puts "No es un numero racional"
    end
  end
  
  #    * `resta`    #devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro 
  def resta(a)
    if a.kind_of?(Fraccion)
      num = @numerador * a.denominador
      num_a = a.numerador * @denominador
      Fraccion.new(num - num_a, @denominador*a.denominador)
    else
      puts "No es un numero racional"
    end
  end

  #    * `producto` #devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
  def producto(a)
    if a.kind_of?(Fraccion)
      num = @numerador * a.numerador
      den = @denominador * a.denominador
      Fraccion.new(num, den)
    else
      puts "No es un numero racional"
    end
  end
  
  #    * `division` #devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
  def division(a)
    if a.kind_of?(Fraccion)
      num = @numerador * a.denominador
      den = @denominador * a.numerador
      Fraccion.new(num, den)
    else
      puts "No es un numero racional"
    end
  end
end

f=Fraccion.new(14,4)
#s=Fraccion.new(0,0)

puts f


