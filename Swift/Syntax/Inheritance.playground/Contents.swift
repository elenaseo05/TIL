import UIKit

// Inheritance

//class Sub:Super {
//    override func 부모클래스의 재정의 할 함수() {
//        재정의 내용
//    }
//}


class Sup {
    func supFunc() {
        print("sup class supFunc")
    }
}

class Sub:Sup {
    override func supFunc() {
        print("sub class override func")
    }
}

