class Series
  def initialize(str)
    @series = str
  end

  def slices(size)
    raise ArgumentError if size > @series.size
    @series.chars.map(&:to_i).each_cons(size).to_a
  end
end