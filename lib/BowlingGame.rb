class Game
	$FrameScore = Array.new
	$convertedscore = Array.new
	$Game1 = 0
	$Game2 = 0
	$Roll_Check = 0
	$counter = 0
	$bonus_round = 0
	def Roll(pin)
		if($Roll_Check == 0)
			if(pin == 10)
				$FrameScore << "Strike"
				$convertedscore << 10
				$counter += 1
				if($counter == 9)
					$bonus_round = 2
				end
			else
				$Game1 = pin
				$FrameScore << $Game1
				$convertedscore << $Game1
				$Roll_Check = 1
			end
		else
			$Game2 = pin
			if($Game1.to_i + $Game2.to_i == 10)
				$FrameScore << "Spare"
				$convertedscore << pin
					if($counter == 9)
						$bonus_round = 1
					end
			else 
				
				$FrameScore << $Game2.to_i
				$convertedscore << $Game2.to_i
			end
			$Game2 = 0
			$Game1 = 0
			$Roll_Check = 0
			$counter += 1
		end
	end

	def Score()
		frame = 0
		score = 0
		counter = 0
		while frame < $FrameScore.size - $bonus_round.to_i
			if($FrameScore[frame] == "Strike")
				score = score + $convertedscore[frame].to_i + $convertedscore[frame + 1].to_i + $convertedscore[frame + 2].to_i
			elsif($FrameScore[frame] == "Spare")
				score = score + $convertedscore[frame].to_i + $convertedscore[frame + 1].to_i
			else
				score = score + $convertedscore[frame].to_i
			end
			frame += 1
		end
		score
	end
end