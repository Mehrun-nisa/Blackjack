class Blackjackgame
    def initialize

    @deck=[1,2,3,4,5,6,7,8,9,10,10,10,10,11,
1,2,3,4,5,6,7,8,9,10,10,10,10,11,
1,2,3,4,5,6,7,8,9,10,10,10,10,11,
1,2,3,4,5,6,7,8,9,10,10,10,10,11,
1,2,3,4,5,6,7,8,9,10,10,10,10,11,
1,2,3,4,5,6,7,8,9,10,10,10,10,11,
1,2,3,4,5,6,7,8,9,10,10,10,10,11,
1,2,3,4,5,6,7,8,9,10,10,10,10,11]
puts "your card is #{my_random_card}!"
    end
    def my_random_card
       return @deck[rand(@deck.length)]
    end
 end

 Blackjackgame.new


