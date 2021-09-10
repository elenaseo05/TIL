import UIKit

// 함수

// func 함수명 (파라미터이름 : 데이터 타입 ) -> 반환타입 {
//  return 반환 값
// }

func sum(num1: Int, num2 : Int) -> Int {
    return num1 + num2
}

sum(num1: 10, num2: 5)
// 15

func hi () -> String {
    return "hello"
}

hi()

//반환값이 없을 때에는 리턴 값을 명시 하지 않아도 되고, void 로 명시 해주어도 된다

/*
func noReturn() {
    print("함수 실행")
}
*/

func noReturn() -> Void {
    print("함수 실행")
}

noReturn()

// 기본 값이 존재하는 함수

func defailtParamerter (can : String, cant : String = "cannnnn't") {
    print("what, \(can)! what \(cant)")
}

// 기본값을 제외하고 인자를 전달 할 수 있다.
defailtParamerter(can: "cannnnnn")

// 모든 인자를 전달 할 수 있다.
defailtParamerter(can: "CANNNNNN", cant: "ALSO CANNNNNNN")

func sendMessage(from sender : String, to receiver : String ) -> String {
    // send Message
    // CODE 작성
    return "success"
}

// 코드의 가속성이 높아짐 -> 클린코드!
sendMessage(from: "ME", to: "YOU")

// 전달인자 레이블을 사용하지 않을 때 '_'를 사용하면 된다.
func sendMessage(_ sender : String ) -> String {
    // send Message
    // CODE 작성
    return "success"
}

sendMessage("_를 사용하면 레이블 사용 X")

// 가변 매개변수
// 배열로 넘겨 받아 진다.
func sendMessage(from sender : String, to receivers : String... ) -> String {

    return "success"
}
