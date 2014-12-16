require 'water'

describe Water do

  let(:water) {Water.new}
  let(:user) {double :user}

  it 'should not be hit when created' do
  		expect(water).not_to be_hit
  end

  it 'should be able to be hit' do
  		expect(water.hit!).to be true
  end

end