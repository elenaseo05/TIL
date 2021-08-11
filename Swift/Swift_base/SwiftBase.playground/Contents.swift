import UIKit
// playground
// var greeting = "Hello, playground"

// 주석 X-code command + /

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
// 0, 1 사용 불가

// Int
var someInt: Int = -100
// 실수 X

// UInt
var someUInt: UInt = 100
// 음수 X

// Float
var someFloat: Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
someDouble = 3
// Float 대입 X

// Character
var someCharacter: Character = "글"
someCharacter = "자"
print(someCharacter)

// String
var someString: String = "ios는"
someString = someString + "Swift"
print(someString)
someString += "로 코딩"
print(someString)


someString = """
첫 줄과 끝 줄에 줄바꿈(개행)이 필수
겹따옴표 세개!, 엔터로 개행이 이뤄진다.
'' "" 사용이 가능하기 때문에 유용하다.
"""
// 개행 가능
/*
someString = """오류발생
오류발생"""
*/

print(someString)



