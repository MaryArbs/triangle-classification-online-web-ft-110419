class Triangle
  def initialize(side_1, side_2, side_3)

    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3

  end

  def kind()
    if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
        raise TriangleError
      elsif @side_one + @side_two <= @side_three || @side_one + @side_three <= @side_two || @side_two + @side_three <= @side_one
        raise TriangleError
    else
       @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
      elsif
        @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
        :isosceles
      else
        @side_1 != @side_2 && @side_2 != @side_3 && @side_1 != @side_3
        :scalene
      end
    end
 end


class TriangleError < StandardError
end
end
