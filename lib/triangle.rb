class Triangle
  attr_accessor :length, :width, :height

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    if length == width && length == height
      :equilateral
    elsif length == width || length == height || width == height
      :isosceles
    elsif length != width && length != height
      :scalene
    end

  end

  class TriangleError < StandardError

  end

end
