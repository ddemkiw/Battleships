# require 'boat'

# 	describe Boat do 
		
# 		let(:boat) {Boat.new(1)}

# 	it 'should have hit of zero when created' do
# 		expect(boat.hits).to eq 0
# 	end

# 	it 'should have a size when created' do
# 		expect(boat.size).to eq(1)
# 	end

# 	it 'should have an empty coordinates array on initialization' do
# 		expect(boat.coordinates).to be_empty
# 	end

# 	it 'should be able to be hit' do
# 		boat.hit!
# 		expect(boat.hits). to eq 1
# 	end

# 	it 'when the hits equal the size the boat sinks' do
# 		boat.hit!
# 		expect(boat.sunk?).to be_truthy
# 	end

# 	it 'battleships should be created with a size of 5' do
# 		expect(Boat.battleship.size).to eq(5)
# 	end

# end