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
puts "your card is #{get_random_card}!"
@player_hand =get_starting_hand
@dealer_hand=get_starting_hand
puts "player_hand: #{@player_hand}, value: #{get_hand_value(@player_hand)}"
puts "dealer_hand: #{@dealer_hand}!"
    end
    def get_starting_hand
        [get_random_card,get_random_card]
     end
     def get_hand_value(hand)
        
        hand.inject(0){|sum|sum}
        sum=0
        hand.each do |card|
            sum=sum+card
        end
        sum
     end
    def get_random_card
       return @deck[rand(@deck.length)]
    end
 end

 Blackjackgame.new


