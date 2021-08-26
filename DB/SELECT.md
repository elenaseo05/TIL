# **SELECT**
---------

##  조회문

- 테이블 구조 조회
```sql
DESCRIBE 테이블 명
```

- ***[문법]***

```sql
SELECT * | { [DISTINCT] column | expression [alias],... }
```

- 데이터 검색 SELECT 구문
  - 전체 조회
      ```sql
      SELECT *
      FROM 테이블 명;
      ```
  - 컬럼별 조회
      ```sql
      SELECT 컬럼명, 컬럼명
      FROM 테이블 명;
      ```

  - 컬럼별 조회 (표현식)
    ```sql
      SELECT 컬럼명, 컬럼명, 표현식
      FROM 테이블 명;
    ```

    ```sql
      ex) 
      SELECT last_name, salary, 12*salary+100
      FROM employees;
    ```
    - Column Alias(별칭, 별명)
    ```sql
      SELECT 컬럼명 AS alias (별명) 
      SELECT 컬럼명 alias (별명)
      SELECT 컬럼명 AS "Alias" (별명)
      SELECT 컬럼명  "Alias" (별명)
    ```

    - 연결연산자 (||)
    ```sql 
      SELECT 컬럼명||컬럼명 [[AS] ailas]
      FROM 테이블명
    ```
    
    - DISTINCT
      중복된 값을 자동으로 제거해 주는 키워드
    ```sql
      SELECT DISTINCT 컬럼명, 컬럼명
      FROM 테이블명;
    ```  
    DISTINCT 키워드 뒤로 여러 컬럼이 온 경우 컬럼들의 값이 모두 일치하는 경우에만   
    중복값으로 인정되어 중복값 제거가 된다.   
    하나라도 다른 값이 있을 경우 개별 값으로 인정
    

