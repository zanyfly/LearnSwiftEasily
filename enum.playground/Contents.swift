//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//没有默认初始值
enum CompassPoint {
    case North
    case South
    case East
    case West
}

//单行写法
enum Names{case Tom, Peter, Lucy, Lincoln, Judy}


//使用起来比较方便
var header = CompassPoint.North
//修改值
header = .East;


switch header{
case .East:
    print("the east")
case .South:
    print("the South")
    
case .North:
    print("the North")
case .West:
    print("the West")

}


