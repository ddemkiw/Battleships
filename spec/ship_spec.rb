require 'ship'

	describe Ship  do 

		let(:ship) {Ship.new(:size => 2)}

		it 'it should allow setting size on initialization' do
			expect(ship.size).to eq(2)
		end

		it 'a battleship should have a size of 4' do
			expect(Ship.battleship.size).to eq(4)
		end
		
		it 'a submarine should have a size of 3' do
			expect(Ship.submarine.size).to eq(3)
		end

		it 'a destroyer should have a size of 2' do
			expect(Ship.destroyer.size).to eq(2)
		end

		it 'a partyboat should have a size of 1' do
			expect(Ship.partyboat.size).to eq(1) 
		end

		it 'should have an empty coordinates array on initialization' do
			expect(ship.coordinates).to be_empty
		end

		it 'should be able to be hit' do
			ship.hit!
			expect(ship.hits). to eq 1
		end

		it 'when the hits equal the size the ship sinks' do
			2.times{ship.hit!}
			expect(ship.sunk?).to be_truthy
		end
		



	end