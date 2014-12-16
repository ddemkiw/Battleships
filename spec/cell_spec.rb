require 'cell'

describe Cell do 

  let(:cell) {Cell.new}
  let(:ship) {double :ship}

  it 'should have a value of empty when initialized' do
    expect(cell).to be_empty
  end

  it 'should be full when there is a ship in the cell' do
  	cell.anchor(ship)
  	expect(cell).to_not be_empty
  end



end 