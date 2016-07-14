#Why would we want to stop to only 50 shades of grey? Let's see to how many we can go.

#Write a function that takes a number n as a parameter and return an array containing n shades of grey in hexadecimal code (#aaaaaa for example). The array should be sorted in ascending order starting with #010101, #020202, etc. (using lower case letters).

#def shades\_of\_grey(n)
#  return '''n shades of grey in an array'''
#end
#As a reminder, the grey color is composed by the same number of red, green and blue: #010101, #aeaeae, #555555, etc. Also, #000000 and #ffffff are not accepted values.

#When n is negative, just return an empty array. If n is higher than 254, just return an array of 254 elements.

#Have fun

def shades_of_grey(n)
  1.upto([254,n].min).map {|i| p format '#%02x%02x%02x', i, i, i}
end

shades_of_grey(3)