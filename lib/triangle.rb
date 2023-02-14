class Triangle
  class TriangleError < StandardError
  end
  
  def initialize(height, width, hypotenuse)
    if height <= 0 || width <= 0 || hypotenuse <= 0
      raise TriangleError, "Triangle sides must be positive"
    elsif height + width <= hypotenuse || height + hypotenuse <= width || width + hypotenuse <= height
      raise TriangleError, "Invalid triangle sides"
    end
    @sides = [height, width, hypotenuse]
  end

  def kind
    if @sides.uniq.size == 1
      :equilateral
    elsif @sides.uniq.size == 2
      :isosceles
    else
      :scalene
    end
  end
end


