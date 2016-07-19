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
		if @playerOne.points == @playerTwo.points and @playerOne.points >= 3
			return 'Duece'
		elsif isOnePlayerHavingAdvantage
			return "Advantage #{getPlayerWithAdvantage}"
		elsif isOnePlayerHasTwoOrMorePoints
			return "Game to #{getWinningPlayer}"
		else		
			return "Score #{playerOneScore}-#{playerTwoScore}"
		end
	end

	def isOnePlayerHavingAdvantage
		if @playerOne.points == @playerTwo.points + 1 and @playerTwo.points >= 3
			return true
		elsif @playerTwo.points == @playerOne.points + 1 and @playerOne.points >= 3
			return true
		else
			return false
		end
	end

	def getPlayerWithAdvantage
		if isOnePlayerHavingAdvantage
			return playerWithMorePoints
		end
	end

	def isOnePlayerHasTwoOrMorePoints
		if @playerOne.points >= 4 and @playerTwo.points <= @playerOne.points - 2
			return true
		elsif @playerTwo.points >= 4 and @playerOne.points <= @playerTwo.points - 2 
			return true
		else
			return false
		end
	end

	def getWinningPlayer
		if isOnePlayerHasTwoOrMorePoints  
			return playerWithMorePoints
		end
	end

	def playerWithMorePoints
		if @playerOne.points > @playerTwo.points
			return @playerOne.name
		else
			return @playerTwo.name
		end
	end




end