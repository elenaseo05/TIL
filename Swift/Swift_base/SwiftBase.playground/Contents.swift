import UIKit
// playground
// var greeting = "Hello, playground"

// 상수
// 변하지 않는 값
let noChange : Int = 10

// 변수
// 변하는 값
var change : Int = 5
change = 15


// Bool
var someBool: Bool = true
someBool = false
// someBool = 0 // 컴파일 오류발생
// someBool = 1 // 컴파일 오류발생

// Int
var someInt: Int = -100
// someInt = 100.1 // 컴파일 오류발생

// UInt
var someUInt: UInt = 100
// someUInt = -100 // 컴파일 오류발생
// someUInt = someInt // 컴파일 오류발생

// Float
var someFloat: Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
someDouble = 3
// someDouble = someFloat // 컴파일 오류발생

// Character
var someCharacter: Character = "🇰🇷"
someCharacter = "가"
print(someCharacter)

// String
var someString: String = "하하하 😄 "
someString = someString + "웃으면 복이와요"
print(someString)

// someString = someCharacter // 컴파일 오류발생

someString = """
겹따옴표 세 개인 줄(첫줄, 끝줄)에서
줄 바꿈을 하지 않으면 오류가 발생.
"""

/*
someString = """오류발생
오류발생"""
*/





