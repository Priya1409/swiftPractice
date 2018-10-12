
//Q.1)Write a Swift program to add “Is” to the front of a given string. However, if the string already begins with “Is”, return the given string

func addIs(_ str : String) -> String{
    var strVal : String
    if str.hasPrefix("Is"){
        return str
    }
    else{
        strVal = "Is" + str
    }
    return strVal
}
print(addIs("Priya"))
print(addIs("IsGirl"))


//Q.2) Write a Swift program to remove a character at specified index of a given non-empty string. The value of the specified index will be in the range 0..str.length()-1 inclusive.

func removeChar(_ str : String, _ indi : Int) -> String {
    var updatedStr = ""
    for (i,character) in str.enumerated() {
        if i != indi {
            updatedStr = updatedStr + String(character)
        }
    }
//    updatedStr.remove(at : updatedStr.index())
   return updatedStr
}
print(removeChar("Priya", 0))

//Q.3)Write a Swift program that accept two positive integer values and test whether the larger value is in the range 20..30 inclusive, or return 0 if neither is in that range

func rangeTest(_ first : Int, _ second : Int) -> Int {
    let max = (first > second) ? first : second
    var resVal : Int = -1
    for i in 20...30{
        if max == i {
            resVal=1
        }
    }
    if resVal == -1 {
        for i in 20...30{
            if first != i || second != i  {
                resVal=0
        }
    }
    }
    return resVal
}
print(rangeTest(6,12))
print(rangeTest(56,34))
print(rangeTest(24,27))

//Q.4) Write a Swift program to create a string made of every other char starting with the first from a given string. So “Python” will return “Pto"

func strBuild(_ str : String) -> String{
    var newString = ""
    var count = 0
    for (_,character) in str.enumerated() {
        //print(count)
        if count%2==0 {
            newString += String(character)
        }
        count=count+1
        //print(count)
    }
    return newString
}
print(strBuild("Python"))


//Q) You have to Traverse a String and print each of its new character in new line using Containers.

func stringTraverse (_ str : String) {
    var arr = [Character]()
    for (_,item) in str.enumerated() {
    arr.append(item)
    }
    for i in arr {
    print(i)
    }
}
stringTraverse("Priya!")

//Q)Write a Swift program to test whether a value presents sequentially three times in an array of integers or not.

func checkOccurence(_ arr : [Int], _ val : Int) -> Bool{
    var count = 0
    var result = false
    for i in arr {
        if i==val {
            count+=1
            continue
        }
        count=0
    }
    if count==3 {
        result=true
    }
    return result
}
print(checkOccurence([1,4,5,5,5,2,5,5,5], 5))


//Q)Write a Swift program to test if there is a 1 in the array with a 3 somewhere later in a given array of integers.

func oneLaterThree(_ arr : [Int]) -> Bool {
   var result = false
    var count = 0
    for item in arr {
        if item==1{
            count=1
            continue
        }
        if item==3 {
            if count==1{
                result=true
            }
        }
    }
    return result
}
print(oneLaterThree([2,3,1,4,2,6,3]))


//Q) enum
enum Planet : Int, CaseIterable  {
    case mercury = 1
    case venus
    case earth
}
print(Planet.mercury.rawValue)
//var instancePlanet = Planet(rawValue : 3)
//print(instancePlanet)
print(Planet(rawValue : 3))

for item in Planet.allCases {
    print(item)
}


// Q (4+6+3)*(34+(4*3))

enum Expression {
    case number(Int)
    indirect case addition (Expression, Expression)
    indirect case multiplication (Expression, Expression)
}

let a=Expression.number(4)
let b=Expression.number(6)
let c=Expression.number(3)
let d=Expression.number(34)
let sum1=Expression.addition(a, b)
let sum2=Expression.addition(sum1, c)
let mul1 = Expression.multiplication(a, c)
let sum3=Expression.addition(d, mul1)
let mul2=Expression.multiplication(sum2, sum3)

func evaluateExpression(_ expr : Expression) -> Int {
    switch expr {
    case let .number(val) : return val
    case let .addition(first, second) : return evaluateExpression(first) + evaluateExpression (second)
    case let .multiplication(first, second) : return evaluateExpression(first) + evaluateExpression(second)
    }
}
print(evaluateExpression(mul2))

// remove at index

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
// Prints "5"

let customerProvider = { customersInLine.remove(at: 0) }
print(customerProvider())
print(customersInLine.count)


// class

class organism {
    var hand : Int
    var leg: Int
    init (hand : Int, leg : Int){
        self.hand = hand
        self.
    }
    func
}
