class Triangle
  attr_accessor :length, :width, :height

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    if length < 0 || width < 0 || height < 0
      raise TriangleError
    elsif length + width <= height || width + height <= length || height + length <= width
      raise TriangleError
    elsif length == width && length == height
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
