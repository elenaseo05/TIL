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





### 숫자함수

- ROUND    : 지정된 소수점 자릿수로 값을 반올림
- TRUNC    : 지정된 소수점 자릿수로 값을 truncate(버림) 
- MOD    : 나눈 나머지를 반환

- ex)
    ROUND(45.926, 2)    -    45.93
    TRUNC (45.926, 2)    -    45.92
    MOD (1600, 300)    -    100

{ROUND|TRUNC}(계산할 수, 연산할 소수점 아래자리값))

```sql
SQL> SELECT ROUND(45.923, 2), TRUNC(45.926, 2), MOD(1600, 300)
  2  FROM dual;
```

    ROUND(45.923,2) TRUNC(45.926,2) MOD(1600,300)
    --------------- --------------- -------------
          45.92       45.92       100
    나머지

```sql
SQL> SELECT ROUND(45.923, 2), TRUNC(45.926, 2), TRUNC(1600/ 300, 0)
  2  FROM dual;
```

    ROUND(45.923,2) TRUNC(45.926,2) TRUNC(1600/300,0)
    --------------- --------------- -----------------
          45.92       45.92         5
    나누어 떨어지지 않는 값을 나머지 없이 받을때 버림을 사용하여 출력


- ROUND

```sql
SQL> SELECT ROUND(45.923, 2), ROUND(45.923, 0), ROUND(45.923, -1)
  2  FROM dual;
```
    ROUND(45.923,2) ROUND(45.923,0) ROUND(45.923,-1)
    --------------- --------------- ----------------
          45.92                46                 50



- TRUNC
```sql
SQL>  SELECT TRUNC(45.923, 2), TRUNC(45.923, 0), TRUNC(45.923, -1)
  2  FROM dual;
```
    TRUNC(45.923,2) TRUNC(45.923,0) TRUNC(45.923,-1)
    --------------- --------------- ----------------
          45.92            45                  40

- MOD
```sql
SELECT last_name, salary, MOD(salary, 5000)
FROM employees
WHERE job_id = 'SA_REP';
```
    LAST_NAME              SALARY MOD(SALARY,5000)
    ------------------------- ---------- ----------------
    Tucker                   10000            0
    Bernstein            9500         4500


### 날짜함수

- sysdate 함수
    현재 데이터베이스 서버 날짜 및 시간을 반환하는 함수

```sql 
SQL> SELECT sysdate
  2  FROM dual;
```
    SYSDATE
    ---------
    03-MAR-21


- !!! 날짜를 사용한 산술 연산
    날짜 + 숫자        날짜        날짜에 일 수를 더한다
    날짜 - 숫자        날짜        날짜에서 일 수를 뺀다
    날짜 - 날짜        일 수        한 날짜를 다른 날짜에서 뺀다
    날짜 + 숫자/24    날짜        날짜에 시간 수를 더한다
**날짜 데이터의 산술연산 1 = 하루** 

- 날짜에 일수 더하기
```sql 
SELECT SYSDATE, SYSDATE + 1
FROM dual;
```

    SYSDATE   SYSDATE+1
    --------- ---------
    03-MAR-21 04-MAR-21

