require_relative '../tennisGame'
require_relative '../tennisPlayer'

describe TennisGame do 
	it 'initial score, both players has Love' do
		@playerOne = TennisPlayer.new('Serena')
		@playerTwo = TennisPlayer.new('Vanessa')

		@game = TennisGame.new(@playerOne, @playerTwo)
		expect(@game.score).to eq('Score love-love')
	end

	it 'Return fifteen-love when player1 makes 1 point' do
		@playerOne = TennisPlayer.new('Serena')
		@playerTwo = TennisPlayer.new('Vanessa')

		@playerOne.winsPoint
		@game = TennisGame.new(@playerOne, @playerTwo)
		
		expect(@game.score).to eq('Score fifteen-love')
	end
	
end