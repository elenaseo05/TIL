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

