# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"


class Fraccion

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
    if a.kind_of?(Rational)
      num = @numerador * a.denominator
      num_a = a.numerator * @denominador
      Rational(num + num_a, @denominador * a.denominator)
    else
      puts "No es un numero racional"
    end
  end
  
  #    * `resta`    #devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro 
  def resta(a)
    if a.kind_of?(Rational)
      num = @numerador * a.denominator
      num_a = a.numerator * @denominador
      Rational(num - num_a, @denominador*a.denominator)
    else
      puts "No es un numero racional"
    end
  end

  #    * `producto` #devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
  def producto(a)
    if a.kind_of?(Rational)
      num = @numerador * a.numerator
      den = @denominador * a.denominator
      Rational(num, den)
    else
      puts "No es un numero racional"
    end
  end
  
  #    * `division` #devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
  def division(a)
    if a.kind_of?(Rational)
      num = @numerador * a.denominator
      den = @denominador * a.numerator
      Rational(num, den)
    else
      puts "No es un numero racional"
    end
  end
end

f=Fraccion.new(2,2)

puts f


