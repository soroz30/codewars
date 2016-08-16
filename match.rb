def match(usefulness, months)
   (usefulness.inject(:+)) >= (100 * (0.85**months)) ? "Match!" : "No match!"
end

match([15,24,12], 4)