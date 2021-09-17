import UIKit

// Generics : 컴파일 타임 구체적인 타입이 결정되도록 한다.  <> 을 사용

// String 타입만 갖는다
func StringTypefunc(_ a: inout String, _ b: inout String) {
    // 실행 코드
}
// Double 타입만 갖는다
func DoubleTypefunc(_ a: inout Double, _ b: inout Double) {
    // 실행 코드
}
// 제네릭 타입: 다양한 타입의 값 받을 수 있다.
func GenericsTypefunc<T>(_ a: inout T, _ b: inout T) { // 제네릭 복수 사용가능! <T, U> / 카멜표기 사용!
    // 타입 제약사항
    // <T: 클래스/프로토콜, U: 클래스/프로토콜> : 콜론으로 구분
    // 실행 코드
}


