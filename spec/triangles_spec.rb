require('rspec')
require('triangles')

describe (Triangles) do
  describe("#triangles?") do
    it("returns false if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side") do
    test_triangles = Triangles.new(3, 3, 7)
    expect(test_triangles.triangles?()).to(eq(false))
    end
  end

  describe("#equilateral?") do
    it("returns true if all sides are equal") do
    test_triangles = Triangles.new(3, 3, 3)
    expect(test_triangles.equilateral?()).to(eq(true))
    end
  end

  describe("#isosceles?") do
    it("returns true if all sides are equal") do
    test_triangles = Triangles.new(3, 3, 5)
    expect(test_triangles.isosceles?()).to(eq(true))
    end
  end

  describe("#scalene?") do
    it("returns true if NO sides are equal") do
    test_triangles = Triangles.new(3, 6, 5)
    expect(test_triangles.scalene?()).to(eq(true))
    end
  end
end
