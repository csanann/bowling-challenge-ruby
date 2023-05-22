#file: bowling_gmae.rb
#bowling score card program, not bowling game!, no generate ramdom rolls

class BowlingGame
  attr_reader :rolls

  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    total_score = 0
    frame_index = 0

    10.times do
      if strike?(frame_index)
        total_score += strike_score(frame_index)
        frame_index += 1
      elsif spare?(frame_index)
        total_score += spare_score(frame_index)
        frame_index += 2
      else
        total_score += frame_score(frame_index)
        frame_index += 2
      end
    end
    total_score
  end

  private

  def strike?(frame_index)
    @rolls[frame_index] == 10
  end

  def spare?(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1] == 10
  end

  def strike_score(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1] + @rolls[frame_index + 2]
  end

  def spare_score(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1] + @rolls[frame_index + 2]
  end

  def frame_score(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1]
  end
end
