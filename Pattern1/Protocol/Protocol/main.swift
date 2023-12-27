//
//  main.swift
//  Protocol
//
//  Created by latha-16226 on 26/12/22.
//

import Foundation


//protocol

/*
protocol StudentData
{
    var studentName : String {get}
    var regNumber : Int {get}
    var marks : [Int] {get}
    
    init(studentName : String , regNumber : Int , marks : [Int] )
}

protocol Result
{
    func calculateTotal()
    func findAverage()
    func displayResult()
}

class College: StudentData , Result
{
    var studentName: String
    
    var regNumber: Int
    
    var marks: [Int]
    
    var total : Int = 0
    var average : Double = 0
    
    required init(studentName: String, regNumber: Int, marks: [Int])
    {
        self.studentName = studentName
        self.regNumber = regNumber
        self.marks = marks
    }
    
    func calculateTotal()
    {
        
        for subjectMark in marks
        {
            total += subjectMark
        }
       
   
    }
    
    func findAverage()
    {
        average = (Double)(total) / (Double)(marks.count)
        
    }

    func displayResult()
    {
        print("Student name = \(studentName)")
        print("Reg number = \(regNumber)")
        print("Total is = \(total)")
        print("Average is = \(average)")
    }
}



print("Enter student name , reg number ,number of subject")
var studentName = readLine()!
var regNumber = Int(readLine()!)!

var numberOfSubject = Int(readLine()!)!

var marks : [Int] = []

print("Enter marks")

for _ in 0..<numberOfSubject
{
    marks.append(Int(readLine()!)!)
}

let student1 = College(studentName: studentName, regNumber: regNumber, marks: marks)
student1.calculateTotal()
student1.findAverage()
student1.displayResult()

 */

//adopting a protocol using a synthesized implementation


struct Person : Equatable
{
    var name : String
    var proof : String
    var amount : Int
    var loan : String
   
   /* static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.proof != rhs.proof && lhs.loan == rhs.loan
    }
    */
   
    
}


let loan = [
    Person(name: "varun", proof: "aadhar card", amount: 40000 , loan: "education loan") ,
    Person(name: "varun", proof: "ration card", amount: 30000 , loan: "education loan") ,
    Person(name: "varun", proof: "aadhar card", amount: 40000 , loan: "education loan")
]

let loan1 = Person(name: "varun", proof: "aadhar card", amount: 40000 , loan: "education loan")
let loan2 = Person(name: "varun", proof: "ration card", amount: 30000 , loan: "education loan")
let loan3 = Person(name: "varun", proof: "aadhar card", amount: 40000 , loan: "education loan")

/*
if loan1 == loan3
{
    print("Already loan approved for you so now you are not eligible")
}
else
{
    print("You are eligible for this loan")
}
*/
 
if loan[0] == loan[2]
{
    print("You are doing some fradu work so you are not eligible")
}
else
{
    print("You are eligible for this loan")
}




if loan2 == loan3
{
    print("You are doing some fradu work so you are not eligible")
}
else
{
    print("You are eligible for this loan")
}



struct DateOfBirth : Comparable
{
    var year : Int
    var month : Int
    var date : Int
    
    static func < (lhs : DateOfBirth , rhs : DateOfBirth) -> Bool
    {
        if lhs.year != rhs.year
        {
            return lhs.year < rhs.year
        }
        else if lhs.month != rhs.month
        {
            return lhs.month < rhs.month
        }
        else
        {
            return lhs.date <= rhs.date
        }
    }
    
}

let shalini = DateOfBirth(year: 2010, month: 7, date: 5)

let mouli = DateOfBirth(year: 2010, month: 5, date: 5)


if shalini < mouli
{
    print("shalini is elder than mouli")
}
else
{
    print("mouli is elder than shalini")
}









