import UIKit

// 옵셔널
//

// var 변수명 : 타입? = nil

var name: String?

var optional: String? = "val"

//var optionalCopy: String = optional
// 오류발생 : 옵셔널타입은 실행 되기 전까지 값이 있는지 없는지 알 수 없으며
// 따라서 컴파일러가 안정성을 위해 옵셔널로 선언된 변수를 대입할 수 없다.


// 그렇다면 옵셔널의 값은 어떻게 사용할 수 있는가?

// -> 옵셔널 바인딩

// 옵셔널 해제 방법

// 명시적 해제    | 묵시적 해제
// ---------------------------------
// 강제 해제     | 컴파일러에 의한 자동 해제
// 비강제 해제    | 옵셔널의 묵시적 해제
// (옵셔널바인딩)  |

var number: Int? = 1
//print(number) // 옵셔널 해제되지 않음
print(number!)  // 강제 해제 -> if를 사용하면 컴파일 오류 방지할 수 있다.

if let result = number {
    // if문에서 실행되면 if에서만 사용할 수 있기 떄문에
    // 값이 사용될 범위에 따라 if 혹은 guard을 사용하면 된\.
    print(result)
} else {
    // 추출되지 않으면 실행될 구문
    print("추출되지 않음") // nil 이면 실행될 구문
}

func test() {
    // guard는 함수가 종료 되더라도 사용 할 수 있다.
    let number: Int? = 5
    guard let result = number else { return }
    print(result)
}

test()

// 비교 연산자를 사용하면 컴파일러가 옵셔널을 자동으로 해제 해준다.

let value: Int? = 6
if value == 6 {
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다.")
}

let string = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1) // optional 묵시적 해제로 인해 연산 가능
