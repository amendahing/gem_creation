require "spec_helper"
RSpec.describe Stringer do

  it "concatenates undefined number of strings with a space" do
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq(" Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "shortens the length of the string to x-amount of characters followed by ..." do
      expect(Stringer.minify("Hello my name is Amenda", 10)).to eq("Hello my ...")
  end

  it "does not shorten the length of the string if it does not exceed maximum length" do
      expect(Stringer.minify("Amenda", 10)).to eq("Amenda")
  end

  it "given a string, it replaces a specified word with a new one" do
      expect(Stringer.replacify("I love puppies", "puppies", "kittens")).to eq('I love kittens')
  end

  it "iterates over a string and adds each word into an array" do
      expect(Stringer.tokenize("I love kittens")).to eq(["I", "love", "kittens"])
  end


end
