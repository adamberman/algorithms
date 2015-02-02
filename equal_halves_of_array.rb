def equal_halves_of_array(array)
	sums = []
	up_to_sum = 0
	array.each do |el|
		sums << [up_to_sum]
		up_to_sum += el
	end
	down_to_sum = 0
	i = array.length - 1
	while i >= 0 do
		sums[i] << down_to_sum
		down_to_sum += array[i]
		i -= 1
	end
	sums.each_with_index do |values, idx|
		return idx if values[0] == values[1]
	end

	-1
end