require('rspec')
require('calc_in_words')

describe('calc_in_words') do
  it('will return the sum of two values in a sentence') do
    calc_in_words("What is 5 plus 3?").should(eq(8))
  end

  it('will return the difference between two values in a sentence') do
    calc_in_words("What is 6 minus 2?").should(eq(4))
  end 

  it('will return the product of two values in a sentence') do
    calc_in_words("What is 3 multiplied by 4?").should(eq(12))
  end

  it('will return the quotient of two values in a sentence') do
    calc_in_words("What is 24 divided by 6?").should(eq(4))
  end

  it('will return the correct value of one number raised to another in a sentence') do
    calc_in_words("What is 4 to the 3rd power?").should(eq(64))
  end 

  it('will return the correct value for multiple operations in a single sentence') do
    calc_in_words()

  #it('will return the sum between two values in two sentences')  
end
