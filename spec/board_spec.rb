require 'board'
require 'ship'
require 'game'

	describe Board do 
		
		let(:board) {Board.new}
		let(:set1) {Set[:E5, :B6, :C3]}
		let(:set2) {Set[:D3, :D4, :D5]}


		it 'is created with an empty set of attacks' do
			expect(board.attacks).to be_empty
		end

		it 'is created with an empty set of ships' do
			expect(board.ships).to be_empty
		end

		it 'battleship should receive hit! when attack hits battleship' do 
			Battle = Ship.battleship
			coord= Set[:A3, :A4, :A5]
			Battle.coordinates << coord
			Battle.coordinates.flatten!
			expect(Battle.hits).to eq(0)
			board.attack(:A3)
			expect(Battle.hits).to eq(1)
		end

		it 'should store coordinates when when an attack takes place' do
			board.attack(:E5)
			expect(board.attacks).to include (:E5)
		end
		
		it 'should be able to build a fleet set' do
			board.build_fleet(set1)
			board.build_fleet( set2)
			expect(board.fleet).to include(:E5)
			expect(board.fleet).to include(:D3)
		end

		it 'should know when an attack\'s coordinates matches a ship' do
			board.build_fleet(set1)
			board.attack(:E5)
			expect(board).to be_hit
		end

		it 'should not allow the same coordinate to be attacked twice' do
			board.attack(1)
			expect(lambda{board.attack(1)}).to raise_error('You may not attack the same cell twice, please try again') 
		end

		it 'should not allow ships to overlap' do
			board.build_fleet(set1)
			set3 = Set[:E5, :E6, :E7]
			expect(lambda{board.build_fleet(set3)}).to raise_error('You may place two ships in the same cell, please try again') 
		end

		it 'should know when a game is over' do
			board.build_fleet(set1)
			board.attack(:E5)
			board.attack(:B6)
			board.attack(:C3)
			expect(board).to be_game_over
		end


	end
