class Blackjackgame
    def initialize
@still_playing=true
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
run_game
    end
    def print_game_state
puts "player_hand: #{@player_hand}, value: #{get_hand_value(@player_hand)}"
puts "dealer_hand: #{@dealer_hand} , value: #{get_hand_value(@dealer_hand)}"

    end
    def run_game
        user_input=false
        while user_input !='stand'
            puts "hit or stand?"
            print_game_state
            if get_hand_value(@player_hand)>21
                puts "you Bust dealer wins"
                return
            end
            user_input=gets.chomp
            if user_input=='hit'
                hit(@player_hand)
            elsif user_input=='stand'
            puts "Player Stand" 
            else
                put "Sorry, I didnt understand that" 
        end
        end
        
        dealer_descisions
            calculate_game_state
    end
    def dealer_descisions
        while get_hand_value(@dealer_hand)<17
            puts "dealer hits"
            hit(@dealer_hand)
            print_game_state
           
    end

    end
    def calculate_game_state
        print_game_state

         if get_hand_value(@player_hand)>21
            puts "Sorry, YOU BUST! YOU LOSE"
       elsif get_hand_value(@dealer_hand)>21
            puts "dealer bust! YOU WIN"
    elsif get_hand_value(@player_hand)== get_hand_value(@dealer_hand)
        puts "A TIE! u have to give money back"
      elsif get_hand_value(@player_hand) > get_hand_value(@dealer_hand)
        puts "U WIN keep playing"
        elsif get_hand_value(@player_hand) < get_hand_value(@dealer_hand)
        puts "House WIN"
      else
        puts "Wrong something"
      end
    end

    def hit(hand)
        hand.push(get_random_card)
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


