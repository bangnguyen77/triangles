class Triangles
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangles?) do
    if ((@side1 + @side2) <= @side3) || ((@side2 + @side3) <= @side1) || ((@side3 + @side1) <= @side2)
      return false
    else
      return true
    end
  end

  define_method(:equilateral?) do
    if @side1 == @side2 && @side2 == @side3
      return true
    end
  end

  define_method(:isosceles?) do
    if @side1 == @side2 && @side2 != @side3 || @side1 == @side3 && @side2 != @side3 || @side2 == @side3 && @side1 != @side2
      return true
    end
  end

  define_method(:scalene?) do
    if (@side1 != @side2) && (@side2 != @side3) && (@side1 != @side3)
      return true
    end
  end
end
