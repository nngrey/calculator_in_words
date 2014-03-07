def split_expressions (questions)
  final_results = []

  slice_here = questions.index("? ")
  if slice_here != nil
    first_expression = questions.slice(0..slice_here)
    calculate_answers(first_expression)
    final_results << calculate_answers(first_expression)
    remaining_questions = questions.slice(slice_here + 2..-1)
    split_expressions(remaining_questions)
  else
    final_results << calculate_answers(questions)
  end
  
   final_results
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


 
