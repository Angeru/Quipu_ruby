

def get_id(seat)
    start_row=0
    end_row=127
    seat.split("")[0..6].each do |c| 
        if c=='F'
            end_row -= ((end_row-start_row)/2).to_i+1
        else
            start_row += ((end_row-start_row)/2).to_i+1
        end
    end;nil

    start_column=0
    end_column=7
    seat.split("")[7..-1].each do |c|
        if c=='L'
            end_column -= ((end_column-start_column)/2).to_i+1
        else
            start_column += ((end_column-start_column)/2).to_i+1
        end
    end
    
    end_row*8 + end_column
end

maximun_id=0
File.open( "input.txt").each do |line|
    id = get_id(line)
    maximun_id = id if id>maximun_id
end
