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
		elsif isOnePlayerHavingAdvantage
			return "Advantage #{getPlayerWithAdvantage}"
		elsif @playerOne.points >= 4 and @playerTwo.points <= @playerOne.points - 2
			return "Game to #{@playerOne.name}"
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
		if isOnePlayerHavingAdvantage and @playerOne.points > @playerTwo.points then
			return @playerOne.name
		elsif isOnePlayerHavingAdvantage and @playerTwo.points > @playerOne.points then
			return @playerTwo.name
		end
	end


end