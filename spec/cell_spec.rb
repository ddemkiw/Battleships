require 'cell'

describe Cell do 

  
  let(:ship) {double :ship}
  let(:water) {double :water}
  let(:cell) { Cell.new(water) }

  it 'should be have water when initialized' do
    expect(cell.contents).to include(water)
  end

  it 'should be able to anchor a ship' do
    cell.anchor(ship)
    expect(cell.contents).to include(ship)
  end

  # it 'should know it\'s contents'

  # end 


end 