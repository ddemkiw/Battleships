require 'cell'


describe Cell do 

  
  let(:ship) {double :ship}
  let(:water) {double :water}
  let(:cell) { Cell.new(water) }

  it 'should have water when initialized' do
    expect(cell.contents).to include(water)
  end


  it 'should know when it\'' contents'

  # end 


end 