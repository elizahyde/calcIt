def calcIt
  
  calculateAgain = "y"
  while calculateAgain == "y"

    puts "Type 'basic' for basic calculations and 'advanced' for advanced calculations"
    calcType = gets.chomp.downcase
      if calcType == "basic"
        puts "Would you like to Add, Subtract, Multiply, or Divide?"
        basicFunction = gets.chomp.capitalize
        puts "What is your first number?"
        firstNumber = gets.chomp.to_i
        puts "What is your second number?"
        secondNumber = gets.chomp.to_i
          if basicFunction == "Add"
            puts firstNumber + secondNumber
          end
          if basicFunction == "Subtract"
            puts firstNumber - secondNumber
          end
          if basicFunction == "Multiply"
            puts firstNumber * secondNumber
          end
          if basicFunction == "Divide"
            puts firstNumber / secondNumber
          end 
          
      end
      if calcType == "advanced"
        puts "Would you like to work with Exponents or SquareRoots?"
        advancedFunction = gets.chomp.downcase
          if advancedFunction == "exponents"
            puts "What is your base number?"
            baseNumber = gets.chomp.to_i
            puts "What is your power number?"
            powerNumber = gets.chomp.to_i
            puts baseNumber**powerNumber
          end
          if advancedFunction == "squareroots"
            puts "What is your number?"
            squareNumber = gets.chomp.to_i
            puts Math.sqrt(squareNumber)
          end
        end
    puts "Another calculation? (y/n)"
    calculateAgain = gets.chomp!
  end
end

calcIt
