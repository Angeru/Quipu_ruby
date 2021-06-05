

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



ids = File.open( "input.txt").map{|line| get_id(line)}

seat = (ids.min..ids.max).find{|id| ids.include?(id-1) && ids.include?(id+1) && !ids.include?(id)}


