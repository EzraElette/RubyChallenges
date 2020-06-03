class Octal
  def initialize(octal)
    @octal = octal
  end

  def to_decimal
    return 0 if @octal =~ /[\D89]/
    @octal.chars.reverse.each_with_index.inject(0) do |memo, (num, idx)|
      memo + (num.to_i * (8 ** idx) )
    end
  end
end