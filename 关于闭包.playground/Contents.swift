//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//排序
//1、定义数组
let names = ["A", "B", "C", "D", "E"]

//2、排序规则，大的在前面
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
//3.执行数组排序
var reversed = names.sort(backwards)

/*闭包标准格式
{ (parameters) -> return type in
        statements
}*/

//用闭包 in是关键字

reversed  = names.sort({ (s1:String, s2:String) -> Bool in
    return s1>s2;
})


//更简洁的写法，上下文可以推断出闭包的参数和返回值类型
reversed = names.sort({ s1, s2 in return s1 > s2 } )

//单行表达式可以隐藏return
reversed = names.sort( { s1, s2 in s1 > s2 } )

//参数名简写，太牛逼了
reversed = names.sort( { $0 > $1 } )

//运算符，吊炸天
reversed = names.sort(>)



//Trailing 
//闭包是一个书写在函数括号之外(之后)的闭包表达式，函数支持将其作为最后一个参数调用。
let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

//map后面直接跟的闭包{...}，没有（）
//返回新的数组
let newNumsArr = numbers.map {
    (var number) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}


//捕捉
//注意要点：incrementor这个内嵌函数对amount就是简单的拷贝，因为他没有对其做任何修改。但是runningTotal修改了，就是对他的引用，引用大家都知道，直接修改了runningTotal在内存中的值。这样就不会再函数结束的时候消失了。（Swift 会决定捕获引用还是拷贝值。）
func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}


let incrementByTen = makeIncrementor(forIncrement: 10)
incrementByTen()
incrementByTen()


let incrementByEight = makeIncrementor(forIncrement: 8)
incrementByEight()

