def calc_in_words(expression)
  expression_array = expression[0..-2].split(" ")

  result_operators = []

  result_numbers = []

   operators = {
    "plus" => "+",
    "minus" => "-",
    "divided" => "/",
    "multiplied" => "*",
    "power" => "**"
  }

  expression_array.each do |word|
    operators.each do |operator, symbol|
      if word == operator
        # if word == "power"
          
        # else
        result_numbers.push(symbol) 
        
      else 
        number = word.to_i
        if number > 0
          result_numbers << number
          break
        end
      end
    end
  end

  # operators.each do |operator, symbol|
  #   if expression_array.include?(operator)
  #     result_operators.push(symbol) 
  #   end
  # end 
  #puts result_numbers
 eval result_numbers.join
end

#   if expression_array.include?("power")
#     expression_array[2].to_i ** expression_array[5].to_i
#   elsif expression_array.include?("multiplied")
#     expression_array[2].to_i * expression_array[5].to_i
#   elsif expression_array.include?("divided")
#     expression_array[2].to_i / expression_array[5].to_i
#   elsif expression_array.include?("plus")
#     expression_array[2].to_i + expression_array[4].to_i
#   else expression_array.include?("minus")
#     expression_array[2].to_i - expression_array[4].to_i  
#   end
# end  

puts calc_in_words("What is 2 plus 8 multiplied by 3 to the 2nd power?")


 
