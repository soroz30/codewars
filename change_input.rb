def change input 
  ('a'..'z').map { |letter| input.downcase.include?(letter) ? '1' : '0' }.join
end