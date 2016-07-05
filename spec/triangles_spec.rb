require('rspec')
require('triangles')

describe (Triangles) do
  describe("#triangles?") do
    it("returns false if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side") do
    test_triangles = Triangles.new(3, 3, 7)
    expect(test_triangles.triangles?()).to(eq(false))
    end
  end
end
