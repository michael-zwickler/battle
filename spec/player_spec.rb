RSpec.describe Player do

  it 'stores the players name' do
    subject = Player.new("John")
    expect(subject.name).to eq("John")
  end

end