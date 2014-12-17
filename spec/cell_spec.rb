require 'cell'


describe Cell do 

  
  let(:ship) {double :ship}
  let(:water) {double :water}
  let(:cell) { Cell.new(water) }

  it 'should have some content when initialized' do
    expect(cell.contents).to eq(water)
  end


  it 'should know when it '  do

  end 

  #cell will need to return a false hit for water or miss
  # cell will need to return a hit true for a ship if hit count is zero before the hit


end 