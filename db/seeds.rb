Area.create!(
  [
    { id: 1, area_name: 'Hokkaido' },
    { id: 2, area_name: 'Tohoku' },
    { id: 3, area_name: 'Kanto' },
    { id: 4, area_name: 'Koshinetsu, Hokuriku' },
    { id: 5, area_name: 'Tokai' },
    { id: 6, area_name: 'Kansai' },
    { id: 7, area_name: 'Chugoku, Shikoku' },
    { id: 8, area_name: 'Kyushu' },
    { id: 9, area_name: 'Okinawa' }
  ]
)
Pref.create!(
  [
    { id: 1, pref_id: '01', pref_name: 'Hokkaido', area_id: 1 },
  
    { id: 2, pref_id: '02', pref_name: 'Aomori', area_id: 2 },
    { id: 3, pref_id: '03', pref_name: 'Iwate', area_id: 2 },
    { id: 4, pref_id: '04', pref_name: 'Miyagi', area_id: 2 },
    { id: 5, pref_id: '05', pref_name: 'Akita', area_id: 2 },
    { id: 6, pref_id: '06', pref_name: 'Yamagata', area_id: 2 },
    { id: 7, pref_id: '07', pref_name: 'Fukusima', area_id: 2 },
  
    { id: 8, pref_id: '08', pref_name: 'Ibaragi', area_id: 3 },
    { id: 9, pref_id: '09', pref_name: 'Tochigi', area_id: 3 },
    { id: 10, pref_id: '10', pref_name: 'Gunma', area_id: 3 },
    { id: 11, pref_id: '11', pref_name: 'Saitama', area_id: 3 },
    { id: 12, pref_id: '12', pref_name: 'Chiba', area_id: 3 },
    { id: 13, pref_id: '13', pref_name: 'Tokyo', area_id: 3 },
    { id: 14, pref_id: '14', pref_name: 'Kanagawa', area_id: 3 },
  
    { id: 15, pref_id: '15', pref_name: 'Nigata', area_id: 4 },
    { id: 16, pref_id: '16', pref_name: 'Toyama', area_id: 4 },
    { id: 17, pref_id: '17', pref_name: 'Ishikawa', area_id: 4 },
    { id: 18, pref_id: '18', pref_name: 'Fukui', area_id: 4 },
    { id: 19, pref_id: '19', pref_name: 'Yamanashi', area_id: 4 },
    { id: 20, pref_id: '20', pref_name: 'Nagano', area_id: 4 },
  
    { id: 21, pref_id: '21', pref_name: 'Gihu', area_id: 5 },
    { id: 22, pref_id: '22', pref_name: 'Shizuoka', area_id: 5 },
    { id: 23, pref_id: '23', pref_name: 'Aichi', area_id: 5 },
    { id: 24, pref_id: '24', pref_name: 'Mie', area_id: 5 },
  
    { id: 25, pref_id: '25', pref_name: 'Shiga', area_id: 6 },
    { id: 26, pref_id: '26', pref_name: 'Kyoto', area_id: 6 },
    { id: 27, pref_id: '27', pref_name: 'Osaka', area_id: 6 },
    { id: 28, pref_id: '28', pref_name: 'Hyogo', area_id: 6 },
    { id: 29, pref_id: '29', pref_name: 'Nara', area_id: 6 },
    { id: 30, pref_id: '30', pref_name: 'Wakayama', area_id: 6 },
  
    { id: 31, pref_id: '31', pref_name: 'Tottori', area_id: 7 },
    { id: 32, pref_id: '32', pref_name: 'Shimane', area_id: 7 },
    { id: 33, pref_id: '33', pref_name: 'Okayama', area_id: 7 },
    { id: 34, pref_id: '34', pref_name: 'Hiroshima', area_id: 7 },
    { id: 35, pref_id: '35', pref_name: 'Yamaguchi', area_id: 7 },
    { id: 36, pref_id: '36', pref_name: 'Tokushima', area_id: 7 },
    { id: 37, pref_id: '37', pref_name: 'Kagawa', area_id: 7 },
    { id: 38, pref_id: '38', pref_name: 'Ehime', area_id: 7 },
    { id: 39, pref_id: '39', pref_name: 'Kouchi', area_id: 7 },
  
    { id: 40, pref_id: '40', pref_name: 'Fukuoka', area_id: 8 },
    { id: 41, pref_id: '41', pref_name: 'Saga', area_id: 8 },
    { id: 42, pref_id: '42', pref_name: 'Nagasaki', area_id: 8 },
    { id: 43, pref_id: '43', pref_name: 'Kumamoto', area_id: 8 },
    { id: 44, pref_id: '44', pref_name: 'Oita', area_id: 8 },
    { id: 45, pref_id: '45', pref_name: 'Miyazaki', area_id: 8 },
    { id: 46, pref_id: '46', pref_name: 'Kagoshima', area_id: 8 },
  
    { id: 47, pref_id: '47', pref_name: 'Okinawa', area_id: 9 }
  ]
)
User.create!(
  [
    { id: 1, name: 'test', email: 'test@example.com', nick_name: 'test', password: 'password', prof: 'testです。神奈川県を中心に活動しています。' },
    { id: 2, name: 'test2', email: 'test2@example.com', nick_name: 'test2', password: 'password', prof: 'test2です。東京都西部を中心に活動しています。' },
    { id: 3, name: 'test3', email: 'test3@example.com', nick_name: 'test3', password: 'password', prof: 'test3です。よろしくお願いいたします。' },
    { id: 4, name: 'test4', email: 'test4@example.com', nick_name: 'test4', password: 'password', prof: 'test4です。よろしくお願いいたします。' }
  ]
)

