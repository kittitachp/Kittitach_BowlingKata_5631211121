require "spec_helper"
require "BowlingGame"   # name of the class we have just created
 
describe Game do
	before :each do
		@game1 = Game.new
		@game1.Roll(10)
		@game1.Roll(10)
		@game1.Roll(10)
		@game1.Roll(10)
		@game1.Roll(10)
		@game1.Roll(10)
		@game1.Roll(10)
		@game1.Roll(10)
		@game1.Roll(10)
		@game1.Roll(10)
		@game1.Roll(10)
		@game1.Roll(10)
	end
  describe "#new" do
    it "calculate the score" do
      expect(@game1.Score()).to eq(300)
    end
  end
end