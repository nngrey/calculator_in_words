require('rspec')
require('calc_in_words')

describe('split_expressions') do
  it('will return the sum of two values in a sentence') do
    split_expressions("What is 5 plus 3?").should(eq([8.0]))
  end

  it('will return the difference between two values in a sentence') do
    split_expressions("What is 6 minus 2?").should(eq([4.0]))
  end 

  it('will return the product of two values in a sentence') do
    split_expressions("What is 3 multiplied by 4?").should(eq([12.0]))
  end

  it('will return the quotient of two values in a sentence') do
    split_expressions("What is 7 divided by 4?").should(eq([1.75]))
  end

  it('will return the correct value of one number raised to another in a sentence') do
    split_expressions("What is 4 to the 3rd power?").should(eq([64.0]))
  end 

  it('will return the correct value for multiple operations in a single sentence') do
    split_expressions("What is 2 plus 8 multiplied by 3 to the 2nd power?").should(eq([74.0]))
  end

  it('will return the answers for multiple questions') do
    split_expressions("What is 2 plus 3? What is 7 divided by 4?").should(eq([[5.0][1.75]]))
  end
end
