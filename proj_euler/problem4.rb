# Author: Thomas Rodriguez
# Copyright 2015 Thomas Rodriguez
#
# PalinNum: Solution to 4th Euler Project Problem
# Class that initializes with digit requirement
#
# palindrome = PalinNum.new(3)
# palindrome.run
#
# palindrome = PalinNum.new(2)
# palindrome.run

require 'pp'
class PalinNum

  attr_accessor :digits

  $master_arr = []

  def initialize( digits )
    @digits = digits
  end

  def run
    first_mult = pick_start
    second_mult = pick_start
    until first_mult == 0
      second_mult = second_mult_decrementer( second_mult )
      first_mult = first_mult_decrementer( first_mult, second_mult )
      product = first_mult * second_mult
      array_test( product )
      
    end
    pp $master_arr.max
  end

  def second_mult_decrementer( second_mult )
    if second_mult == 1000
      second_mult = 9999
    elsif second_mult == 100
      second_mult = 999
    else
      second_mult -= 1
    end
  end

  def first_mult_decrementer( first_mult, second_mult )
    if second_mult == 100
      first_mult = first_mult - 1
    else
      first_mult
    end
  end

  def array_test( product )
    product = product.to_s
    @arr = convert_to_array( product )
    first_half_arr = find_first_half_array( @arr )
    second_half_arr = find_second_half_array( @arr )
    reverse_half = second_half_arr.reverse
    palindrome?( first_half_arr, reverse_half )
  end

  def pick_start
    case @digits
    when 4
      pick_start = 9999
    when 3
      pick_start = 999
    when 2
      pick_start = 99
    else
      puts "Pick between 2 or 3 digits"
    end
  end

  def convert_to_array( string_num )
    arr = []
    string_num.each_char { |c| arr << c }
    arr
  end

  def find_first_half_array( arr )
    half_arr = []
    arr.each_with_index { |v, i| half_arr << v unless i > (arr.size/2 - 1) }
  end

  def find_second_half_array( arr )
    half_arr = []
    arr.each_with_index { |v, i| half_arr << v unless i < (arr.size/2 - 1) }
  end

  def palindrome?( first_half_arr, reverse_half )
    if first_half_arr == reverse_half
      possible = @arr.join('').to_i
      $master_arr << possible
      second_mult = 999
    end
  end
end

palindrome = PalinNum.new(3)
palindrome.run
