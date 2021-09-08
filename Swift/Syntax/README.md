# Swift 
## **Xcode**
----

#### Xcode 단축키

- command + Z : undo

- command + Shift + Z : redo

- command + BackSpace : 커서부터 왼쪽 지우기

- command + 방향키 : 해당 방향의 끝으로 이동

- command + Shift + K : 프로젝트 클린

- command + B : 프로젝트 빌드

- command + R : 프로젝트 실행

- command + Shift + O : 프로젝트 내 파일 / 클래스 / 함수 검색

- command + Shift + F : 파인드 창

- command + F : 현재 창에서 검색

- command + E : 현재 선택된 텍스트 블럭을 모든 텍스트에디트에 복사 

- command + G : 현재 페이지에 텍스트에디트에 적힌 문구 순차 검색 

- command + Shift + G : 현재 페이지에 텍스트에디트에 적힌 문구 역순차 검색

- command + alt + Enter : 현재창 이중 분할

- command + Enter : 현재창을 단일창으로 변경

- command + 0 ~ 8 : 왼쪽 윈도우 열기 

- command + \ : 브레이크 포인트 걸기

- command + Y : 브레이크 포인트 비활성화 / 활성화

- command + Shift + Y : 하단 디버그 세션 창 열기 / 닫기

- command + / : 주석 

- control + command + 좌우 화살표 : 이전/이후 페이지 이동

- command + [ ] : 해당 방향으로 들여쓰기

## **Swift 특징**
----

띄어쓰기 민감 
불변 객체 중요하게 여김 -> 상수중요하게 여김 
대소문다 구분 

- 이름 규칙 

1. 대소문자 구분 

2. Loweer Camel Case :  
function, method, variable, constant

    someVariableName

3. Upper Camel Case :  
type(class, struct, enum, extension)

    Person 
    Point
    Week

- consol log  

1. print : 단순 문자열 출력
2. dump : 인스턴스의 자세한 설명(description 프로퍼티)까지 출력

- 문자열 보간법

 String Interpolation   
 프로그램 실행 중 문자열 내에 변수 또는 상수의 실질적인 값을 표현 하기 위해 사용   

 사용법 

    \()

구조체 는 dump()으로 출력 하면 모든 정보를 확인 하기 싶다. 

### 상수 & 변수

- 상수 let
    변하지 않는 값 
```swift
let 상수 : Int = 10
```
- 변수 var
    변하는 값 
```swift
var 변수 : Int = 5
```

### Swift 기본 데이터 타입 (primitive type)

- Int : 64bit 정수형
- UInt: 부호가 없는 64bit 정수형 
- Float: 32bit 부동 소수점 
- Double: 64bit 부동 소수점 
- Bool: true, false 값 
- Character: 문자
- String: 문자열
- Any: 모든 타입을 지칭하는 키워드

### Swift 연산자 (Operater)

- 연산자 (Operater)
- 할당 연산자(Assignment Operator)
- 사칙 연산자(Arithmetic Operators)
- 합성 할당 연산자 Compound Assignment Operators
- 음수 연산자 (Minus Operator)
- 비교 연산자(Comparison Operators)
- 삼항 조건 연산자(Ternary Conditional Operator)
- Nil 병합 연산자(Nil-Coalescing Operator)
- 범위 연산자(Range Operators)
    - Closed Range
    - Half-Open Range
     - One-Side Ranges
- 논리 연산자(Logical Operators)


### Swift의 COLLECTION
- Array
    데이터 타입의 값들을 *순서대로* 저정하는 리스트

- Dictionary
    순서없이 *키(key)와 값(Value) 한 쌍*으로 데이터를 저장하는 컬렉션 타입

- Set
    같은 데이터 타입의 값을 *순서없이* 저장하는 리스트 (집합)


### 함수
작업의 가장 작은 단위 + 코드의 집합

- 함수 선언 방법 

```swift
    func 함수명 (파라미터이름 : 데이터 타입 ) -> 반환타입 {
     return 반환 값
    }
```


### 조건문
조건에 따라 실행 여부를 결정하는 구문

