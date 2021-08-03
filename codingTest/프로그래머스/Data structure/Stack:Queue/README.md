# **StackAndQueue**
---------

## 프로그래머스


### QUEUE

선입 선출 FIFO (First In First Out)
자바에서 LinkedLIst 활용하여 생성
add 메서드를 사용하여 추가 (offer(값) 으로도 추가 가능)
q.add(1); q.add(2); ... q.add(6)
 \----------------
 1  2  3  4  5  6
\----------------
 add 메소드는 삽입에 성공하면 true 반화 실패하면 lllegalStateException 발생
q.peek(); 참조
\----------------
 1  2  3  4  5  6
 \----------------
 1
q.poll();      첫번째 값을 반환하고 제거 (비어있다면 null 반환)
 \----------------
 2  3  4  5  6
 \----------------
 -> 1
q.remove();    첫번째 값 제거
\----------------
 3  4  5  6
\----------------
q.clear();     초기화
\----------------
       
\----------------

[기능개발_JAVA]()
[기능개발_Swift]()
[프로그래머스 문제](https://programmers.co.kr/learn/courses/30/lessons/42586)


