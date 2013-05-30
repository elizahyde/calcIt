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
          elsif basicFunction == "Subtract"
            puts firstNumber - secondNumber
          elsif basicFunction == "Multiply"
            puts firstNumber * secondNumber
          elsif basicFunction == "Divide"
            puts firstNumber / secondNumber
          else
            puts "Invalid choice. Try again? (y/n)"
            calculateAgain = gets.chomp!
          end 
      elsif calcType == "advanced"
        puts "Would you like to work with Exponents or SquareRoots?"
        advancedFunction = gets.chomp.downcase
          if advancedFunction == "exponents"
            puts "What is your base number?"
            baseNumber = gets.chomp.to_i
            puts "What is your power number?"
            powerNumber = gets.chomp.to_i
            puts baseNumber**powerNumber
          elsif advancedFunction == "squareroots"
            puts "What is your number?"
            squareNumber = gets.chomp.to_i
            puts Math.sqrt(squareNumber)
          else
            puts "Invalid choice. Try again?? (y/n)"
            calculateAgain = gets.chomp!
          end
      else
        puts "Invalid choice. Try again? (y/n)"
        calculateAgain = gets.chomp!
      end
    puts "Another calculation? (y/n)"
    calculateAgain = gets.chomp!
  end
end

calcIt