if, / if, else / if, else if, else / switch

```swift

    // if문
    if 조건문 {
        조건에 일치 할 경우 실행할 구문
    }
    
    //-----------
    
    if 조건문 {
        조건에 일치 할 경우 실행할 구문
    } else {
        조건이 일치 하지 않을 경우 실행 할 구문 
    }
    
    //-----------
    
    if 조건문 {
        조건에 일치 할 경우 실행할 구문
    } else if 조건문 {
        if 조건이 일치하지 않을때 else if의 조건이 일치 할 경우 실행할 구문
    } else {
        조건이 일치 하지 않을 경우 실행 할 구문 
    }
    
    
    Switch 비교대상 {
        case 패턴1:
        // 패턴 1이 일치 할때 실행되는 구문
        case 패턴2:
        // 패턴 2가 일치 할때 실행되는 구문
        .
        .
        .
        default:
        // 어떤 패턴과도 일치 하지 않을 때 실행되는 구문
```




### 반복문
반복적으로 코드가 실행되게 만드는 구문

for-in, while, repeat-while 


```swift

    for 루프상수 in 순회대상 {
     // 실행할 구문...
    }
    
    for i in 1..4 {
        print(i) // 4회 
    }
    
    while 조건식 {
       //실행할 구문
       // 조건식이 true 가 될 때까지 실행 
       // => 무한 루프 조심!
    }
    
    repeat {
       //실행할 구문
       // do-while 문과 동일
    } while 조건식
    
```

for 문은 다른언어의 for-each 와 동일하게 사용 할 수 있다. 
! 튜플도 사용 가능하다 !

swift 의 반복문은 다른언어와 유사한듯 다르다!


### Optional(옵셔널)

    var 변수명 : 타입? = 값 || nil

값이 있을 수도 있고 없을 수도 있는 타입 


### Struct 

```
struct 구조체 이름 {
    프로퍼티 , 메서드
}
```

구조체 이름은 앞글자가 대문자가 되도록 작성한다. 

###  Class

```swift
class 클래스 이름 {
  프로퍼티 , 메서드
}
```
클래스 이름은 앞글자가 대문자가 되도록 작성한다. 

#### 구조체( Struct)와  클래스( Class) 

- 공통점 
    - 값을 저장할 프로퍼티를 선언 할 수 있다. 
    - 함수적 기능을 하는 메서드를 선언 할 수 있다. 
    - 내부 값에 '.' 을 사용 하여 접근 할 수 있다. 
    - 생성자를 사용해 초기화 할 수 있다. 
    - extension을 사용하여 기능을 확장 할 수 있다. 
    - Protocol을 채책하여 기능을 설정 할 수 있다. 

- 차이점 
    - 클래스
        - 참조 타입
        - [ARC](#arc)로 메모리를 관리
        - 상속이 가능
        - 타입 캐스팅을 통해 런타임에서 클래스 인스턴스의 타입을 확인할 수 있음
        - deinit을 사용하여 클래스 인스턴스의 메모리 할당을 해제할 수 있음 
        - -> 같은클래스인스턴스를여러개의변수에할당한뒤값을변경시키면모든변수에영향을줌 (메모리가 복사 됨)
    - 구조체
       - 값타입
        - 구조체 변수를 새로운 변수에 할당할 때마다 새로운 구조체가 할당됩니다  
        - -> 즉 같은구조체를여러개의변수에할당한뒤값을변경시키더라도다른변수에영향을주지않음 (값 자체를 복사)



## Swift의 메모리 관리 

### ARC (automatic reference counting)

자동 메모리 할당 해제 기능이다. 
왜 알아야 할까?
    -> 작동하지 않는 상황이 있기 때문

-------------

참조
[Xcode 단축키](https://velog.io/@hayeon/Xcode-단축키)
[Xcode 단축키](https://www.rightpoint.com/rplabs/xcode-tips)
[기본 연산자 (Basic Operators)](https://jusung.gitbook.io/the-swift-language-guide/language-guide/02-basic-operators#nil-nil-coalescing-operator)
