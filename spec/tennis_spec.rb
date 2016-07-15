require_relative '../tennisGame'

describe TennisGame do 
	it "initial score, both players has Love" do
		@game = TennisGame.new
		expect(@game.score).to eq('Score love-love')
	end
	
end