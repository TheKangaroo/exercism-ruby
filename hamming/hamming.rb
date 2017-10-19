class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError.new("strand lenghts must be equal") unless strand_a.length ==strand_b.length
    distance = 0
    for idx in 0..strand_a.length do
      if !strand_a[idx].eql?(strand_b[idx])
        distance = distance+1
      end
    end
    distance
  end
end

module BookKeeping
  VERSION = 3
end
