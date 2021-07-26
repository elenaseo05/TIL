# **Algorithm**
---------

#### 알고리즘이란? 
문제를 해결하기 위해 정해진 절차나 방법을 공식화한 형태로 표현한것 
계산을 실행하기 위한 단계적 절차 => 문제 해결에 필요한 계산 절차 또는 처리 과정의 순서 

#### 알고리즘의 특징

- 입력 : 0 또는 그 이상의 외부에서 제공된 자료가 존재한다.
- 출력 : 알고리즘은 최소 1개 이상의 결과를 가진다.
- 유한성 : 모든 단계를 유한한 횟수를 거친 후 문제를 해결하고 종료해야 한다.
- 명확성 : 알고리즘은 명확하여 애매함이 없어야 한다.
- 효과성 : 알고리즘의 모든 연산은 유효한 시간안에 효과적으로 실행되어야 한다. 


#### 알고리즘 표현 방법

- 자연어
- 순서도
- 의사코드
- 프로그래밍 언어

#### 알고리즘 평가기준
- 공간복잡도 : 알고리즘으로 문제를 해결할 때 필요한 공간인 메모리의 크기
- 시간복잡도 : 같은 조건 같은 문제를 해결하는데 걸리는 시간에 대한 평가 방법
    - Big-O 
     -> 알고리즘의 성능을 설명하는 것 = 알고리즘을 수행하기 위해 프로세스가 수행해야하는 연산을 수치화 한 것 

*입력 N 값에 따른 서로 다른 알고리즘의 시간복잡도*

|Complexity  |  1  |  10  |  100 |
|:----:|:----:|:----:|:----:|
|O(1)  |  1   | 1  |  1 |
|O(log N)   | 0  |  2  |  5 |
|O(N)   | 1   | 10   | 100|
|O(N log N)   | 0 |   20  |  461 |
|O(N^2)  | 1 |   100  |  10000 |
|O(2^N)  |  1   | 1024   | 1267650600228229401496703205376 |
|O(N!)   | 1   | 3628800   | 화면에 표현할 수 없음! |


- O(1) - 입력값에 관계없이 동일한 복잡도를 가진다. 
- O(N) - 입력이 증가하면 처리 시간 또는 메모리 사용이 선형적으로 증가
- O(N^2) - 반복문이 두번 있는 경우 
- O(log n) O(n log n) - 입력 크기에 따라 처리사간이 증가



#### 시간복잡도를 구하는 요령 
- 하나의 루프를 사용하여 단일 요소 집합을 반복 하는 경우 : O (n)
- 컬렉션의 절반 이상 을 반복 하는 경우 : O (n / 2) -> O (n)
- 두 개의 다른 루프를 사용하여 두 개의 개별 콜렉션을 반복 할 경우 : O (n + m) -> O (n)
- 두 개의 중첩 루프를 사용하여 단일 컬렉션을 반복하는 경우 : O (n²)
- 두 개의 중첩 루프를 사용하여 두 개의 다른 콜렉션을 반복 할 경우 : O (n * m) -> O (n²)
- 컬렉션 정렬을 사용하는 경우 : O(n*log(n))

- Big-O -> 최상의 값과 최악의 값 중 최악의 값으로 표기한다.


#### Big-O 표기법에 대하여, 

자신이 작성한 알고리즘에 대해 시간복잡도와 공간복잡도를 알고 설명 할 수 있어야 한다.   
또한 알고리즘을 제대로 분석하고 있어야 적재 적소에 사용가능하며, 수정도 빠르게 할 수 있다.   

적어도 자신이 작성한 알고리즘의 시간 복잡도는 알고 있어야 한다.   
어떤 시간 복잡도를 가졌는지 생각하면서 알고리즘을 작성하는 것이 좋다.  

이제 그렇게 해야 겠다.  



--------------
[참고자료 출처 : https://blog.chulgil.me/algorithm/](https://blog.chulgil.me/algorithm/) 