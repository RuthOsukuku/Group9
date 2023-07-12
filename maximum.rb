def solution(a)
    max_multiple_of_4 = -Float::INFINITY
  
    a.each do |num|
      if num % 4 == 0 && num > max_multiple_of_4
        max_multiple_of_4 = num
      end
    end
  
    max_multiple_of_4
  end
  
  a = [-6, -91, 1011, -100, 84, -22, 0, 1, 473]
  result = solution(a)
  puts result