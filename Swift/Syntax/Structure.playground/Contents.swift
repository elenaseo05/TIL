import UIKit


//    struct 구조체 이름 {
//      프로퍼티 , 메서드
//    }


struct User {
    var nickname: String
    var age: Int
    
    func getInfo() {
        print("\(nickname)은 \(age)세 입니다.")
    }
}



var user = User(nickname: "nameSet", age: 10)

user.getInfo()

user.nickname
user.nickname = "newName!"
user.age = user.age + 10

user.getInfo()

