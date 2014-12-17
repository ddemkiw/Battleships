require 'cell'


describe Cell do 

  
  let(:ship) {double :ship}
  let(:water) { double :water}
  let(:cell) { Cell.new(water) }
  let(:cellship) { Cell.new(ship) }
 
  it 'has some content when initialized' do
    expect(cell.contents).to eq(water)
  end

  it 'is possible to attack the cell' do
      expect(water).to receive(:hit!) { true }
      cell.attack 
  end

  it 'the maximum number of attacks is 1' do
      allow(water).to receive(:hit!) { true }
      expect(water).to receive (:hit?) 
      cell.attack
      expect(lamdba{cell.attack}).to raise_error('You may not attack the same cell twice, please try again') 
  end

end 

