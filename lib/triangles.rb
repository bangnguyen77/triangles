

class Triangles
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangles?) do
    false
  end

  define_method(:equilateral?) do
    true
  end

end
