def factorial(n)
  product = 1
   while n > 0
    product *= n
    n -= 1
  end
  puts product
  end

factorial(5)
