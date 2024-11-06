class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      
      delimiter_regex = delimiter.scan(/\[([^\]]+)\]/).flatten.map { |delim| Regexp.escape(delim) }.join('|')
      delimiters_regex = Regexp.new(delimiter_regex)
    else
      delimiters_regex = /,|\n/
    end

    nums = numbers.split(delimiters_regex).map(&:to_i)
    nums.reject! { |num| num > 1000 }
    nums.sum
  end
end
