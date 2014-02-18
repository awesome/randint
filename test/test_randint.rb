require "minitest/autorun"
require "randint"

class TestRandint < MiniTest::Unit::TestCase
  def setup
    @libs = [nil,Kernel,Random,SecureRandom]
  end

  def test_create_double_digets
    @libs.each do |lib|
      length = rand(10..100)
      act = Randint.create(length, lib)
      assert_kind_of Integer, act
      assert_equal(length, act.to_s.length)
    end
  end

  def test_create_single_digit
    @libs.each do |lib|
      length = rand(1..9)
      act = Randint.create(length, lib)
      assert_kind_of Integer, act
      assert_equal(length, act.to_s.length)
    end
  end

  def test_int_zero
    @libs.each do |lib|
      assert_raises(Randint::Error::InvalidArg) {Randint.create(0, lib)}
    end
  end

  def test_format_left
    exp = rand(1..1000).to_s
    #array = ("." * rand(1..3)) + ("0" * rand(1..3)).chars.to_a.permutation.map {|x| x.join + exp.to_s}
    arr = "#{"." * rand(1..3)}#{"0" * rand(1..3)}".chars.to_a.permutation.map(&:join).map {|x| "#{x}#{exp}"}
    arr.each do |x|
      act = Randint.format_left(x)
      assert_instance_of String, act
      assert_equal exp, act
    end
  end
end
