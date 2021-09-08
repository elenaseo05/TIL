# **FUNCTION**
---------

##  단일 행 함수


- 검색에 적용하고 싶으면 WHERE에 함수를 적용
- 출력 결과에 적용하고 싶으면 SELECT에 함수적용

### 문자함수
- 문자 변환 함수
    |  대소문자 변환 함수 |   문자 조작 함수 | 
    |:---------------------:|:------------------:|
    | - LOWER <br> - UPPER <br>  - INITCAP |  - CONCAT <br> - SUBSTR <br>  - LENGTH <br> - INSTR <br> - LPAD \ RPAD <br> - TRIM <br> - REPLACE | 


- 대소문자 변환 함수
    - LOWER         소문자
    - UPPER        대문자
    - INITCAP    단어의 앞글자만 대문자 


WHERE에 적용된 LOWER

```sql 
SELECT employee_id, last_name, department_id
FROM employees
WHERE LOWER(last_name) = 'higgins';
```

    EMPLOYEE_ID LAST_NAME              DEPARTMENT_ID
    ----------- ------------------------- -------------
        205 Higgins                110
        
 => 데이터를 찾을 때 소문자로 찾는다 

```sql
SELECT에 적용된 문자 함수 
SELECT 'The job id for ' || UPPER(last_name) || ' is ' || LOWER(job_id) As "EMPLOYEE DETAILS" 
FROM employees;
```

    EMPLOYEE DETAILS
    ------------------------------------------------------
    The job id for URMAN is fi_account
    The job id for VARGAS is st_clerk

 => 연결연산자를 사용, 문자함수를 사용하여 대소문자 변환하여 출력 Alias 사용하여 출력





### 문자 조작 함수

- [CONCAT](#concat)        
    : 값을 연결 (파라미터 2개로 제한)
- [SUBSTR](#substr)        
    : 지정된 길이의 문자열을 추출
- [LENGTH](#length)        
    : 문자열 길이를 숫자 값으로 표시
- [INSTR](#instr-/-rpad)   
    : 문자열에서 지정된 문자의 숫자 위치를 찾음
- [LPAD](#instr-/-rpad)        
    : 길이가 n이 되도록 왼쪽부터 문자식으로 채운 표현식 반환
- [RPAD](#rpad)        
    : 길이가 n이 되도록 오른쪽부터 문자식으로 채운 표현식을 반환
- [TRIM](#trim)       
    : 문자열에서 선행문자나 후행문자를 자름 
- [REPLACE](#replace)   
    :특정 문자열을 치환하거나 제거




##### CONCAT

```
SELECT CONCAT('Hello', 'World')
FROM dual;
```

    CONCAT('HE
    ----------
    HelloWorld

##### SUBSTR
- 입력 받은 문자열의 일부를 추출하여 출력하는 함수

```
SELECT last_name, hire_date
FROM employees
WHERE SUBSTR(hire_date, -2, 2) = '04';
```

    LAST_NAME          HIRE_DATE
    ------------------------- ---------
    Weiss              18-JUL-04
    Mallin              14-JUN-04
    Russell           01-OCT-04


##### LENGTH

```
SELECT SUBSTR('Hell', 2, 1)
FROM dual;
```


##### INSTR
- 특정한 글자의 자리값(숫자 위치)을 찾을떄 사용 


```
SELECT SUBSTR('helloWorld', INSTR('helloWorld', 'W'), 3)
FROM dual;
```

    SUB
    ---
    Wor






##### LPAD / RPAD

- 출력할 문자열을 지정한 길이로 맞춰서 여백을 채워서 출력하는 함수
    - LPAD - 왼쪽 RPAD - 오른쪽 

```
SELECT LPAD(salary, 10, '*'), RPAD(salary, 10, '*') rpad
FROM employees;
```

    LPAD(SALARY,10,'*')             RPAD
    ---------------------------------------- 
    *****24000                 24000*****
    *****17000                 17000*****
    *****17000                 17000*****

- last_name 컬럼의 값을 11글자 길이로 통일시키고 모자란 공간에는 ' '로 채워서 출력


```
SELECT LPAD(last_name, 11, ' ') || ' is babo.'
FROM employees;
```

    LPAD(LAST_NAME,11,'')||'ISBABO.'
    -----------------------------------------------------
           Abel is babo.
           Ande is babo.
           Atkinson is babo.
       
   
##### TRIM
- 여백을 제외하고 자르고 출력
```
SELECT TRIM(' ' FROM '     HelloWorld    ')
FROM dual;
```

    TRIM(''FRO
    ----------
    HelloWorld




##### REPLACE
- 문자열의 일부 내용을 다른 문자열로 치환해서 출력하는 함수


```
SELECT REPLACE('JACK and JUE', 'J', 'BL')
FROM dual;
```

     REPLACE('JACKA
     --------------
     BLACK and BLUE