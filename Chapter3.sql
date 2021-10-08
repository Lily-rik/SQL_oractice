Chapter3_practice

3-1
  1.SELECT * FROM 気象観測
    --  WHERE 月 = '6月'  -- 自分の回答
    WHERE 月 = 6月  --入力されるのは1~12のいずれかの値であるため、=のあとは数値のみ
  
  2.SELECT * FROM 気象観測
     WHERE 月 <> 6    -- 上記と同じ間違い
  
  3.SELECT * FROM 気象観測
     WHERE 降水量 < 100

  4.SELECT * FROM 気象観測
     WHERE 降水量 > 200

  5.SELECT * FROM 気象観測
    WHERE 最高気温 >= 30   -- =抜け、以上なので=が必要！

  6.SELECT * FROM 気象観測
     WHERE 最低気温 <= 0   -- 上記と同じ間違い

  7.SELECT * FROM 気象観測   -- 1と同じミス
     WHERE 月 IN(3, 5, 7)

  8.SELECT * FROM 気象観測   -- 1と同じミス
     WHERE 月 NOT IN(3, 5, 7)

  9.SELECT * FROM 気象観測
     WHERE 降水量 <= 100 AND 湿度 < 50  -- 降水量の=抜けミス

  10.SELECT * FROM 気象観測
      WHERE 最低気温 < 5 OR 最高気温 > 35

  11.SELECT * FROM 気象観測
      WHERE 湿度 BETWEEN 60 AND 79

  12.-- SELECT * FROM 気象観測  -- 月がNULLのデータではなく、NULLデータのある月を表示する、文章の読み間違い
      -- WHERE 月 IS NULL
     SELECT 月 FROM 気象観測
      WHERE 降水量 IS NULL OR 最高気温 IS NULL OR 最低気温 IS NULL OR 湿度 IS NULL
    


-- ここから解説見る続き！！！


3-2
  1.SELECT 都道府県名 FROM 都道府県
     WHERE 都道府県名 LIKE '%川'

  2.SELECT 都道府県名 FROM 都道府県
     WHERE 都道府県名 LIKE '%島%'

  3.SELECT 都道府県名 FROM 都道府県
     WHERE 都道府県名 LIKE '愛%'

  4.SELECT * FROM 都道府県名
     WHERE 都道府県名 = 県庁所在地

  5.SELECT * FROM 都道府県名
     WHERE 都道府県名 <> 県庁所在地


3-3
  1.SELECT * FROM 成績表

  2.INSERT INTO 成績表
         VALUES('S001', '織田 信長', 77, 55, 80, 75, 93, NULL)
         VALUES('A002', '豊臣 秀吉', 64, 69, 70, 0, 59, NULL)
         VALUES('E003', '徳川 家康', 80, 83, 85, 90, 79, NULL)
  
  4.UPDATE 成績表 SET 法学 = 85, 哲学 = 67
     WHERE 学籍番号 = 'S001'
    UPDATE 成績表 SET 外国語 = 81
     WHERE 学籍番号 = 'A002' AND 'E003'

  5.(1)UPDATE 成績表 SET 総合成績 = 'A'
        WHERE (法学 AND 経済学 AND 哲学 AND 情報理論 AND 外国語) > 80
    (2)UPDATE 成績表 SET 総合成績 = 'B'
        WHERE (法学 OR 外国語 > 80 ) AND (経済学 OR 哲学 >80)
    (3)UPDATE 成績表 SET 総合成績 = 'C'
        WHERE (法学 AND 経済学 AND 哲学 AND 情報理論 AND 外国語) < 50
    (4)分からない


3-4
  1.ない
  2.コード
  3.学籍番号


  