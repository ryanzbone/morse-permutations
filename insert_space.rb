require 'pry'

class InsertSpace

  def permutations string
    interleave(string).map do |str|
      str.gsub('0', '').gsub('1', ' ')
    end
  end

  private

  def binary_count_up size
    0.upto(2 ** (size - 1) - 1).map { |n| "%0#{size - 1}b" % n }
  end

  def interleave string
    binary_count_up(string.length).map do |bin|
      string.chars.zip(bin.chars).flatten.compact.join
    end
  end
end
