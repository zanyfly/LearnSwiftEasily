//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//for in 循环

for index in 1...5{
    print("the \(index) ")
}

/// 用_ 忽略index
let step = 3
var end   = 3
for _ in 1...5{
    end += step
    print("the end is \(end)")
}

/// 遍历字符串
let saying="hello,i am ivan"
for character in saying.characters{
    print("character=\(character)")
}

/// 遍历数组
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

//遍历字典(注意：字典keys无序)
let Students = ["Wang":18,"Zhang":19,"Xu":21]
for (name, age) in Students{
    print("the name=\(name), age=\(age)")
}


//我们最熟悉的遍历
for var i=0;i<5;++i{
    print("the index=\(i)")
}


