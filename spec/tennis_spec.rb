require_relative '../tennisGame'
require_relative '../tennisPlayer'

describe TennisGame do 
	before do
		@playerOne = TennisPlayer.new('Serena')
		@playerTwo = TennisPlayer.new('Vanessa')

		@game = TennisGame.new(@playerOne, @playerTwo)
	end

	it 'initial score, both players has Love' do
		expect(@game.score).to eq('Score love-love')
	end

	it 'Return fifteen-love when player1 makes 1 point' do
		@playerOne.winsPoint

		expect(@game.score).to eq('Score fifteen-love')
	end
	
end