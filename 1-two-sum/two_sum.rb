def two_sum(nums, target)
  nums_record = {}
  nums.each_with_index do |num, i|
    complement = target - num
    if nums_record.key?(complement)
      return [nums_record[complement], i]
    end
    nums_record[num] = i
  end
  raise 'No two sum solution found'
end