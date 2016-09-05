def chess_board(rows, columns)
  array = []
  (1..rows).to_a.each do |i|
    arr = []
    counter = 0
    if i % 2 != 0 
      while counter < columns
        counter.even? ? arr.push("O") : arr.push("X")
        counter += 1
      end
    else
      while counter < columns    
        counter.even? ? arr.push("X") : arr.push("O")
        counter += 1
      end
    end
    array << arr
  end
  array
end


###################

def chess_board(rows, columns)
  (0...rows).map { |r| (0...columns).map { |c| (r+c).odd? ? "X" : "O" } }
end