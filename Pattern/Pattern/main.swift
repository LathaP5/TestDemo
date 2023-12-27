//
//  main.swift
//  Pattern
//
//  Created by latha-16226 on 19/12/22.
//

/*
 
var numberOfRow , rowFill , space , columnFill : Int
var value : Int
print("Enter number of row value")
numberOfRow = Int(readLine()!)!

for rowFill in 1...numberOfRow
{
    value = rowFill
    
    for space in rowFill..<numberOfRow
    {
        print(terminator: "     ")
    }
     
    for columnFill in 1...rowFill
    {
        print( value , terminator: "   ")
        value = value + (numberOfRow - columnFill)
    }
    print()
}

*/

/*
struct InformationOfUser
{
    
    var user  : [String]
    var information : String
    
    func display()
    {
        print("-------- User Information ---------")
        print("Check-In")
        print("Available")
        print("Busy")
        print("Away")
        print("Invisible")
        print("Check-Out")
        print("-----------------------------------")
    }
    
    mutating func getInformation()
    {
        repeat
        {
            print("Enter Information about user")
            information = readLine()!
            if information != " " && information != ""
            {
                user.append(information)
            }
            else
            {
                break
            }
        }
        while(information != " " && information != "")
                
                print("The user information is exit")
                
    }
    func printInformation()
    {
        print("The information about the user is")
        
        for details in user
        {
            print(details)
        }
    }
}

var  user1 = InformationOfUser(user: [], information: "")
user1.display()
user1.getInformation()
user1.printInformation()

 */


//var value : Int
//var count : Int = 1

/*

square[3] = +8
square[6] = +11
square[9] = +9

square[14] = -10
square[22] = -2
square[24] = -8

*/


/*
var moveUp : Int = 0
var moveDown : Int = 0
var diceRoll : Int = 0
print("Rules")
print("Must enter the dice number from 1 to 6")
print("If you want to start the game by press the number 1 other wise try again")
print("Roll the dice")
value = Int(readLine()!)!

if( value == 1)
{
    print("Ok Now you are in square 1")
    
    repeat
    {
        print("Roll the dice")
        value = Int(readLine()!)!
        diceRoll = diceRoll + 1
        count = count + value
        print("Current position is = \(count)")
        if count == 3
        {
            count = count + 8
            moveUp = moveUp + 1
            print("Now you are Move up to = \(count)")
        }
        else if count == 6
        {
            count = count + 11
            moveUp = moveUp + 1
            print("Now you are Move up to = \(count)")
        }
        else if count == 9
        {
            count = count + 9
            moveUp = moveUp + 1
            print("Now you are Move up to = \(count)")
        }
        else if count == 14
        {
            count = count - 10
            moveDown = moveDown + 1
            print("Now you are Move down to = \(count)")
        }
        else if count == 22
        {
            count = count - 2
            moveDown = moveDown + 1
            print("Now you are Move up to = \(count)")
        }
        else if count == 24
        {
            count = count - 8
            moveDown = moveDown + 1
            print("Now you are Move up to = \(count)")
        }
        
        if count == 25
        {
            print("You are win")
            print ("You are rolled the dice in \(diceRoll) times")
            print ("You are moved up in \(moveUp) times")
            print ("You are moved down in \(moveDown) times")
            break
        }
        else if count > 25
        {
            count = count - value
        }
    
    }while(value >= 0 && value <= 6)
    
}
else
{
    print("Try again")
}

 */



var name = "nandhini"
print(name.count)




















