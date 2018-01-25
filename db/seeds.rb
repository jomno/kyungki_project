AdminUser.create!(email: 'admin@admin.com', password: 'password', password_confirmation: 'password')
City.create!([
  {title: "수원시 갑"},
  {title: "수원시 을"},
  {title: "수원시 병"},
  {title: "수원시 정"},
  {title: "수원시 무"},
  {title: "성남시 수정구"},
  {title: "성남시 중원구"},
  {title: "성남시 분당구 갑"},
  {title: "성남시 분당구 을"},
  {title: "의정부시 갑"},
  {title: "의정부시 을"},
  {title: "안양시 만안구"},
  {title: "안양시 동안구 갑"},
  {title: "안양시 동안구 을"},
  {title: "부천시 원미구 갑"},
  {title: "부천시 원미구 을"},
  {title: "부천시 소사구"},
  {title: "부천시 오정구"},
  {title: "광명시 갑"},
  {title: "광명시 을"},
  {title: "평택시 갑"},
  {title: "평택시 을"},
  {title: "동두천시 연천군"},
  {title: "안산시 상록구 갑"},
  {title: "안산시 상록구 을"},
  {title: "안산시 단원구 갑"},
  {title: "안산시 단원구 을"},
  {title: "고양시 갑"},
  {title: "고양시 을"},
  {title: "고양시 병"},
  {title: "고양시 정"},
  {title: "의왕시-과천시"},
  {title: "구리시"},
  {title: "남양주시 갑"},
  {title: "남양주시 을"},
  {title: "남양주시 병"},
  {title: "오산시"},
  {title: "시흥시 갑"},
  {title: "시흥시 을"},
  {title: "군포시 갑"},
  {title: "군포시 을"},
  {title: "하남시"},
  {title: "용인시 갑"},
  {title: "용인시 을"},
  {title: "용인시 병"},
  {title: "용인시 정"},
  {title: "파주시 갑"},
  {title: "파주시 을"},
  {title: "이천시"},
  {title: "안성시"},
  {title: "김포시 갑"},
  {title: "김포시 을"},
  {title: "화성시 갑"},
  {title: "화성시 을"},
  {title: "화성시 병"},
  {title: "광주시 갑"},
  {title: "광주시 을"},
  {title: "양주시"},
  {title: "포천시-가평군"},
  {title: "여주시-양평군"}
])
District.create!([
  {title: "수원시 장안구 파장동", city_id: 1},
  {title: "수원시 장안구 정자1동", city_id: 1},
  {title: "수원시 장안구 정자2동", city_id: 1}
])
Post.create!([
  {title: "공지사항입니다. ", content: "공지사항 공지사항 공지사항해"}
])
