def title_to_number(title)
  title.bytes.inject(0){|sum,b| (sum*26) + (b - 64)}
end