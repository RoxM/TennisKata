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
		return 'Duece'if @playerOne.points == @playerTwo.points and @playerOne.points >= 3
		return "Advantage #{getPlayerWithAdvantage}" if isOnePlayerIsWinningByOne
		return "Game to #{getWinningPlayer}" if isOnePlayerIsWinningByTwoOrMorePoints	
		return "Score #{playerOneScore}-#{playerTwoScore}"
	end

	def isOnePlayerIsWinningByOne
		if (@playerOne.points == @playerTwo.points + 1 and @playerTwo.points >= 3) or (@playerTwo.points == @playerOne.points + 1 and @playerOne.points >= 3)
			return true
		else
			return false
		end
	end

	def getPlayerWithAdvantage
		if isOnePlayerIsWinningByOne
			return playerWithMorePoints
		end
	end

	def isOnePlayerIsWinningByTwoOrMorePoints
		if (@playerOne.points >= 4 and @playerTwo.points <= @playerOne.points - 2) or (@playerTwo.points >= 4 and @playerOne.points <= @playerTwo.points - 2) 
			return true
		else
			return false
		end
	end

	def getWinningPlayer
		if isOnePlayerIsWinningByTwoOrMorePoints  
			return playerWithMorePoints
		end
	end

	def playerWithMorePoints
		@playerOne.points > @playerTwo.points ? @playerOne.name : @playerTwo.name
	end




end