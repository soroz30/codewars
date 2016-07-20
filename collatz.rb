
def collatz n
  #your code here
  array = [n]
  array.last % 2 == 0 ? array << array.last / 2 : array << array.last * 3 + 1 until array.last == 1   
  return array.length
end

collatz(20)