def fizzbuzz(n)
 a = []
 (1..n).each do |ele|
     if ele % 3 == 0 && ele % 5 == 0
       a.push("FizzBuzz")
     elsif ele % 3 == 0
       a.push("Fizz")
     elsif ele % 5 == 0
       a.push("Buzz")
     else
       a.push(ele)
     end
   end
  p a
end

fizzbuzz(10)


#########################


def fizzbuzz(n)
  (1..n).map { |x| 
    y = ''
    y += 'Fizz' if x % 3 == 0
    y += 'Buzz' if x % 5 == 0
    y == '' ? x : y
  }
end


def fizzbuzz(n)
  (1..n).map { |x| x%15==0 ? "FizzBuzz" : x%5==0 ? "Buzz" : x%3==0 ? "Fizz" : x }
end