def calc_in_words(expression)
  expression_array = expression[0..-2].split(" ")

#puts expression_array
 
  if expression_array.include?("plus")
    expression_array[2].to_i + expression_array[4].to_i
  elsif expression_array.include?("minus")
    expression_array[2].to_i - expression_array[4].to_i
  elsif expression_array.include?("multiplied")
    expression_array[2].to_i * expression_array[5].to_i
  elsif expression_array.include?("divided")
    expression_array[2].to_i / expression_array[5].to_i
  else expression_array.include?("power")
    expression_array[2].to_i ** expression_array[5].to_i
  end
end  

puts calc_in_words("What is 4 to the 3rd power?")


  # operators = {
  #   "plus" => "+",
  #   "minus" => "-",
  #   "divided" => "/",
  #   "multiplied" => "*"
  # }
