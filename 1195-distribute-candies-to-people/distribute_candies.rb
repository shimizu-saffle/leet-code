def distribute_candies(candies, num_people)
  remain_candies = candies
  distribution_count = 1
  current_index = 0
  result = Array.new(num_people, 0)

  while remain_candies > 0 do
    if remain_candies <= distribution_count
      result[current_index] += remain_candies
      break
    else
      result[current_index] += distribution_count
      remain_candies -= distribution_count
    end

    current_index = current_index >= num_people - 1 ? 0 : current_index + 1
    distribution_count += 1
  end

  result
end