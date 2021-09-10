import UIKit

// conditional (조건문)  -> 주어진 조건에 따라 다른게 작동 하도록 하는 구문
// if, / if, else / if, else if, else / switch

var money : UInt = 100
// if 문
if money < 100 {
    print("save money!")
}

// if else
if money < 100 {
    print("save money!")
} else {
    print("ohhhhh good")
}

// if else if
if money < 100 {
    print("save money!")
} else if money < 1000 {
    print("not bad")
} else {
    print("ohhhhh good")
}


/*
 Switch 비교대상 {
     case 패턴1:
     // 패턴 1이 일치 할때 실행되는 구문
     case 패턴2:
     .
     .
     .
     default:
     // 어떤 패턴과도 일치 하지 않을 때 실행되는 구문
     
 */

let name = "홍길동"

switch name {
    case "홍길동" :
        print("아버지를 아버지라고 부르지 못하고")
    case "김길동" :
        print("아버지!!")
    default:
        print("어머니")
}

var temperature = 25
// 쉼표를 이용하여 다중 값을 하나의 케이스에 할당하여 조건을 걸수 있다.
// ... 을 사용하여 연속적인 값을 사용 할 수 있다.

switch temperature {
case -20...10:
    print("겨울!")
case 11...25:
    print("좋은 날씨!")
case 26...35:
    print("더운날씨")
default:
    print("온도 무슨일....")
}

// 튜플 값 사용 가능! (와일드 카드 _ 사용 할 수 있다.) 