Event.create!(
  [
    { id: 1,
      event_name: 'Shibuya Sushi Restaurant Tour',
      event_date: Time.parse('2019/12/25'),
      user_id: 1,
      event_published_flg: true,
      event_recruiting_flg: true,
      pref_id: '13',
      city: 'shibuya',
      place_detail: '',
      event_detail: 'Unique experience of a delicious sushi bar in Shibuya',
      event_recruit_start_date: Time.parse('2019/12/12'),
      event_recruit_end_date: Time.parse('2019/12/24'),
      event_recruit_number: 5,
      event_entrance_fee: 20
    },
    { id: 2,
      event_name: 'Shinjuku Sushi Restaurant Tour',
      event_date: Time.parse('2019/12/30'),
      user_id: 2,
      event_published_flg: true,
      event_recruiting_flg: true,
      pref_id: '13',
      city: 'shinjuku',
      place_detail: '',
      event_detail: 'Unique experience of a delicious sushi bar in Shinjuku',
      event_recruit_start_date: Time.parse('2019/12/12'),
      event_recruit_end_date: Time.parse('2019/12/29'),
      event_recruit_number: 6,
      event_entrance_fee: 30
    },
    { id: 3,
      event_name: 'Hokkaido Sushi Restaurant Tour',
      event_date: Time.parse('2020/1/5'),
      user_id: 3,
      event_published_flg: true,
      event_recruiting_flg: true,
      pref_id: '1',
      city: 'Sapporo',
      place_detail: '',
      event_detail: 'Unique experience of a delicious sushi bar in Sapporo',
      event_recruit_start_date: Time.parse('2019/12/12'),
      event_recruit_end_date: Time.parse('2019/12/30'),
      event_recruit_number: 4,
      event_entrance_fee: 30
    },
    { id: 4,
      event_name: 'Kyoto Sushi Restaurant Tour',
      event_date: Time.parse('2019/12/30'),
      user_id: 4,
      event_published_flg: true,
      event_recruiting_flg: true,
      pref_id: '26',
      city: 'Kyoto',
      place_detail: '',
      event_detail: 'Unique experience of a delicious sushi bar in Kyoto',
      event_recruit_start_date: Time.parse('2019/12/12'),
      event_recruit_end_date: Time.parse('2019/12/29'),
      event_recruit_number: 6,
      event_entrance_fee: 25
    },
  ]
)
EventApp.create!(
  [
    { id: 1, event_id: 1, user_id: 1 },
    { id: 2, event_id: 1, user_id: 2 },
    { id: 3, event_id: 3, user_id: 3 },
    { id: 4, event_id: 2, user_id: 1 },
    { id: 5, event_id: 4, user_id: 4 },
  ]
)