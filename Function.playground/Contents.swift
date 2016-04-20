//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//函数类型  (参数类型1，参数类型2，...)->返回值类型
//没有返回值 (参数类型1，参数类型2，...)

/**
 函数
 
 - parameter name: 参数1
 - parameter time: 参数2
 
 - returns: 返回值
 */
func sayHi(name:String,time:String)->String{
    let words = name + " say hi in "+time
    return words
}

print(sayHi("Tom", time: "morning"))

//多个返回值可以用元组tuple
func introduceTom()->(name:String, age:Int, school:String){
    
    return ("tom", 18, "Qinghua")
    
}

let tom = introduceTom()
print("tom's age = \(tom.age)")


//在函数中使用外部参数增加可读性
func addThreeString(string1 s1: String, string2 s2: String, string3 s3: String) -> String {
    return s1  + s2 + s3;
}

addThreeString(string1: "sss", string2: "222", string3: "qqq")


//默认参数的使用
func setInfo(name:String, age:Int, school:String="")->String{
    return name + " "+String(age) + " "+school;
}

setInfo("tom", age: 21)

//inout 表示可以修改参数a的值（想起了c语言的出参）
func swapTwoInts(inout a: Int, inout b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}


var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, b: &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

//函数的返回值是函数

func stepForward(input: Int) -> Int {
    return input + 1
}
func stepBackward(input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    return backwards ? stepBackward : stepForward
}

var tempCount = 10
let tempfun = chooseStepFunction(10>0)
tempfun(tempCount)


//函数内嵌套函数
func chooseStepFunction2(backwards: Bool) -> (Int) -> Int {

    func stepForward2(input: Int) -> Int {
        return input + 1
    }
    
    func stepBackward2(input: Int) -> Int {
        return input - 1
    }
    return backwards ? stepBackward2 : stepForward2
}

var temCount = 9
let tempfun2 = chooseStepFunction2(temCount>0)
tempfun2(temCount)