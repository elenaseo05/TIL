import UIKit


//    init(매개변수: 타입 ...)  {
//      프로퍼티 초기화
//    }

/*
 생성자, 같은 이름의 생성자(오버로딩)하여 사용 할 수 있다
 this와 self는 같은 역활을 한다.
 */

/*
 Deinitialization
    - 인자 없음
    - 할당 해제 전 자동 호툴
     deinit {
         // 할당해제
     }
 
 */

class User {
    var nickname: String
    var age: Int
    
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    
    init(age:Int) {
        self.nickname = "abc"
        self.age = age
    }
    
    deinit {
        print("deinit 호출 ")
    }
    
}


var user = User(nickname: "nameSet", age: 21)
user.nickname
user.age


var user2 = User(age: 27)
user2.nickname
user2.age


var user3: User? = User(age: 20)
user3 = nil
