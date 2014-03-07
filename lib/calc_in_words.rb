def split_expressions (questions)
  result = []
  split_array = questions.split("? ")
  i = 0
  while i < split_array.length
    split_array[i]
    result << calculate_answers(split_array[i])
    i += 1
  end
result
end

def calculate_answers (single_question)
  expression_array = single_question.split(" ")

  equation_array = []

   operators = {
    "plus" => "+",
    "minus" => "-",
    "divided" => "/",
    "multiplied" => "*",
    "power" => "**", 
    "power?" => "**"
  }

  expression_array.each do |word|
    if operators[word] == "**"
      equation_array.insert(-2, "**") 
    elsif operators[word] != nil
      equation_array << operators[word]       
    else
      number = word.to_f
      if number > 0
        equation_array << number    
      end
    end
  end
 eval equation_array.join
end

p split_expressions("What is 2 plus 3? What is 7 divided by 4?")


 
