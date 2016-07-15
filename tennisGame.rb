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
		"Score #{playerOneScore}-#{playerTwoScore}"
	end

end