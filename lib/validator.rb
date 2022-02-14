require 'pry'

class Validator
  def initialize(puzzle_string)
    #split char => each becomes their own string, then mapping over each string to return an array of integers
    @board = puzzle_string.gsub(/\D/, '').split('').map(&:to_i)
  end

  def self.validate(puzzle_string)
   new(puzzle_string).validate
  
  end

  def rows
    @board.each_slice(9).to_a
  end

  def cols
    rows.transpose
  end

  #create some method for subgroups
      # using rows and creating arrays of 3? (using each or each_slice)
      # will it return one huge array with nested arrays of 3 values?
        # if yes, then i need to use .flatten method to make it one level array
      # then do something with it so I can use it to check for valid numbers and dupes

  def validate
    # some type of nested conditional to return string?
    if #board has dupes
      if # board has valid numbers
        "This sudoku is valid."
      else # board has empty values or 0?
        "This sudoku is valid, but incomplete."
      end
    else # board has dupes
    "This sudoku is invalid."
    end
  end
end


# VALID:
# Are the rows filled and numbers valid(#1-9) without dupes? 
# Are the columns filled and numbers valid(#1-9) without dupes?
# Are the sub_groups filled and numbers valid(#1-9) without dupes?

#VALID BUT INCOMPLETE
# If rows, cols, and sub_groups are valid, but not all spaces are filled
# empty and no dupes... still valid? 

#INVALID
# If there are dupes in any of the rows, cols, or sub_groups

# THOUGHT PROCESS
# How will I break up the board?
  # turn string into arrays with ints for rows first, then columns, then do subgroups
# How will i check for valid values (#1-9)? 
    #(use min and max possibly with a conditional? if min >= 1 || max <= 9)
# How will I check for duplicates? 
    #(.uniq? or .member?)
# Create conditional to return a string stating whether the board is valid, valid but incomplete, or invalid.

