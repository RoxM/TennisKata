class TennisPlayer
	def initialize (name='')
		@name = name
		@points = 0
	end

	def score
		if @points == 0 then return 'love' end
		if @points == 1 then return 'fifteen' end
	end

	def winsPoint
		@points += 1
	end

end