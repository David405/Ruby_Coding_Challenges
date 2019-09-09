def transpose(string)
    # your code here
      deque = []
      result = ''
      for i in 0..string.length do
          if string[i] == 'g'
              deque.push(string[i])
              next
          elsif string[i] == 'n'
              deque.unshift(string[i])
              next
          else
              result += deque.join('') unless deque.empty?
              deque = [] unless deque.empty?
          end
          
          
          if string[i] != 'g' && string[i] != 'n' && string[i]
              result += string[i]
          end
      end
      result
  end
  
  puts transpose('he was searchign on Bign for signign kigns')
  # => he was searching on Bing for singing kings
  
  puts transpose('rignadingdiggn!')
  # => ringadingdingg!
  
  puts transpose('gngngnnggnngggnnn')
  # => nnnnnnnnngggggggg