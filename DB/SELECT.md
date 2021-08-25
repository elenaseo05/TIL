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
  




