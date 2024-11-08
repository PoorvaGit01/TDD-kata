require 'rails_helper'
require 'string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.new.add("")).to eq(0)
    end

    it 'returns the number itself when a single number is passed' do
      expect(StringCalculator.new.add("1")).to eq(1)
    end

    it 'returns the sum of two comma-separated numbers' do
      expect(StringCalculator.new.add("1,5")).to eq(6)
    end

    it 'returns the sum of multiple comma-separated numbers' do
      expect(StringCalculator.new.add("1,2,3")).to eq(6)
    end

    it 'returns the sum of numbers separated by commas or new lines' do
      expect(StringCalculator.new.add("1\n2,3")).to eq(6)
    end

    it 'supports different delimiters specified in the format "//[delimiter]\n[numbers...]' do
      expect(StringCalculator.new.add("//;\n1;2")).to eq(3)
    end

    it 'ignores numbers greater than 1000' do
      expect(StringCalculator.new.add("2,1001")).to eq(2)
      expect(StringCalculator.new.add("1000,1001")).to eq(1000)
    end

    it 'raises an exception for negative numbers' do
      expect { StringCalculator.new.add("1,-2,3,-4") }.to raise_error("negative numbers not allowed: -2, -4")
    end

    it 'supports multiple delimiters of any length' do
      expect(StringCalculator.new.add("//[*][%]\n1*2%3")).to eq(6)
    end

    it 'supports delimiters with lengths longer than one character' do
      expect(StringCalculator.new.add("//[***]\n1***2***3")).to eq(6)
    end
  end
end


