# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./lib/racional"
#require "./lib/gcd.rb"
require 'test/unit'

class Test_Fraccion < Test::Unit::TestCase
  def setup
    @f1 = Fraccion.new(1,2)
    @f2 = Fraccion.new(6,2)
  end
  def tear_down
    # nothing
  end
  def test_simple
    assert_equal("1/2", @f1.to_s)
    assert_equal("6/2", @f2.to_s)
    assert_equal("0/0", Fraction.new(0,0).to_s)
    
    
  ##  assert_equal("(5,5)", (@f2*5).to_s)
  ##  assert_equal("(-1,-1)", (-@f2).to_s)
  ##  assert_equal("(1,1)", (@f1 + @f2).to_s)
  end
  def test_type_check
    assert_raise(RuntimeError) {Fraccion.new('1','1')}
  end
  def test_failure
    assert_equal("7/2", @f1.suma(@f2).to_s, "Probando :::::: Suma")
  end
end