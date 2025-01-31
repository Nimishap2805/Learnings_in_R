# Define calculator functions for different operations
add <- function(a, b) {
  return(a + b)
}

subtract <- function(a, b) {
  return(a - b)
}

multiply <- function(a, b) {
  return(a * b)
}

divide <- function(a, b) {
  if (b == 0) {
    return("Oops! You can't divide by zero.")
  } else {
    return(a / b)
  }
}

power <- function(a, b) {
  return(a^b)
}

square_root <- function(a) {
  if (a < 0) {
    return("Oh no! You can't calculate the square root of a negative number.")
  } else {
    return(sqrt(a))
  }
}

# Function to display the menu and get user input
display_menu <- function() {
  cat("\n--- Welcome to the Calculator! ---\n")
  cat("What would you like to do today?\n")
  cat("1. Add\n")
  cat("2. Subtract\n")
  cat("3. Multiply\n")
  cat("4. Divide\n")
  cat("5. Power\n")
  cat("6. Square Root\n")
  cat("7. Exit (I’ll miss you!)\n")
  cat("Please enter a number between 1 and 7 to choose an operation: ")
}

# Main calculator function
calculator <- function() {
  repeat {
    display_menu()
    
    choice <- as.integer(readline())
    
    if (choice == 7) {
      cat("Goodbye! Hope to see you again soon.\n")
      break
    }
    
    # If user chooses Square Root (only one number required)
    if (choice == 6) {
      a <- as.numeric(readline("Enter a number for square root calculation: "))
      result <- square_root(a)
      cat("Result: ", result, "\n")
    } else {
      a <- as.numeric(readline("Great! First, enter the first number: "))
      b <- as.numeric(readline("Now, enter the second number: "))
      
      if (choice == 1) {
        result <- add(a, b)
        cat("Here's your result: ", result, "\n")
      } else if (choice == 2) {
        result <- subtract(a, b)
        cat("Here's your result: ", result, "\n")
      } else if (choice == 3) {
        result <- multiply(a, b)
        cat("Here’s your result: ", result, "\n")
      } else if (choice == 4) {
        result <- divide(a, b)
        cat("Here’s your result: ", result, "\n")
      } else if (choice == 5) {
        result <- power(a, b)
        cat("Here’s your result: ", result, "\n")
      } else {
        cat("Oops! That’s not a valid choice. Please pick a number between 1 and 7.\n")
      }
    }
  }
}

# Start the calculator
calculator()
