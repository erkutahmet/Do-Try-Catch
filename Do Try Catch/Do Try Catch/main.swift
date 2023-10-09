//
//  main.swift
//  Do Try Catch
//
//  Created by Ahmet Erkut on 9.10.2023.
//

import Foundation

/*
    Certainly! In Swift, a try-catch block is used to handle errors that can occur during the execution of code. Errors in Swift are represented by types that conform to the Error protocol. When you have code that may potentially throw an error, you use try to execute that code, and if an error is thrown, you can catch and handle it using catch.
*/
//MARK: Do Try Catch

enum CustomError: Error {
    case divideByZero
}

func divide(_ a: Int, by b: Int) throws -> Int {
    if b == 0 {
        throw CustomError.divideByZero
    }
    return a / b
}

do {
    let result = try divide(10, by: 0)
    print("Result is: \(result)")
} catch CustomError.divideByZero {
    print("An error occurred: Any number can't divide by zero")
} catch {
    print("An error occurred: \(error)")
}

///-> We define a custom error type CustomError that conforms to the Error protocol.
///-> The divide function can throw an error if the divisor (b) is zero.
///-> Inside the do block, we use the try keyword when calling the divide function. If an error is thrown, execution jumps to the appropriate catch block.
///-> We have two catch blocks. The first one handles the specific case of CustomError.someError, while the second one is a catch-all block that handles any other errors.
///-> If no error is thrown, the code inside the do block continues to execute, and the result is printed.
///You can have multiple try statements within a single do block and handle different errors in separate catch blocks. This allows you to provide specific error handling logic for different error types in your Swift code.
