require 'cell'

describe Cell do 

  let(:cell) {Cell.new}

  it 'should have a value of empty when initialized' do
    expect(cell).to be_empty
  end

end 