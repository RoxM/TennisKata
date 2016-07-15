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
		else	
			return "Score #{playerOneScore}-#{playerTwoScore}"
		end
	end

end