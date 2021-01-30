class Triangle
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if length1 < 0 ||length2 < 0 || length3 < 0 #all the lengths are not positive OR less than 0
      begin
       raise TriangleError
     rescue TriangleError
     end
    elsif (length1 + length2) < length3 || (length1 + length3) < length2 || (length2 + length3) < length1
      begin
       raise TriangleError
      rescue TriangleError
     end
    elsif length1 == length2 && length2 == length3
      return :equilateral
    elsif length1 == length2 || length1 == length3 || length2 == length3
      return :isosceles
    else #all sides are different
      return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      :TriangleError 
    end
  end

end #full class end
