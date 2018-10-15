
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
//print(Planet(rawValue : 3))

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


// class with structures, methods, properties, inheritance

struct complexProp{
    var nutrition : String
    var respiration : String
    var movement : String
    mutating func growth () -> String {
        return "growing constantly"
    }
}

class Organism {
    var hand : Int?
    var leg: Int?
    var name : String
    //var propComplex = complexProp(nutrition: "", respiration: <#T##String#>, movement: <#T##String#>) {
     //   nutrition = "Nutrients"
   // }
    var description : String {
        return "The organism's name is \(name) with \(hand!) hands and \(leg!) legs"
    }
    init (hand : Int?, leg : Int?, name : String){
        if hand != nil{
        self.hand = hand!
    }
        if leg != nil { self.leg = leg! }
        self.name = name
    }
    func walk(){
        print("Walks")
    }
    func eat(){
        print("eats")
    }
    func sleep(){
        print("sleeps")
    }
}

let human = Organism(hand: 2, leg: 2, name: "Priya")
print(human.description)
human.sleep()

class Plant : Organism {
    //var status : String
    init(nam: String){
        super.init(hand: nil, leg: nil, name: nam)
       // self.status = status
    }
    override func walk() {
        print("Doesn't walk")
    }
}
let tulsi = Plant(nam: "Tulsi")
tulsi.walk()


// tuple constancy
let (x1, y1) = (1, 2)
 //(let x1, var y1) = (3,4)
print("\(x1)\(y1)")

// remainder operator
9 % -4
-9 % -4

// comparison operators
(1, "zebra") < (2, "apple")
(3, "apple") < (3, "bird")
(4, "dog") == (4, "dog")

// range operators
//for i in 1>..5
for i in 1..<5{
    print(i)
}
var names = ["Priya","Riya","Iya","Ya"]
for name in names[...2] {
    print(name)
}
for i in 5...8 {
    print(i)
}

// special characters in Strings
let threeDoubleQuotationMarks = """
Escaping the first quotation mark "\""
Escaping all three quotation marks ""\"
"""
print(threeDoubleQuotationMarks)

//adding arrays using +
var array1 = Array(repeating: 2, count: 2)
var array2 = Array(repeating: true, count: 4)
var array4 = Array(repeating: 4.0, count: 2)
//var array3 = array1 + array2
//var array5 = array1 + array4


//switch case-exhautiveness :
let res="Yes"
switch res {
    case "Yes" : print("Yes")
    default  : print("Default")
}
let result = true
switch result {
case true : print("Yes")
case false : print("No")
//default  : print("Default")
}


//Uniquesness of argument label
func labelCheck(from par1: String,from par2 : String){
    print(par1+par2)
}
labelCheck(from : "Priya", from :" Srivastava")

