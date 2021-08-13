# Swift 
## **Xcode**
----

#### Xcode 

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

- command + 0 : 왼쪽에 프로젝트 파인더 및 검색 등등 윈도우 숨기기 & 열기

- command + 1 : 프로젝트 파인더 열기

- command + 2 : 프로젝트 하이라키 창 열기

- command + 3 : 프로젝트 검색 창 열기

- command + 4 : 프로젝트 워닝 및 에러 창 열기

- command + 5 : 테스트 타겟창 열기

- command + 6 : 디버그 세션 창

- command + 7 : 디버깅 브레이크 포인트 창

- command + 8 : 빌드 관련 히스토리

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


### Swift의 COLLECTION
- Array
    데이터 타입의 값들을 *순서대로* 저정하는 리스트

- Dictionary
    순서없이 *키(key)와 값(Value) 한 쌍*으로 데이터를 저장하는 컬렉션 타입

- Set
    같은 데이터 타입의 값을 *순서없이* 저장하는 리스트 (집합)







-------------

참조
[Xcode 단축키](https://velog.io/@hayeon/Xcode-단축키)
[Xcode 단축키](https://www.rightpoint.com/rplabs/xcode-tips)
