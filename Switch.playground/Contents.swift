//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

 /// swift大大的强化了

var i = 0

//1、swift中不需要显示增加break，系统默认在case后面增加break
switch i {
case 0:
    print("the var is \(i)")
case 1:
    print("the var is \(i)")
default:
    print("the var is \(i)")
}


//2、同时执行两条case

switch i {
case 0,1:
    print("the \(i) not bigger than 1")
default:
    print("the var is \(i)")
}

//3、支持浮点数、bool
let vector = 1.5
switch vector {
case 1.5:
    print("the vector is \(vector)")
default:
    print("the vector is \(vector)")
}

//还支持字符串，确实牛逼
let name = "Tom"
switch name {
case "Tom":
    print("the name is \(name)")
default:
    "default"
}

//4、支持区间
var rangeIndex = 12
switch rangeIndex {
case 0 ... 10:
    "0~10"
case 11 ... 20:
    "11~20" //被输出
default:
    "default"
}

//5、支持元组
//let request = (200,"success")
let request = (-1,"failed")

switch request {
case (200, "success"):
    "success"   //被输出
case (_, "failed"):
    "failed"
default:
    "default"
}

 