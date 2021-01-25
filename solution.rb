require 'pry'
class Deck

    @@all =[]

    def self.all
        @@all
    end


    SUIT = ["Hearts", "Clubs", "Diamonds", "Spades"]
    RANK = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

    attr_accessor :cards

    def initialize
        @cards = []
        SUIT.each do |suit| 
            RANK.each do|rank|
                # binding.pry
                @cards << Card.new(suit,rank)
            end
        end
        @@all << self
    end

    def choose_card
        self.cards.delete(self.cards.sample)
    end
    
    def shuffle
        self.cards = self.cards.shuffle
    end
end

class Card

    attr_accessor :suit, :rank
    
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

end

deck = Deck.new
# binding.pry
puts deck.cards[0].inspect
deck.shuffle
puts deck.cards[0].inspect