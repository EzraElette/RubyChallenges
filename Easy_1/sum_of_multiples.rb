class SumOfMultiples
  def initialize(*nums)
    @multiples = nums
  end

  def to(num)
    self.class.to(num, @multiples)
  end

  def self.to(max, multiples=[3, 5])
   (0...max).select { |num|
      multiples.any? { |multiple| num % multiple == 0 }
  }.reduce(:+)
  end
end
