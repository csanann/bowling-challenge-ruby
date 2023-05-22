#file: bowling_game_spec.rb

require './lib/bowling_game'

#start with 2 basic tests
describe BowlingGame do
  let(:game) { BowlingGame.new }

  describe "#roll" do
    #rolling 0 in ever roll
    it 'can roll a gutter game' do
      20.times { game.roll(0) }
      expect(game.score).to eq(0)
    end
  
    it 'can roll all ones' do
      #all rolls knowcking down 1 pin
      20.times { game.roll(1) }
      expect(game.score).to eq(20)
    end
  end
  #handling strikes and spares tests
end
