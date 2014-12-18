require 'board'

	describe Board do 
		
		let(:board) {Board.new}

		it 'is created with an empty array of attacks' do
			expect(board.attacks).to be_empty
		end

		it 'is created with an empty array of ships' do
			expect(board.ships).to be_empty
		end

		it 'when an attack takes place its coordinates are stored in the attack array' do
			board.attack(:E5)
			expect(board.attacks).to include (:E5)
		end
		
		it 'should be able to place a ship array' do
			board.place_ship([:E5, :B6, :C3])
			board.place_ship( [:D3, :D4, :D5])
			expect(board.ships).to include([:E5, :B6, :C3] )
			expect(board.ships).to include([:D3, :D4, :D5] )
		end

		it 'should know when an attack\'s coordinates matches a ship' do
			board.place_ship([:D3, :D4, :D5])

		end

	end