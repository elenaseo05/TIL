import UIKit

// 반복문
// for-in, while, repeat-while


for i in 1...4 {
    print(i) // 4회
}

var gugudan : Int = 2
var i : Int = 0

for i in 1 ... 9 {
    print("\(gugudan) X i = \(gugudan * i)")
}

//2 X i = 2
//2 X i = 4
//.
//.
//.
//2 X i = 18

let array = [1,2,3,4,5]

for arrayNum in array {
    print("arrayNum : \(arrayNum)") //array 의 길이만큼 실행
}


/*
 while 조건식 {
    //실행할 구문
 }
 */

var number = 5

while number < 10 {
   number += 1
}

/*
 repeat {
    //실행할 구문
 } while 조건식
 */

var x = 6

repeat {
    x+=2
} while x < 5

print(x)
