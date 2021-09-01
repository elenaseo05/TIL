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
