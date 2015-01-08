class String
  define_method(:scrabble) do

    word_array = self.split("")
    score = Array.new()

    one = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    two = ["d", "g"]
    three = ["b", "c", "m", "p"]
    four = ["f", "h", "v", "w", "y"]
    five = ["k"]
    eight = ["j", "x"]
    ten = ["q", "z"]

    word_array.each() do |letter|

      if one.include?(letter)
        score.push(1)
      elsif two.include?(letter)
        score.push(2)
      elsif three.include?(letter)
        score.push(3)
      elsif four.include?(letter)
        score.push(4)
      elsif five.include?(letter)
        score.push(5)
      elsif eight.include?(letter)
        score.push(8)
      elsif ten.include?(letter)
        score.push(10)
      end
    end

    sum = 0
    score.each do |value|
      sum = sum.+(value)
    end

    sum

  end
end
