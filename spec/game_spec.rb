RSpec.describe Game do

  let (:player1) { double("John") }
  let (:player2) { double("Jason") }
  subject { described_class.new(player1, player2) }
  
  describe '#initialize' do
    it 'stores 2 player objects' do
      expect(subject.player_1).to eq(player1)     
      expect(subject.player_2).to eq(player2)   
    end
  end

  describe '#attack' do
    it 'player to be called with #get_hit' do
      player = double("John")
      expect(player1).to receive(:get_hit)
      subject.attack(player1)
    end
  end
 
end