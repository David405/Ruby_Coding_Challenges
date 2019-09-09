def balanced_brackets?(string)
    # your code here
    def balanced_brackets?(string)
     stack = []
     opening = ['(', '[', '{']
     closing = [')', ']', '}']
     string.chars.each do |char|
       if opening.include?(char)
         stack << char
       elsif closing.include?(char)
       value = stack.pop
         return false if opening.index(value) != closing.index(char)
       end
     end
     stack.empty?
   end
  end
  
  puts balanced_brackets?('(hello)[world]')
  # => true
  
  puts balanced_brackets?('([)]')
  # => false
  
  puts balanced_brackets?('[({}{}{})([])]')
  # => true