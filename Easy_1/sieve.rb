# sieve of Eratosthenes

class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    arr = [*(2..@max)]
    i = 0
    until i > arr.size - 1
      arr -= multiples_of(arr[i])
      i += 1
    end
    arr
  end

  private
  def multiples_of(mult)
    ((mult + 1)..@max).reject { |num| num % mult != 0 }
  end
end
