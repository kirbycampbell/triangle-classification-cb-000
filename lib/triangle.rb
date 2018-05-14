class Triangle
  attr_accessor :length, :width, :height

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    :equilateral if length == width && length == height
    :isosceles if length == width || length == height || width == height
  end

  class TriangleError < StandardError

  end

end
