def sum(number)
    # Your code here
     if number <=0
    return 0
  else
  number + sum(number-1)
  end
  end
  puts sum(4)
  puts sum(10)