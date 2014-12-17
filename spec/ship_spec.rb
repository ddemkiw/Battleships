require 'ship'

	describe Ship  do 

		let(:ship) {Ship.new(:size => 1)}

		it 'it should allow setting size on initialization' do
			expect(ship.size).to eq(1)
		end
		
		it 'should should not be sunk when created'do
			expect(ship).to be_floating
		end

		it 'should be able to be hit' do
			ship.hit!
			expect(ship).to_not be_floating
		end

	end