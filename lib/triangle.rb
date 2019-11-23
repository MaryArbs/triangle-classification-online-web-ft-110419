# class Triangle
#   def initialize(side_1,side_2,side_3)
#     @side_1 = side_1
#     @side_2 = side_2
#     @side_3 = side_3
#   end
#
#   def kind()
#     if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
#       begin
#            raise TriangleError
#            puts error
#          end
#     elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
#       begin
#            raise TriangleError
#            puts error
#          end
#     else
#       if (@side_1 == @side_2) && (@side_2 == @side_3)
#         :equilateral
#       elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
#         :isosceles
#       elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
#         :scalene
#       end
#     end
#
#   end
#
# end
#
# class TriangleError < StandardError
#  def error
#    puts "Try again."
#  end
# end

class Triangle
  def initialize(side1, side2, side3)
      @sides = []
      @side1 = side1
      @side2 = side2
      @side3 = side3
      @sides = [side1, side2, side3]
    end
    def kind
      if @sides.any? {|e| e == 0 } ||
          @sides.any? {|e| e < 0 } ||
          @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
        begin
          raise TriangleError
          puts error_bud
        end
      elsif @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif
        @side1 != @side2 && @side2 != @side3 && @side1 != @side3
        :scalene
      else
        :isosceles
      end
    end
 class TriangleError < StandardError
   def error_bud
     Return " Your triangles seems to be a little off.... Sorry bud! Might wanna check your input. :)"
   end
 end
 end
