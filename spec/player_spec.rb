RSpec.describe Player do

  subject { Player.new('John')}

  describe '#initialize' do 
    it 'stores the players name' do
      expect(subject.name).to eq("John")
    end

    it 'is initialized with HP = 100' do
      expect(subject.hp).to eq(100)
    end
  end

  describe '#get_hit!' do
    it 'reduces the players hp by 10' do
      expect { subject.get_hit }.to change { subject.hp }.by(-10)
    end
  end

end
