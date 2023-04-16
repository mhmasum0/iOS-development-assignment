import UIKit
/*
 1. Write a function that takes a String as parameter and returns nothing. The function calculates and prints the frequency of each character in the given string, that means, how many times each character came up in the given string.

 Example input:
 let string = "Hello"
 Example Output:
 H = 1
 e = 1
 l = 2
 o = 1
 
 */

func freequencyOfString(_ string: String){
    
    var characterFrequency: [Character: Int ] = [:]
    
    if string.isEmpty{
        print("String is empty")
    } else {
        
        for character in string {
            let frequency = characterFrequency[character] ?? 0
            characterFrequency[character] =  frequency + 1
        }
        
        for (character, frequency) in characterFrequency {
            print("\(character) = \(frequency)")
        }
    }
}
    
let string = "Hello"
freequencyOfString(string)
let string2 = ""
freequencyOfString(string2)

/*
 2. Write a function that returns a closure, which transforms its input by adding a particular suffix at the end.
 Example:
 let add_ly = add_suffix("ly")

 add_ly("hopeless") --> "hopelessly"
 add_ly("total") --> "totally"

 let add_less = add_suffix("less")

 add_less("fear") ➞ "fearless"
 add_less("ruth") ➞ "ruthless"
 */
