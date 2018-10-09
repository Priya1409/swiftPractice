
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
