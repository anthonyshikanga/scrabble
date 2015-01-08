require('rspec')
require('scrabble')

describe('String#scrabble') do

  it("returns the value 1, given the letter a") do
    expect(("a").scrabble()).to(eq(1))
  end

  it("returns the value 2, given the word 'at'") do
    expect(("at").scrabble()).to(eq(2))
  end

  it("returns the value 87, given the word 'abcdefghijklmnopqrstuvwxyz'") do
    expect(("abcdefghijklmnopqrstuvwxyz").scrabble()).to(eq(87))
  end

end
