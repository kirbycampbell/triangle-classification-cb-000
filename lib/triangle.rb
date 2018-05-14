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
    elsif length < 0 || width < 0 || height < 0
      raise TriangleError
    end

  end

  class TriangleError < StandardError

  end

end
