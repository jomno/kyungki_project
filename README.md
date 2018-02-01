# README

# virsion
ruby: 2.4.2 <br>
rails: 5.1.4

# desc
이 프로젝트는 경기 교육감 선거인단 모집 프로젝트로 크게 3가지의 페이지로 구성되어있습니다.<br>
- 선거인단 등록 페이지
- 선거인단 확인 페이지
- admin 페이지

## 선거인단 등록 페이지
users controller
단순하게 등록 가능하게 함

## 선거인단 확인 페이지
homes controller
- 가입현황(user 정보)
- 지역구별(지역구별 정보)
- 공지사항

## admin 페이지
active admin 사용
디비 정보 나열 하자

# DBSchema
### City
지역구 정보

| 컬럼명   | 형식     | 비고    |
| ----- | ------ | ----- |
| title | string | index |

### District
주소 정보

| 컬럼명     | 형식      | 비고    |
| ------- | ------- | ----- |
| title   | string  | index |
| city_id | integer |       |

### User
선거인단 정보

| 컬럼명         | 형식      | 비고        |
| ----------- | ------- | --------- |
| name        | string  |           |
| district_id | integer |           |
| phone       | string  |           |
| address       | string  |           |
| birth       | integer | 주민번호 앞 6개 |

### Post
공지사항

| 컬럼명     | 형식     | 비고    |
| ------- | ------ | ----- |
| title   | string | index |
| content | text   |       |
# 작업 순서
1. 모델 구성
2. admin 페이지 구성
3. 선거인단 등록 페이지 구성
4. 선거인단 확인 페이지 구성

# 바꿔야할거
1. ~~선거인단 등록 페이지 select2 적용(검색 가능하게)~~
2. ~~전체적인 디자인 수정~~
3. ~~선거인단 확인 페이지-> 가입 현황~~
4. ~~선거인단 확인 페이지-> 지역구 현황~~
5. ~~선거인단 확인 페이지-> 공지사항~~
6. ~~데이터 집어넣기~~
