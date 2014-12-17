require 'board'
require 'cell'


	describe Board do 

		let(:player) {double :player} 
		let(:board) {Board.new}

		it 'is initialized with a empty set of ships' do
			expect(board.ships).to be_a_kind_of Set
		end

		it 'is initialized with a empty set of attacks' do
			expect(board.attacks).to be_a_kind_of Set
		end

		it 'should accept coordinates for ships' do
			board.place_ship(:E5)
			expect(board.ships).to include :E5
		end

		it 'should accept coordinates for attacks' do
			board.attack_cell(:E6)
			expect(board.attacks).to include :E6
		end

		it 'should know if the game is over' do 
		end

	end