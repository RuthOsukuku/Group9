require 'set'

def longest_consecutive(nums)
  num_set = Set.new(nums)
  max_length = 0

  nums.each do |num|
    if !num_set.include?(num - 1)
      current_num = num
      current_length = 1

      while num_set.include?(current_num + 1)
        current_num += 1
        current_length += 1
      end

      max_length = [max_length, current_length].max
    end
  end

  max_length
end

# Example usage:
nums = [100, 4, 200, 1, 3, 2]
result = longest_consecutive(nums)
puts result