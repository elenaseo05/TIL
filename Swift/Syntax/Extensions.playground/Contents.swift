import UIKit


// 익스텐션 (확장)
//      새로운 기능을 추가하는 개념
//      값을 저장하는 것이 아니라 기능을 추가하는 것이다. 

//extension 타입 {
    // 기능 추가
//}

// 익스텐션 : 클래스, 구조체, 열거형, 프로토콜 타입에 기능 추가


// 계산된 프로퍼티 : 계산된 인스턴스 프로퍼티와 타입 프로퍼티 추가 가능
extension Int {
    var add: Int{return self + 100}
    var sub: Int{return self - 10}
}

let addition = 3.add

print("extension add : \(addition)")

let subtraction = 100.sub

print("extension sub : \(subtraction)")


//    익스텐션의 인스턴스 메소드는 인스턴스 자신(self)를 변경할 수 있다
//    구조체와 열거형 메소드 중 자기 자신을 변경하는 인스턴스 메소드는 반드시 mutating 으로 선언

extension Int {
    mutating func square() {
        self = self * self
        //   =   3 * 3
    }
}

var someInt = 3

someInt.square()
        //   =   3 * 3


