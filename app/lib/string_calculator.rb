class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    return numbers.to_i if numbers.match?(/^\d+$/)

    nums = numbers.split(",").map(&:to_i)
    nums.sum
  end
end

