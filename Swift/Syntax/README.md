# Swift 

## **Data Type**
----

- 상수 와 변수

상수를 선언하는 키워드는 let이다.  
let 이름: 타입 = 값

변수를 선언하는 키워드는 var이다.  
var 이름: 타입 = 값

```swift 
    let 이름: 타입 = 값 //상수 
    var 이름: 타입 = 값 //변수 

    // 값의 타입이 명확할 시 타입 생략 가능
    let 이름 = 값 
    var 이름 = 값 

    let constant: String = "차후에 변경이 불가능 -> let"
    let variable: String = "차후에 변경이 가능 -> var"

    variable = "변수는 차후에 다른 값으로 할당 가능"
    constant = "상수는 차후에 값을 변경 불가 " // 오류

    // 상수 선언 후에 나중에 값을 할당
    // 나중에 할당 할 경우 타입 명시 필수 
    let sum: Int
    let inputA: Int = 100
    let inputB: Int = 200

    // 선언 후 첫 할당
    sum = inputA + inputB

    // 상수 값 변경 불가 
    sum = 1 // 오류

    // 변수 차후 할당 가능
    var age: Int

    age = 10

    age = 20 


```


- 기본 데이터 타입

Swift에는 7가지 기본 데이터 타입 존재

Swift에서 다른 데이터 타입과 자료교환은 암시적으로 불가능

1. Bool

논리 연산자에 0 과 1을 Bool타입에 대입 할 시 cannot assign -> error

```swift 
var someBool: Bool = true
someBool = false
// Bool 타입 0 과 1 사용불가 
someBool = 0 // (X)
someBool = 1 // (X)
```

2. Int

정수 데이터 타입 

```swift 
var someInt: Int = -100
// 실수 대입 불가
someInt = 100.1 // 컴파일 에러 
```

3. UInt

Unsigned Integer, 양의 정수 타입

```swift 
 var someUint: UInt = 100
// 음수 대입시 오류발생
someUInt = -100 // 컴파일 에러 
```

4. FLoat

Float은 부동소수형 32bit 타입
부동소수형 타입에는 정수 타입 대입 가능

```swift 
var someFloat: Float = 3.14  
someFloat = 3 // 가능 
```

5. Double

Double은 64bit 부동소수형 타입  
정수 타입 대입 가능  
Float타입에 값을 Double에 대입할 시 cannot assign -> 오류 발생 

32bit -> 64bit

```swift 
var someDouble: Double = 3.14
// 정수 값 대입 가능
someDouble = 3
```

6. Character

문자를 표현하기 위한 타입

유니코드로 표현할 수 있는 모든 문자 대입 가능

문자열과 동일하게 큰따옴표로 표기
문자 한개만 허용

```swift 
var someCharacter: Character = "가"
someCharacter = "A"
// Character에 문자열 담을 수 없음
someCharacter = "ABCd" // 오류
```

7. String

문자열을 담는 타입

연산자를 통하여 문자열을 더 할 수 있다.  
 '+' 연산자 사용가능  
String에 Character타입 대입 불가

```swift 
var someString: String = "문자열  "
someString = someString + "더하기"
// Character(문자) 타입을 대입 불가
someString = someCharacter // 컴파일 에러
```

- Any, AnyObject, nil

기본 데이터 타입은 아니지만, 기본 데이터 타입 위치에서 특별한 역할을 수행하는 키워드들

1. Any

Swift의 모든 타입을 지칭하는 키워드이다.

```Swift
var someAny: Any = 100
someAny = "어떤 타입이든 수용이 가능하다."
someAny = 123.12
// let someDouble: Double = somAny
```

2. AnyObject

모든 '클래스 타입'을 지칭하는 프로토콜

```swift
class SomeClass {}

var someAnyObject: AnyObject = SomeClass() 

someAnyObject = 123.12 // 오류발생
```

3. nil
없음을 의미하는 키워드 
null, NULL, Null 동일 



