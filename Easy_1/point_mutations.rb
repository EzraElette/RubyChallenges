class DNA
  def initialize(sequence)
    @sequence = sequence
  end

  def hamming_distance(sequence2)
    hamming_distance = 0
    min, max = [@sequence, sequence2].sort_by(&:length)
    min.chars.each_with_index do |char, index|
      hamming_distance += 1 if char != max[index]
    end
    hamming_distance
  end
end
