def longest_word(letters)
  letters = letters.to_s
  selected = $words.select { |w| w.chars.all? {|i| letters.count(i) >= w.count(i) && letters.count(i) > 0}}
  final_select = selected.select { |x| x.length == selected.max_by(&:length).length }
  final_select.empty? ? nil : final_select
end