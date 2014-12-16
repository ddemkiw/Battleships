require 'ship'

	describe Ship  do 

		let(:ship) {Ship.new}

		it 'should should be floating when created'do
			expect(ship).to be_floating
		end

		it 'should be hit' do
			ship.hit!
			expect(ship).to_not be_floating
		end

	end