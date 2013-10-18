# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./lib/racional"
#require "./lib/gcd.rb"
require 'test/unit'

class Test_Fraccion < Test::Unit::TestCase
  def setup
    @f1 = Fraccion.new(1,2)
    @f2 = Fraccion.new(6,2)
    @f3 = Fraccion.new(72,19)
  end
  def tear_down
    # nothing
  end
  def test_simple
    assert_equal("1/2", @f1.to_s)
    assert_equal("3", @f2.to_s)
    assert_equal("72/19", @f3.to_s)

  end
  def test_type_check
    assert_raise(ZeroDivisionError) {Fraccion.new(0,0)}
    assert_equal("", @f1.suma(5).to_s, "Probando :::::: Suma")
  end
  def test_failure
    assert_equal("7/2", @f1.suma(@f2).to_s, "Probando :::::: Suma")
    assert_equal("-5/2", @f1.resta(@f2).to_s, "Probando :::::: Resta")
    assert_equal("3/2", @f1.producto(@f2).to_s, "Probando :::::: Producto")
    assert_equal("1/6", @f1.division(@f2).to_s, "Probando :::::: Division")
    
   # assert_equal("0/0", Fraction.new(0,0).to_s)
  end
end