class Board


    attr_accessor :cells

    def initialize
        self.cells_set_up
    end

    def cells_set_up
       self.cells = Array.new(9, " ")
    end

    def reset!
        self.cells.clear
        self.cells_set_up
    end

    def display
        puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
        puts "-----------"
        puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
        puts "-----------"
        puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
    end

    def position(entered_position)
        self.cells[entered_position.to_i - 1]
    end

    def full?
        self.cells.all? {|cell| cell == "X" || cell == "O"}
    end

    def turn_count
        self.cells.count {|cell| cell != " "}
    end

    def taken?(position_num)
        if position(position_num) != " "
           true
        else
            false
        end
    end

    def valid_move?(value)
        if value.to_i.between?(1, 9) && (self.cells[value.to_i - 1] != "X" && self.cells[value.to_i - 1] != "O")
            true
        else
            false
        end
    end

    def update(num, player)
        self.cells[num.to_i - 1] = player.token
    end
    
end