컬렉션 타입

    // 빈 Int Array 생성
    var integers: Array<Int> = Array<Int>()
    // 
    integers.append(1)
    integers.append(100)
    //integers.append(101.1) // integer에는 실수를 넣을 수 없음(X)

    integers.contains(100) // 100이라는 값이 포함이 되어있는지?
    integers.contains(99) // 

    // 0번 인덱스에 있는 값을 없애 달라
    integers.remove(at: 0)
    // 마지막 요소를 없애는 것
    integers.removeLast()
    // 모두 없애기 
    integers.removeAll()
    // intgers에 몇개가 들어있는지 확인
    integers.count
Array를 표현할 수 있는 다양한 방법들

    //Array<Double>와 [Double]은 동일한 표현이다.
    // 빈 Double Array 생성
    var double: Array<Double> = [Double]()

    // 빈 String Array 생성
    var strings: [String] = [String]()

    // 빈 Character Array 생성
    // []는 새로운 빈 Array
    var characters: [Character] = []

    // let을 사용하여 Array를 선언하면 불변 Array
    let immutableArray = [1,2,3]
    // let은 변경이 불가능하기 때문에 append 및 remove를 할 수 없다.
Dictionary

    // Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
    var anyDictionary: Dictionary<String, Any> = [String: Any]()
    anyDictionary["someKey"] = "value"
    anyDictionary["anotherKey"] = 100

    anyDictionary // ["someKey": "value", "anotherKey": 100]
    // key에 대한 값을 변경 할 수 있다.
    anyDictionary["someKey"] = "dictionary"
    anyDictionary // ["someKey": "dictionary", "anotherKey": 100]

    // key에 대한 값을 없애고 싶을 때
    anyDictionary.removeValue(forKey: "anotherKey")

    // key에 대한 값을 없애고 싶을 때
    anyDictionary["someKey"] = nil


    let emptyDictionary: [String: String] = [ : ]
    let initalizedDictionary: [String: String] = ["name": "jangilkyu", "gender" : "mail"]
함수 기본

함수 선언

   func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입) -> 반환 타입{
       함수 구현 부

        return 반환 값
   }
반환되는 값이 없는 함수

   func printMyName(name: String) -> Void {
       print(name)
   }

   printMyName(String: "장일규")
반환되는 값이 있는 함수

    func sum(a: Int,b: Int) -> Int {
        return a + b
    }

    sum(a: 3, b: 2)
매개변수와 반환값이 전부 없는 경우

    func hello() -> Void {
        print("hello")
    }

    hello()
함수 고급

매개변수 기본 값
기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋다.

    func greeting(friend: String, me: String = "jangilkyu") {
        print("Hello \(friend)! I'm \(me)")
    }

    // 매개변수 기본값을 가지는 매개변수는 생략이 가능
    greeting(friend: "sujung") // Hello sujung! I'm jangilkyu
전달인자 레이블
전달인자 레이블은 함수를 호출할 때에 매개변수의 역할을 더 명확하게 하거나 함수 사용자의 입장에서 표현하고자 할때 사용

    func greeting(to friend: String, from me: String){
        print("Hello \(friend)! I'm \(me)")
    }

    // 함수 호출 시 전달인자 레이블 사용해야함
    greeting(to: "sujung",from: "ilkyu")
가변 매개변수

매개변수로 전달될 값들에 갯수가 명확치 않을 시 가변 매개변수를 사용할 수 있다.

매개변수 뒤에 ... 마침표 3개를 찍으면된다.

함수당 하나만 가질 수 있다.

    func sayHelloToFriends(me: String, friends: String...) -> String {
        return "Hello \(friends)! I'm \(me)!"
    }

    print(sayHelloToFriends(me: "jangilkyu", friends: "sujung", "mina", "chulsu")) //Hello ["sujung", "mina", "chulsu"]! I'm jangilkyu!
    print(sayHelloToFriends(me: "ilkyu")) //Hello []! I'm ilkyu!
