//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

//This is the number used to keep track of the year
var year = 0

//Prompt for input
print("Enter a year from 0 to 10000")

//Loop to find the next year with unique digits
while 1 == 1 {
    // Take the user input
    var rawInput = readLine()

    //Check for nil
    guard let givenInput = rawInput else {
        // Is nil, restart
        print("Enter something")
        continue
    }

    //Check for integers
    guard let givenInteger = Int(givenInput) else {
        //Not an integer, restart
        print("Enter a number(e.g. 50)")
        continue
        
    }

    //Check for number in range
    if givenInteger < 0 || givenInteger > 10000 {
        //Not in range, restart
        print("Enter a number from 0 to 10000")
        continue
    }
    
    //Input passed
    year = givenInteger
    break
    
}

//Check every year after inputed year
checkNextYear: while 1==1 {
    //Check the next year
    year += 1
    
    //Create the dictionary that keeps track of numbers
    var frequency : [Character:Int] = [:]
    
    // Make the current year into a String
    var yearAsString = String(year)
    
    // Iterate over each Character in the String
    eachCharacter: for number in yearAsString {
        
        // Keep track of how often a number occurs in a year
        if frequency[number] == nil {
            
            // This character didn't yet exist as a key in the dictionary,
            //so create a key with this character and set the value to 1
            frequency[number] = 1
            
        } else {
            
            //We know that the number in the year has been repeated
            //Therefore the year has repeated numbers, repeat
            continue checkNextYear
            
        }
        
    }
    
    //The year with unique digits has been found,
    //so break the loop and continue to the next step
    break
    
}


//Print the answer
print("The next year with unique digits is \(year)")




