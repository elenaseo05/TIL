import UIKit


/*
 Property
 
 저장 프로퍼티
 -> 값을 저장하고 있는 프로퍼티
        -> 클래스와 구조체 사용가능
 
 연산 프로퍼티
 -> 값을 저장하고 있지 않고 계산한 값을 반환해주는 프로퍼티
    -> 클래스, 구조체, 열 거형 모두 사용가능
   
 */


struct Dog {
    var name: String
    let gerder: String
}

var dog = Dog(name: "elena", gerder: "W")
print(dog)

dog.name = "anele"
//dog.gerder = "M" // error

// 상수로 선언된 구조체는 내부 프로퍼티도 상수가 되기 때문에 변경 할 수 없다.

// Property 는 Swift_Study repository에서 더 자세히 잘펴보도록 한다. 
