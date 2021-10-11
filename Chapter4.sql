Chapter4_practice

4-1
  1.SELECT * FROM 注文履歴
     ORDER BY 2, 3

  2.-- SELECT 商品名 FROM 注文履歴   -- 自分の回答
    SELECT DISTINCT 商品名 FROM 注文履歴  -- 解答：商品名の重複は削除したいためDISTINCTを用いる
     WHERE 日付 >= '2018-01-01'
       AND 日付 <= '2018-01-31'
     ORDER BY 商品名

  3.SELECT 注文番号, 注文技番, 注文金額 FROM 注文履歴
     WHERE 分類 = '1'
     ORDER BY 注文金額 -- DESC(不要)   -- 注文金額の低い方 = 昇順のため、DESCは不要！
    OFFSET 1 ROWS FETCH NEXT 3 ROWS ONLY

  4.SELECT 日付, 商品名, 単価, 数量, 注文金額 FROM 注文履歴
     WHERE 分類 = '3'
       AND 数量 >= 2
     ORDER BY 日付, 数量    -- 自分の回答
     ORDER BY 日付, 数量 DESC   -- 解答：数量は多い順 = 降順になるためDESCが必要！

  5.-- 自分の回答
    -- SELECT 分類, 商品名, サイズ, 単価 FROM 注文履歴
    --  WHERE 分類 = '1'
    --  ORDER BY 分類, 商品名

    -- SELECT 分類, 商品名, 単価 FROM 注文履歴
    --  WHERE 分類 = '2'
    --  ORDER BY 分類, 商品名

    -- SELECT 分類, 商品名 単価 FROM 注文履歴
    --  WHERE 分類 = '3'
    --  ORDER BY 分類, 商品名

    -- 解答
    -- １つの表として取得する = まとめるのでUNIONを使用する
    -- 重複を避けるのでDISTINCTを使用する
    SELECT DISTINCT 分類, 商品名, サイズ, 単価 FROM 注文履歴
     WHERE 分類 = '1'
     UNION
    SELECT DISTINCT 分類, 商品名, NULL, 単価 FROM 注文履歴    -- 列リストの数が合わない場合はNULLを追加し数を一致させる
     WHERE 分類 = '2'
     UNION
    SELECT DISTINCT 分類, 商品名, NULL, 単価 FROM 注文履歴
     WHERE 分類 = '3'
     ORDER BY 分類, 商品名  -- 集合演算子を用いる場合は、ORDER BY句は最後のSELECT文に記載する
                          -- 列番号以外による指定の場合は、１つ目のSELECT文のものを指定する


4-2
  1.SELECT * FROM 奇数
     UNION
    SELECT * FROM 偶数

  2.SELECT * FROM 整数
    EXCEPT
    SELECT * FROM 偶数

  3.   SELECT * FROM 整数
    INTERSECT
       SELECT * FROM 偶数

  4.   SELECT * FROM 偶数
    INTERSECT
       SELECT * FROM 奇数