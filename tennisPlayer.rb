class TennisPlayer
	def initialize (name='')
		@name = name
		@points = 0
	end

	def score
		'love'
	end

	def winsPoint
		@points += 1
	end

end