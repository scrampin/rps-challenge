require 'game'

describe Game do

  subject(:game) {described_class.new(steph, computer)}
  let(:steph) {double(:steph)}
  let(:pinkiepie) {double(:pinkiepie)}
  let(:computer) {double(:computer)}

  describe '#initialize' do
    it 'initiates with a player' do
      expect(game.player).to eq steph
    end
  end

  describe '#assign' do
    it 'reassigns the player' do
      game.assign(pinkiepie)
      expect(game.player).to eq pinkiepie
    end
  end


end
