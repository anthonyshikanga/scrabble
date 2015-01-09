class String
  define_method(:scrabble) do
    word_array = self.split("")
    value = Hash.new(0) #sets inital value of hash, so anything added has value of 0
    values = { "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4, "i" => 1, "j" => 8,
      "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10, "r" => 1, "s" => 1, "t" => 1, "u" => 1,
      "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10}

    value.merge!(values)

    total = 0
    word_array.each() do |letter|
      total = total.+(value[letter])
    end
    total
  end
end

  #The first way we did this

    # word_array = self.split("")
    # score = Array.new()
    #
    # one = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    # two = ["d", "g"]
    # three = ["b", "c", "m", "p"]
    # four = ["f", "h", "v", "w", "y"]
    # five = ["k"]
    # eight = ["j", "x"]
    # ten = ["q", "z"]
    #
    # word_array.each() do |letter|
    #
    #   if one.include?(letter)
    #     score.push(1)
    #   elsif two.include?(letter)
    #     score.push(2)
    #   elsif three.include?(letter)
    #     score.push(3)
    #   elsif four.include?(letter)
    #     score.push(4)
    #   elsif five.include?(letter)
    #     score.push(5)
    #   elsif eight.include?(letter)
    #     score.push(8)
    #   elsif ten.include?(letter)
    #     score.push(10)
    #   end
    # end
    #
    # sum = 0
    # score.each do |value|
    #   sum = sum.+(value)
    # end
    #
    # sum

  #end
#end
