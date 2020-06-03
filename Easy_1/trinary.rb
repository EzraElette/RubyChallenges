class Trinary
  def initialize(num)
    @trinary = num
  end

  def to_decimal
    return 0 if @trinary =~ /[^012]/

    @trinary.reverse.chars.each_with_index.inject(0) do |memo, (num, idx)|
      memo + (num.to_i * (3 ** idx) )
    end
  end
end