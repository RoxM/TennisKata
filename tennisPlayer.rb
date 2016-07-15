class TennisPlayer
	def initialize (name='')
		@name = name
		@points = 0
	end

	def score
		return 'love' if @points == 0  
		return 'fifteen' if @points == 1  
		return 'thirty' if @points == 2
	end

	def winsPoint
		@points += 1
	end

end