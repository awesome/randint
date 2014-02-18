require "securerandom"
require "randint/error"

module Randint
  VERSION = "0.0.1"

  extend self

  # Creates positive integer with specified number of digits (i.e., specified "length" when coverted to string)
  #
  # @param length [Integer]
  # @param lib [Class,Module] the lib to generate component random numbers from, `Kernel` or `Random` or `SecureRandom`
  # @return [Integer]
  def create(length, lib=nil)
    raise Randint::Error::InvalidArg unless length.is_a?(Integer) and length > 0
    raise Randint::Error::InvalidLib if lib and ![::Kernel,::Random,::SecureRandom].include?(lib)
    lib ||= Kernel
    n = ''
    n << rand_string(lib) until n.length >= length
    n[0..length-1].to_i
  end

  # format lib's rand string
  #
  # @param lib [Class,Module]
  # @return [String]
  def rand_string(lib)
    x = send("#{underscore(lib.to_s)}_rand")
    format_left(x.to_s)
  end

  # converts CamelCase to underscore
  #
  # @author https://gist.github.com/timcharper/4027440
  # @param string [String]
  # @return [String]
  def underscore(string)
    string.gsub(/(.)([A-Z])/,'\1_\2').downcase
  end

  # remove leading zeros and decimal point from left of string
  #
  # @param string [String] Float#to_s
  # @return [String]
  def format_left(string)
    string.gsub(/^[0\.]*/,'')
  end

  # Counts digits in fractional part of decimal number
  #
  # @author http://stackoverflow.com/a/8597808/1076207
  # @param float [Float]
  # @return [Integer]
  def decimal_place_length(float)
    num = 0
    while(float != float.to_i)
      num += 1
      float *= 10
    end
    num
  end

  # Creates random number via SecureRandom#random_number
  #
  # @see http://rubydoc.info/stdlib/securerandom/1.9.3/SecureRandom.random_number
  # @return [String]
  def secure_random_rand
    SecureRandom.random_number
  end

  # Creates random number via Random#rand
  #
  # @return [String]
  # @see http://ruby-doc.org/core-1.9.3/Random.html#method-c-rand
  def random_rand
    Random.rand
  end

  # Creates random number via Kernel#rand
  #
  # @return [String]
  # @see http://ruby-doc.org/core-1.9.3/Kernel.html#method-i-rand
  #
  # @notes
  #   "The important difference to note is that if you just call rand() you are calling Kernel#rand, which only supports a max argument. If you want to pass a range, you have to use Random#rand, meaning you have to implement this way."
  #   http://stackoverflow.com/questions/4395095/how-to-generate-a-random-number-between-a-and-b-in-ruby#comment19986191_13119700
  def kernel_rand
    Kernel.rand
  end
end
