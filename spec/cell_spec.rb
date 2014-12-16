require 'cell'

describe Cell do 

  let(:cell) {Cell.new}
  let(:ship) {double :ship}

  it 'should be empty when initialized' do
    expect(cell.contents).to be_empty
  end

  it 'should be able to anchor a ship' do
    cell.anchor(ship)
    expect(cell.contents).to include(ship)
  end

  # it 'should know it\'s contents'

  # end 


end 