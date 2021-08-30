# **WHERE**
---------

##  조건문

문법
```sql 
SELECT 출력할 컬럼명
FROM 테이블명
WHERE 출력하기 원하는 특정조건
```


- 비교연산자 (숫자)

- 숫자, 문자, 날짜 데이터에 사용가능
    - =    값이 동일한 행을 찾는다.
    - \>    보다 크다. 초과
    - <    보다 작다. 미만
    - \>=    크거나 같다. 이상
    - <=    작거나 같다. 이하
    - !=, <>, ^=    같지 않다.
```sql 
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 90;
```

- 비교연산자 (문자열)
    -  ‘ ‘ 작은따옴표 = 문자열 
    -  문자열 조회
    -  대소문자 구분
```sql 
SELECT last_name, job_id, department_id
FROM employees
WHERE last_name = 'Whalen';
```

- 비교연산자 (날짜)
    - 날짜 조회  
    - 문자열 처럼 ' ' 으로 구분
```sql 
SELECT last_name
FROM employees
WHERE hire_date = '17-FEB-96';
```

- 범위연산자
    - BETWEEN A AND B
        - A 이상 B 이하의 값의 범위를 가지는 행을 출력
        - A : 범위에서 가장 작은 값
        - B : 범위에서 가장 큰 값
        - 경계값 A, B와 일치한 값을 포함한 결과가 출력

```sql 
SELECT last_name, salary 
FROM employees
WHERE salary BETWEEN 2500 AND 3500;
``` 
salary가 2500에서 3500인 값

```sql 
SELECT last_name
FROM employees
WHERE last_name BETWEEN 'C' AND 'D';
```
문자열도 가능하다. 


- IN연산자
    - = 연산자에 비해서 여러 개의 조건값을 줄 수 있는 연산자
    - () 안에 값의 목록과 일치한 값을 가진 행을 선택한다.
```sql 
SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id IN (100, 101, 201);

SELECT last_name, salary
FROM employees
WHERE last_name IN ('Geoni', 'Gates', 'Cabrio');
```

문자열 , 숫자를 비교 할 수 있다. 


- LIKE연산자

    - 패턴과 일치하는 문자열값을 가진 행을 출력
    - **_** : 한자리의 문자
    - **%** : 0~n 자리의 문자

    ```sql 
    
    SELECT last_name
    FROM employees
    WHERE last_name LIKE '_o%';
    ```
   
TEXTEXTotexttex
toe
**LIKE '%o%'**
    TEXTEXTotexttex
**LIKE '_o_'**
    toe

- IS NULL
null 인지 확인 한다. 
    **=** 연산자로는 구분 할 수 없음


- AND / OR / NOT 연산자
    - AND 연산자    
    AND를 사이에 끼고 있는 두 조건식을 동시에 만족하는 행을 결과로 출력
    - OR 연산자  
    OR을 끼고 있는 두 조건 중 하나라도 조건을 만족하는 값을 가진 행을 출력
    - AND OR 연산자   
    AND가 연산자 우선순위가 높으므로 필요에 따라서 괄호를 사용하여 우선순위를 바꿀 수 있다.
    - NOT 연산자
    조건식 앞에 NOT을 사용할 수 있다.

