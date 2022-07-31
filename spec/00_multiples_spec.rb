require_relative '../lib/00_multiples'

describe "the is_multiple_of_3_or_5? method" do
    it "should return TRUE when an integer is a multiple of 3 or 5" do
      expect(is_multiple_of_3_or_5?(3)).to eq(true)
      expect(is_multiple_of_3_or_5?(5)).to eq(true)
      expect(is_multiple_of_3_or_5?(51)).to eq(true)
      expect(is_multiple_of_3_or_5?(45)).to eq(true)
    end
  
    it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5?(2)).to eq(false)
        expect(is_multiple_of_3_or_5?(7)).to eq(false)
        expect(is_multiple_of_3_or_5?(19)).to eq(false)
        expect(is_multiple_of_3_or_5?(97)).to eq(false)
    end
end

describe "sum_of_3_or_5_multiples method" do
    it "should return a result" do
      expect(sum_of_3_or_5_multiples(0)).to eq(0)
      expect(sum_of_3_or_5_multiples(5)).to eq(3)
      expect(sum_of_3_or_5_multiples(13)).to eq(45)
    end
  
    it "should return an error message when it's not an integer" do
        expect(sum_of_3_or_5_multiples(-3)).to eq("Veuillez n'entrer que des entiers naturels.")
        expect(sum_of_3_or_5_multiples(9.4)).to eq("Veuillez n'entrer que des entiers naturels.")
        expect(sum_of_3_or_5_multiples("Hello")).to eq("Veuillez n'entrer que des entiers naturels.")
    end
end