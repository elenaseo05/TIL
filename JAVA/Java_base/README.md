# JAVA 

## 자바의 특징

### **java 식별자 작성 규칙**
----

식별자 작성 규칙
[ 필수 사항 ]
1. 첫글자에 숫자 사용 불가(ex. 7eleven 사용 불가)
2. 특수문자 $ 또는 _ 만 사용 가능(ex. channel#5 사용 불가)
3. 대소문자 구별(ex. name 과 Name 은 다름)
4. 예약어(키워드) 사용 불가
5. 공백 사용 불가
--------------------------------------------
[ 권장 사항 ]  
6. 길이 제한 없음  
7. 의미가 있는 단어 사용  
8. 한글 사용 가능(하지만 실제 사용하지 않음 => 문제 발생 가능성 있음)  
9. 두 개 이상의 단어를 조합할 경우 두번째 단어부터 첫글자를 대문자 사용  

    ex) myfirstname => myFirstName(Camel-case 표기법)


- 상수는 대문자로 작성 
- 클래스명은 대문자로 시작 
- 메소드, 변수는 소문자로 시작 


### 객체 지향 프로그래밍 OOP (Object-Oriented Programming) 

***OOP란?*** 
    장점 : 다른 클래스를 가져와 사용할 수 있고, 상속을 사용하기 때문에 코드의 재사용성 증가 절차지향프로그래밍 보다는 유지 보수가 간단   
        클래스 단위로 모듈화 가능, 대형 프로젝트에 적합
    단점 : 처리속도가 상대적으로 느림, 객체가 많으면 용량이 커짐, 설계시 많은 노력과 시간이 필요. 


OOP 의 특징 

  1) 캡슐화(Encapsulation) = 은닉성
     - 객체 내부 구조(멤버변수)를 외부로부터 숨기고(private),
       메서드(Getter/Setter)를 통해 데이터를 주고받도록 하는 것
  2) 상속성(Inheritance)
     - 슈퍼클래스의 멤버를 서브클래스에서 물려받아
       선언없이 사용 가능하도록 하는 것
  3) 다형성(Polymorphism)
     - 하나의 참조변수로 여러 인스턴스를 참조하는 것
       = 인스턴스를 다양한 형태로 변환하는 것
  4) 추상화(Abstraction)
     - 객체들의 공통 특성을 추출하여 상위 개념을 정의하는 것
       ex) 초등학생, 중학생, 고등학생 => 학생 클래스로 추출

### SOLID

- Single Responsibility Principle  (단일 책임 법칙)   
    - 각 클래스는 목적을 하나씩만 가지고 그에 대한 책임을 져야 한다.
- Open Close Principle  (개방 폐쇄 법칙)   
    - 각 클래스는 클래스에 대한 수정을 폐쇄하고, 확장에 대해 개방해야 한다. 즉 클래스를 수정해야 한다면 그 클래스를 상속, 즉 확장하여 수정한다. 
- Liskov Substitusion Principle, (리스코프 치환 법칙)   
    - 자식 클래스를 사용 중일때, 거기에 부모 클래스로 치환하여도 문제가 없어야 한다. 
- Interface Segreation Principle (인터페이스 분리 법칙)   
    - 각 행위에 대한 인터페이스는 서로 분리되어야 한다.  
- Dependency Inversion Principle  (의존성 역전 법칙)   
    - 상위 클래스가 하위 클래스에 의존하면 안된다는 법칙. 즉 기본적인 공통되는 속성을 하위 클래스에 의존하면 안된다. 
