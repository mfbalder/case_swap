###
# From scratch, write a ruby object that swaps case.
# Lowercase should be turned into uppercase and vice-versa. “Hello” -> “hELLO.”
# Spaces and numbers should be preserved, but any special characters should raise errors.
# Write specs for each using RSpec’s single-line “it” syntax.
###
class SwapCase
  def self.execute(input)
    validate_input(input)

    input.chars.each_with_object('') do |char, output|
      output << char.swapcase
    end
  end

  def self.validate_input(input)
    raise 'Input cannot contain special characters' if input.match(/[^a-zA-Z0-9\s]/)
  end
end
