Chapter2_practice

2-1
  (A)SELECT
  (B)UPDATE
  (C)DELETE
  (D)INSERT
  (E)FROM
  (F)FROM
  (G)INTO
  (H)WHERE


2-2
  (1)INTEGER型
  (2)VARCHAR型
  (3)DATE型
  (4)DECIMAL型
  (5)TIME型
  (6)INTEGER型
  (7)CHAR型


2-3 -- ()付けるか迷った！
  1.SELECT コード, 地域, 都道府県名, 県庁所在地, 面積
      FROM 都道府県

  2.SELECT *
      FROM 都道府県

  3.SELECT 地域 AS area, 都道府県名 AS pref
      FROM 都道府県


2-4 -- ()付けるか迷った！
  1.INSERT INTO 都道府県
                (コード, 地域, 都道府県名, 面積)  -- SET書いてた、間違い！
         VALUES ('26', '近畿', '京都', 4613)  -- コードは文字列として扱うため''が必要！、抜けてた

  2.INSERT INTO 都道府県
         VALUES ('37', '四国', '香川', '高松', 1876)  -- コードは文字列として扱うため''が必要！、抜けてた

  3.INSERT INTO 都道府県
                (コード, 都道府県名, 県庁所在地)  -- SET書いてた、間違い！、コード名抜け
         VALUES ('40', '福岡', '福岡')  -- コードデータ抜け

2-5 -- SETが分からなかった！
  1.UPDATE 都道府県
       SET 県庁所在地 = '京都'  -- 京都は文字列のため''が必要！、抜けてた
     WHERE コード = '26'  -- コードは文字列として扱うため''が必要！、抜けてた

  2.UPDATE 都道府県
       SET 地域 = '九州', 面積 = 4976
     WHERE コード = '40'  -- WHERE文抜けてた！

2-6
  DELETE FROM 都道府県
        WHERE コード = '26'  -- コードは文字列として扱うため''が必要！、抜けてた