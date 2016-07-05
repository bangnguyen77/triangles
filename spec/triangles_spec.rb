require('rspec')
require('triangles')

describe(Triangles) do
  describe("#triangles?") do
    it("returns false if the sum of the lengths of any two sides of a triangle
    is less than or equal to the length of the third side") do
    test_triangles = Triangles.new(3, 2, 7)
    expect(test_triangles.triangles?()).to(eq(false))
    end
  end

  describe("#equilateral?") do
    it("returns true if all three sides are equal") do
      test_triangles = Triangles.new(3, 3, 3)
      expect(test_triangles.equilateral?()).to(eq(true))
    end
  end

  describe("#isosceles?") do
    it("returns true if only two sides are equal") do
      test_triangles = Triangles.new(3, 3, 4)
      expect(test_triangles.isosceles?()).to(eq(true))
    end
  end

  describe("#scalene?") do
    it("returns true if no sides are equal") do
      test_triangles = Triangles.new(3, 5, 4)
      expect(test_triangles.scalene?()).to(eq(true))
    end
  end
end