- 날짜에 시간 수 빼기
```sql 
SELECT TO_CHAR(SYSDATE - 1/24, 'YY/MM/DD HH:MI:SS')
FROM dual;
```

    TO_CHAR(SYSDATE-1
    -----------------
    21/03/03 08:42:18

- 날짜에 분 더하기
```sql 
SELECT TO_CHAR(SYSDATE + 8/(24*60), 'YY/MM/DD HH:MI:SS')
FROM dual;
```

    TO_CHAR(SYSDATE+8
    -----------------
    21/03/03 09:51:25

날짜 - 날짜 한날짜에서 다른 날짜를 빼기 [일 수]
```sql 
SELECT SYSDATE - (SYSDATE - 7)
FROM dual;
```
    SYSDATE-(SYSDATE-7)
    -------------------
              7


### 변환함수

TO_CHAR(날짜 → 문자)

TO_CHAR(날짜, '형식 문자')
온전한 영단어 형식문자

[날짜 형식 요소]

|형식| |
|:---------:|:-----------------:|
|YYYY     |   숫자로 된 전체 연도|
|YEAR    |    영어 철자로 표기된 연도|
|MM      |  월의 2자리 값|
|MONTH   |     전체 월 이름|
|MON     |   월의 3자 약어|
|DY      |  3문자로 된 요일 약어|
|DAY     |   요일의 전체 이름|
|DD      |  숫자 형식의 월간 일 |

```sql
SQL> SELECT TO_CHAR(SYSDATE, 'YEAR / MONTH / DAY')
  2  FROM dual;
```
    TO_CHAR(SYSDATE,'YEAR/MONTH/DAY')
    ---------------------------------------------------------------------------
    TWENTY TWENTY-ONE / MARCH     / WEDNESDAY

```sql
SQL> SELECT TO_CHAR(SYSDATE, 'YY/MM/DD HH24:MI:SS AM') today 
  2  FROM dual;
```
    TODAY
    --------------------
    21/03/05 14:25:09 PM

```sql
SQL> SELECT TO_CHAR(SYSDATE, 'YY"y"MM"m"DD"d" HH24:MI:SS AM') today 
  2  FROM dual;
```
    TODAY
    ---------------------
    21y03m05d 14:32:08 PM


- 숫자 접미어  
sp : 숫자 → 영문 스펠링  
th : 기수 → 서수

```sql
ddsp - 영문자 
SQL> SELECT TO_CHAR(SYSDATE, 'ddsp')
  2  FROM dual;

    TO_CHAR(SYSD
    ------------
    five
```
- 서수

```sql 
SQL> SELECT TO_CHAR(SYSDATE-4, 'ddth')
  2  FROM dual;
    TO_C
    ----
    01st
```



#### TO_CHAR(NUMBER → CHAR)
숫자 데이터를 문자열로 변환하는 함수

|형식문자||
|------------|--------------|
|9   | 숫자를 나타냄 / 1자리의 숫자를 의미 |
|0   | 0이 표시되도록 강제 적용 / 변환 할 숫자의 자리보다 형식문자의 길이가 긴 경우 그 자리수 만큼 빈자리를 '0'을 채워서 출력한다|
|$   | 부동 달러 기호 배치 / 변환할 숫자의 길이에 맞춰서 '$'기호가 왼쪽에 붙어 출력된다.|
|L   | 부동 로컬 통화 기호 사용 |
|.   | 소수점 출력 |
|,   | 천단위 표시자로 쉼표 출력 | 
|'9' |   : 1자리의 숫자를 의미 |

- 형식문자
```sql

자리
SELECT TO_CHAR(12345, '99999')
FROM dual;

TO_CHA
------
 12345
```


- TO_NUMBER(문자열 → 숫자)  
문자열에서 숫자데이터로 변환하는 함수

숫자로만 구성된 문자열의 경우 형식문자를 생략해도 TO_NUMBER함수가 동작함.

```sql 
SQL> SELECT TO_NUMBER('1234')
  2  FROM dual;
TO_NUMBER('1234')
-----------------
             1234
```

숫자가 아닌 요소가 포함된 문자열의 경우 형식문자를 통해서 문자열의 형태를 표현해서 숫자부분만 추출해서 변환                            

```sql
SQL> SELECT TO_NUMBER('$24,900.00', '$99,999.99')
  2  FROM dual;

TO_NUMBER('$24,900.00','$99,999.99')
------------------------------------
                               24900
```

- TO_DATE(문자열 → 날짜)  
문자열에서 날짜데이터로 변환하는 함수

'DD-MON-YY' 형식의 문자열인 경우 데이터베이스에서 알고 있는 형식이기 때문에 별도의 형식문자 없이도 바로 변환 가능하다.
```sql 
SQL> SELECT TO_DATE('05-MAR-21') + 1
  2  FROM dual;
    TO_DATE('
    ---------
    06-MAR-21
```


