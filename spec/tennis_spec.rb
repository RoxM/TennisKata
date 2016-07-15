require_relative '../tennisGame'

describe TennisGame do 
	it 'initial score, both players has Love' do
		@game = TennisGame.new
		expect(@game.score).to eq('Score love-love')
	end

	xit 'Return fifteen-love when player1 makes 1 point' do
		@game = TennisGame.new
		expect(@game.score).to eq('Score fifteen-love')
	end
	
end