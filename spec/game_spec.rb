RSpec.describe Game do

  describe '#attack' do
    it 'player to be called with #get_hit' do
      player = double("John")
      expect(player).to receive(:get_hit)
      subject.attack(player)
    end
  end
 
end
