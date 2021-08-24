import UIKit

//  연산자 (Operater)

// 할당 연산자(Assignment Operator)

// 값을 초기화 시키거나 변경합니다.
// 상수와 변수 모두에 사용 가능 (return 값 없음!)
let b: Int = 1
var a: Int = 2
a = b // a = 1

// 튜플에도 사용 가능
let (x, y) = (1, 2)
// x = 1, y = 2

//사칙 연산자(Arithmetic Operators)
// 덧셈 (+), 뺄셈 (-), 곱셉 (*), 나눗셈 (/), 나머지(%)

var plus = 2 + 1 // 3
var minus = 2 - 1 // 1
var multip = 2 * 2 // 4
var division = 6 / 3 //2
var modulo = 7 % 2 // 1

// 덧셈 (+) operator는 문자열 결합에도 사용된다.
var lastName = "Hong"
var firstName = "Gildong"

var name = firstName + " " + lastName // Gildong Hong

// 합성 할당 연산자 Compound Assignment Operators
var number = 1
number += 2 // number = number + 2 와 같다.

// 음수 연산자 (Minus Operator)
let minusOne = -1 //-1


// 비교 연산자(Comparison Operators)

/*
같다 (a == b)
같지않다 (a != b)
크다 (a > b)
작다 (a < b)
크거나 같다 (a >= b)
작거나 같다 (a <= b)
 ** 객체 비교 식별 연산자인 '===', '!==' 제공
 
 반환(return) 값 -> boolean
    따라서 if, if else, switch case, etc...에서 사용된다.
*/

1 == 1   // true
1 != 1   // false
2 > 1    // true
2 < 1    // false
1 >= 1   // true
2 <= 1   // false

// Swift에서는 7개 요소 미만의 튜플을 비교할 수 있다.

// 삼항 조건 연산자(Ternary Conditional Operator)
// boolean ? true : false


// Nil 병합 연산자(Nil-Coalescing Operator)

// a ?? b -> 옵셔널 a가 nil 인 경우 b를 반환
// 'a != nil ? a! : b'의 축약형

let defaultColorName = "red"
var userDefinedColorName: String?   // nil

var colorNameToUse = userDefinedColorName ?? defaultColorName  // red

userDefinedColorName = "green" // 옵셔널
colorNameToUse = userDefinedColorName ?? defaultColorName  // 옵셔널에 값이 있기 때문에, userDefinedColorName값이 colorNameToUse에 대입
// Oracle Sql의  NVL 함수 와 비슷하다.


// 범위 연산자(Range Operators)

// Closed Range
// (a..b) 시작과 끝이 있는 연산자 (for-in loop에 자주 사용)
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// Half-Open Range
// (a..<b)의 형태로 a부터 b보다 작을 때 즉, a부터 b-1까지 값을 갖습니다. 배열을 다루는데 유용

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}


// One-Side Ranges
// [a..] [..a]의 형태로 범위의 시작 혹은 끝만 지정해 사용하는 범위 연산자

for name in names[2...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

for name in names[..<2] {
    print(name)
}

// 단방향 범위 연산자는 특정 값을 포함하는지 여부를 확인 사용 가능
let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true

// 논리 연산자(Logical Operators)

/*
 논리 부정 NOT (!a)
 논리 곱 AND (a && b)
 논리 합 OR (a || b)
 */


