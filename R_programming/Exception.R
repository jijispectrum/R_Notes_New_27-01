divide_numbers <- function(x, y) {
  if (y == 0) {
    stop("Cannot divide by zero.")
  }
  return(x / y)
}

result <- tryCatch(
  {
    # Try to execute the code that might throw an error
    divide_numbers(10, 2)
  },
  error = function(err) {
    # Handle the error
    cat("Error occurred:", conditionMessage(err), "\n")
    return(NA)  # Return a default value or take other actions
  },
  warning = function(warn) {
    # Handle warnings
    cat("Warning:", conditionMessage(warn), "\n")
    return(NA)  # Return a default value or take other actions
  },
  finally = {
    # Code that will be executed whether an error occurs or not
    cat("Execution complete.\n")
  }
)

# Print the result
print(result)



###2

# Function to calculate square root with exception handling
calculate_square_root <- function(x) {
  tryCatch(
    {
      # Attempt to calculate the square root
      if (x < 0) {
        stop("Input must be a non-negative number.")
      }
      sqrt_result <- sqrt(x)
      return(sqrt_result)
    },
    error = function(err) {
      # Handle the error if the input is not a non-negative number
      cat("Error:", conditionMessage(err), "\n")
      return(NULL)  # Return a default value or take other actions
    },
    warning = function(warn) {
      # Handle warnings if needed
      cat("Warning:", conditionMessage(warn), "\n")
      return(NULL)  # Return a default value or take other actions
    },
    finally = {
      # Code that will be executed regardless of whether an error occurs or not
      cat("Square root calculation attempt complete.\n")
    }
  )
}

# Example usage
input <- -4
result <- calculate_square_root(input)

# Print the result
print(result)

