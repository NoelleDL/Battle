require 'player'

describe Player do

  subject(:player) { described_class.new("George") }

  describe "#name" do
    it 'returns player name' do
      expect(subject.name).to eq "George"
    end
  end
end
