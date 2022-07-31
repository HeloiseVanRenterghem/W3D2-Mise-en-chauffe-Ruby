require_relative '../lib/02_day_trader'

it "should return array empty when input is an empty array" do
    expect(day_trader([1, 4, 3, 5, 1])).to eq("The best day to buy is day 1 with a value of 1, and the best day to sell is day 4 with a value of 5")
    expect(day_trader([290, 4, 33, 52, 221])).to eq("The best day to buy is day 2 with a value of 4, and the best day to sell is day 5 with a value of 221")
    expect(day_trader([671, 465, 3765, 5, 15])).to eq("The best day to buy is day 2 with a value of 465, and the best day to sell is day 3 with a value of 3765")
    expect(day_trader([16, 4, 3, 5, 1])).to eq("The best day to buy is day 3 with a value of 3, and the best day to sell is day 4 with a value of 5")
    expect(day_trader([71, 48, 343, 90, 111])).to eq("The best day to buy is day 2 with a value of 48, and the best day to sell is day 3 with a value of 343")
end