import UIKit


//    class 클래스 이름 {
//      프로퍼티 , 메서드
//    }

class Dog {
    var name: String = ""
    var age: Int = 0
    
    func introduce() {
        print("name : \(name) age : \(age)")
    }
}


var dog = Dog()

dog.name = "coco"
dog.age = 2

dog.name
dog.age

dog.introduce()

