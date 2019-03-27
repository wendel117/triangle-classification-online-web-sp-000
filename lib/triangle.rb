class TriangleError < StandardError
  def message
    "Action Bronson, No matter what, you're going to get a comparison to something. I Gave You A Grace Period, but that SportsNation triangular mentioning of my name was an ERROR!"
  end
end

class Triangle
  def initialize(side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
end

def kind
  if @side1 == 0 || @side2 == 0 || @side3 == 0
    raise TriangleError
  elsif @side1 < 0 || @side2 < 0 || @side3 < 0
    raise TriangleError
  elsif (@side1 + @side2) <= @side3 || (@side1 + @side3) <= @side2 || (@side3 + @side2) <= @side1
    raise TriangleError
  elsif @side1 == @side2 && @side2 == @side3
    :equilateral
  elsif @side2 == @side3 || @side1 == @side3 || @side1 == @side2
    :isosceles
  elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
    :scalene
  end
end
end

## MORE ELEGENT

# class TriangleError < StandardError
#   def message
#     "Action Bronson, No matter what, you're going to get a comparison to something. I Gave You A Grace Period, but that SportsNation triangular mentioning of my name was an ERROR!"
#   end
# end
#
# class Triangle
#   attr_accessor :equilateral, :isosceles, :scalene  # => nil
#
#   def initialize(a, b, c)
#     a, b, c = sides = [a, b, c].sort                       # => [3, 4, 4]
#     raise TriangleError unless a > 0 and a + b > c         # => nil
#     [:scalene, :isosceles, :equilateral][-sides.uniq.size]  # => :equilateral
#   end
#
# end
#
# Triangle.new(4, 3, 4)  # => #<Triangle:0x007f8caa11ca90>

## HINTS

# The sum of the lengths of any two sides of a triangle
# always exceeds the length of the third side.
# This is a principle known as the triangle inequality.
# Further, each side must be larger than 0.
