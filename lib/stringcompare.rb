require "stringcompare/version"

module Stringcompare

  def self.same?(original_string, compare_to)
      original_string == compare_to ? true : false
  end

  def self.sentence(original, compare, num_errors=0)

      original_array = original.split(' ')
      comparable_array = compare.split(' ')
      original_exclusive ||= []

      new_array = original_array.each.with_index.with_object([]) do |(word, index) , array|
        array << "The word '#{word}' at position #{index + 1} is different from '#{comparable_array[index]}' " if word != comparable_array[index]

      end
      
      return new_array[num_errors] || 'No differences detected'

  end

end
