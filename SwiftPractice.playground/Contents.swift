//import UIKit
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
    var updatedStr : String
    
       // updatedStr.remove(at : updatedStr.index[])
   return updatedStr
}
print(removeChar("Priya", 2))

//Q.3)Write a Swift program that accept two positive integer values and test whether the larger value is in the range 20..30 inclusive, or return 0 if neither is in that range
func rangeTest(_ first : Int, _ second : Int) -> Int {
    var max = 0
    if first > second {
        max=first
    }
    else {
        max=second
    }
    //var result : Int = 0
    var resVal : Int = 0
    for i in 20...30{
        if max==i{
            resVal=1
        }
    }
    if resVal==0 {
        for i in 20...30{
            if first==i || second==i{
                resVal=2
            }
        
        else {
            resVal=0
        }
    }
    }
    return resVal
}
print(rangeTest(89,12))
