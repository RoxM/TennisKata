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

	it 'Return fifteen-love when player1 makes 1 point player2 nothing' do
		@playerOne.winsPoint

		expect(@game.score).to eq('Score fifteen-love')
	end
	
	it 'Return love-fifteen when player2 makes 1 point' do #remove later
		@playerTwo.winsPoint

		expect(@game.score).to eq('Score love-fifteen')
	end

	it 'Return thirty-love when player1 makes 2 points and player2 nothing' do
		2.times{@playerOne.winsPoint}

		expect(@game.score).to eq('Score thirty-love')
	end

	it 'Return fifteen-thirty-love when player1 makes 1 points and player2 2 points' do #remove later
		1.times{@playerOne.winsPoint}
		2.times{@playerTwo.winsPoint}

		expect(@game.score).to eq('Score fifteen-thirty')
	end

	it 'Return Forty-love when player1 makes 3 points and player2 nothing' do
		3.times{@playerOne.winsPoint}

		expect(@game.score).to eq('Score forty-love')
	end

	it 'Return love-Forty when player2 makes 3 points and player1 nothing' do #remove later
		3.times{@playerTwo.winsPoint}

		expect(@game.score).to eq('Score love-forty')
	end

	it 'Return duece when both players make 3 points' do
		3.times{@playerOne.winsPoint}
		3.times{@playerTwo.winsPoint}

		expect(@game.score).to eq('Duece')
	end

	it 'returns Advantage for the player one with one more point after 3 points by both' do 

		4.times{@playerOne.winsPoint}
		3.times{@playerTwo.winsPoint}

		expect(@game.score).to eq("Advantage #{@playerOne.name}")
	end

	it 'returns Advantage for the player two with one more point after 3 points by both' do 
		
		3.times{@playerOne.winsPoint}
		4.times{@playerTwo.winsPoint}

		expect(@game.score).to eq("Advantage #{@playerTwo.name}")
	end

	it 'returns Advantage for player one with one more point after 4 points each' do
		5.times{@playerOne.winsPoint}
		4.times{@playerTwo.winsPoint}

		expect(@game.score).to eq("Advantage #{@playerOne.name}")
	end

	it 'returns Game for player 1 when kill player 2 with 4 points vs 0' do
		4.times{@playerOne.winsPoint}

		expect(@game.score).to eq("Game to #{@playerOne.name}")
	end

	it 'eturns Game for player 2 when kill player 2 with 4 points vs 0' do
		4.times{@playerTwo.winsPoint}

		expect(@game.score).to eq("Game to #{@playerTwo.name}")
	end


end