class Triangle
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind(length1, length2, length3)
    if 
     #all sides are equal
      return :equilateral
    elsif # 2 sides are the same
      return :scalene
    else #all sides are different
      return :isosceles
  end

end
