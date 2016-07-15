class TennisGame
	def initialize playerOne, playerTwo
		@playerOne = playerOne
		@playerTwo = playerTwo
	end

	def playerOneScore
		@playerOne.score
	end

	def playerTwoScore
		@playerTwo.score
	end

	def score
		if playerOneScore == 'forty' and playerTwoScore == 'forty'
			return 'Duece'
		elsif @playerOne.points == @playerTwo.points + 1 and @playerTwo.points >= 3
			return "Advantage #{@playerOne.name}"
		elsif @playerOne.points >= 4 and @playerTwo.points <= @playerOne.points - 2
			return "Game to #{@playerOne.name}"
		else		
			return "Score #{playerOneScore}-#{playerTwoScore}"
		end
	end

end