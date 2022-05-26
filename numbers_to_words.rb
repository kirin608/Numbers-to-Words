# Write a method that translates numbers in numeric form into written words. 
# For example, it would translate 384 into "three hundred eighty four". 
# Use multiple hashes and the .fetch() method to solve this.

def get_player_input
    print 'Please enter the number: '
    gets.chomp.to_i  
end

def numbers_to_words (entered_number = get_player_input())
    number_list  = {
    1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 
    6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten',  
    11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 
    16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 20 =>'twenty',
    30=> 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 
    90 => 'ninety', 100 => 'hundred',  1000 => 'thousand', 0 => 'zero'
    }  

    number_position = entered_number.digits.reverse
    
    if  entered_number >= 0 && entered_number <= 20
        number_list[entered_number]
    elsif entered_number >20 && entered_number <= 99
            if number_position.last == 0  
            number_list[number_position[0]*10]
            else number_list[number_position[0]*10] + " " + number_list[number_position[1]] 
            end
    elsif entered_number >99 && entered_number <= 999
            if number_position.last == 0 && number_position[-2] == 0
                number_list[number_position[0]] + " " + number_list[100]  
            elsif number_position.last == 0
                number_list[number_position[0]] + " " + number_list[100] + " and " +
                number_list[number_position[1]*10] 
            elsif number_position[-2] == 0
                number_list[number_position[0]] + " " + number_list[100] + " and " +
                number_list[number_position[2]]
            else
                number_list[number_position[0]] + " " + number_list[100] + " " +
                number_list[number_position[1]*10] + " " + number_list[number_position[2]]
            end
    elsif entered_number >999 && entered_number <= 9999
            if number_position[-3..-1] == [0,0,0] 
                number_list[number_position[0]] + " " + number_list[1000] 
            elsif number_position[-3..-2] == [0,0]
                number_list[number_position[0]] + " " + number_list[1000] + " and " +
                number_list[number_position.last]
            elsif number_position[1] == 0 && number_position[-1] == 0
                number_list[number_position[0]] + " " + number_list[1000] + " and " +
                number_list[number_position[2]*10]
            elsif number_position[-2..-1] == [0,0]
                number_list[number_position[0]] + " " + number_list[1000] + ", " +
                number_list[number_position[1]] + " " + number_list[100]
            else   number_list[number_position[0]] + " " + number_list[1000] + " " + 
                number_list[number_position[1]] + " " + number_list[100] + " " +
                number_list[number_position[2]*10] + "-" + number_list[number_position[3]]
            end
    else   
    "error"
    end
end


