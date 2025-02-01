# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in Dart: improper exception handling within asynchronous operations using `async` and `await`. The provided code showcases an example where an exception is caught but then re-thrown, allowing for more comprehensive error management.  The solution demonstrates best practices for handling exceptions in this scenario.

## Bug
The `bug.dart` file contains code that fetches data from a remote API. While it includes a `try-catch` block for error handling, it uses `rethrow` to pass the exception up the call stack.  While functional, this can be improved to provide a better user experience and error logging.

## Solution
The `bugSolution.dart` file shows a more robust approach to exception handling.  Instead of simply rethrowing the exception, it includes more specific error handling based on the type of exception and provides more context in the error message.