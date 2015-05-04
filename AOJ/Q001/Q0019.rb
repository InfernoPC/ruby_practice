#Factorial
class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end
puts gets.to_i.fact