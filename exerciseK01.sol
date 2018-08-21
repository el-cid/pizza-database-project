 customerid |   name    |       address       | paymentcategory | areacode | phone |        email        
------------+-----------+---------------------+-----------------+----------+-------+---------------------
          1 | Ann B     | Big Street 3, 115   | cash            | A03      | 12345 | Bigs@tpmail.com
          2 | Thomas K  | Dark Alley 2, A3    | cash            | A01      | 23456 | Tkumbs@mtmail.com
          3 | Sally W   | Park Avenue 23, 25  | credit          | A03      | 12345 | 
          4 | William S | Big Street 12, 5    | credit          | A03      |       | xxsmith@hotmail.com
          5 | Liza U    | Market Square 3, 34 | cash            | A02      | 45678 | lisau@mymail.to
          6 | Mary T    | Narrow Road 4, 11B  | cash            | A02      |       | maryt@mymail.to
          7 | Albert E  | Narrow Road 8, 101B | credit          | A02      | 12675 | albert@tpmail.com
          8 | Sally D   | White Alley 116 B 2 | cash            | A01      | 54321 | 
          9 | Peter J   | White Alley 16 C 2  | credit          | A01      | 55666 | jonesp@tuelip.com
         10 | John L    | Park Lane, 7 A 3    | cash            | A03      | 12225 | lennon@tuelip.com
         11 | Paul M    | Park Lane, 16 A 12  | credit          | A03      | 33345 | paulmas@mymail.to
         12 | Liza M    | Narrow Road 4, 13B  | cash            | A02      | 44445 | minelli@ppmail.com
         13 | Frank S   | Park Lane, 9 A 1    | cash            | A03      | 11112 | 
         14 | Harry L   | Rocky Road 10       | credit          | A01      |       | metoo@mymail.to
         15 | Daniel S  | Park Lane 1         | credit          | A03      | 12233 | unknown@tpmail.com
         16 | Wong W    | Park Lane 6         | credit          | A03      | 99123 | wwwwo@tpmail.com
         17 | Rita L    | Rocky Road 10       | credit          | A01      | 13346 | rital@yourmail.fro
         18 | Chun L    | Rocky Road 3        | credit          | A01      |       | liuchu@farmail.go
(18 rows)

 customerid |   name    |       address       | paymentcategory | areacode | phone |        email        
------------+-----------+---------------------+-----------------+----------+-------+---------------------
          1 | Ann B     | Big Street 3, 115   | cash            | A03      | 12345 | Bigs@tpmail.com
          2 | Thomas K  | Dark Alley 2, A3    | cash            | A01      | 23456 | Tkumbs@mtmail.com
          3 | Sally W   | Park Avenue 23, 25  | credit          | A03      | 12345 | NULL;
          4 | William S | Big Street 12, 5    | credit          | A03      | NULL; | xxsmith@hotmail.com
          5 | Liza U    | Market Square 3, 34 | cash            | A02      | 45678 | lisau@mymail.to
          6 | Mary T    | Narrow Road 4, 11B  | cash            | A02      | NULL; | maryt@mymail.to
          7 | Albert E  | Narrow Road 8, 101B | credit          | A02      | 12675 | albert@tpmail.com
          8 | Sally D   | White Alley 116 B 2 | cash            | A01      | 54321 | NULL;
          9 | Peter J   | White Alley 16 C 2  | credit          | A01      | 55666 | jonesp@tuelip.com
         10 | John L    | Park Lane, 7 A 3    | cash            | A03      | 12225 | lennon@tuelip.com
         11 | Paul M    | Park Lane, 16 A 12  | credit          | A03      | 33345 | paulmas@mymail.to
         12 | Liza M    | Narrow Road 4, 13B  | cash            | A02      | 44445 | minelli@ppmail.com
         13 | Frank S   | Park Lane, 9 A 1    | cash            | A03      | 11112 | NULL;
         14 | Harry L   | Rocky Road 10       | credit          | A01      | NULL; | metoo@mymail.to
         15 | Daniel S  | Park Lane 1         | credit          | A03      | 12233 | unknown@tpmail.com
         16 | Wong W    | Park Lane 6         | credit          | A03      | 99123 | wwwwo@tpmail.com
         17 | Rita L    | Rocky Road 10       | credit          | A01      | 13346 | rital@yourmail.fro
         18 | Chun L    | Rocky Road 3        | credit          | A01      | NULL; | liuchu@farmail.go
(18 rows)

 customerid |   name    |       address       | paymentcategory | areacode | phone |        email        
------------+-----------+---------------------+-----------------+----------+-------+---------------------
          1 | Ann B     | Big Street 3, 115   | cash            | A03      | 12345 | Bigs@tpmail.com
          2 | Thomas K  | Dark Alley 2, A3    | cash            | A01      | 23456 | Tkumbs@mtmail.com
          3 | Sally W   | Park Avenue 23, 25  | credit          | A03      | 12345 | NULL
          4 | William S | Big Street 12, 5    | credit          | A03      | NULL  | xxsmith@hotmail.com
          5 | Liza U    | Market Square 3, 34 | cash            | A02      | 45678 | lisau@mymail.to
          6 | Mary T    | Narrow Road 4, 11B  | cash            | A02      | NULL  | maryt@mymail.to
          7 | Albert E  | Narrow Road 8, 101B | credit          | A02      | 12675 | albert@tpmail.com
          8 | Sally D   | White Alley 116 B 2 | cash            | A01      | 54321 | NULL
          9 | Peter J   | White Alley 16 C 2  | credit          | A01      | 55666 | jonesp@tuelip.com
         10 | John L    | Park Lane, 7 A 3    | cash            | A03      | 12225 | lennon@tuelip.com
         11 | Paul M    | Park Lane, 16 A 12  | credit          | A03      | 33345 | paulmas@mymail.to
         12 | Liza M    | Narrow Road 4, 13B  | cash            | A02      | 44445 | minelli@ppmail.com
         13 | Frank S   | Park Lane, 9 A 1    | cash            | A03      | 11112 | NULL
         14 | Harry L   | Rocky Road 10       | credit          | A01      | NULL  | metoo@mymail.to
         15 | Daniel S  | Park Lane 1         | credit          | A03      | 12233 | unknown@tpmail.com
         16 | Wong W    | Park Lane 6         | credit          | A03      | 99123 | wwwwo@tpmail.com
         17 | Rita L    | Rocky Road 10       | credit          | A01      | 13346 | rital@yourmail.fro
         18 | Chun L    | Rocky Road 3        | credit          | A01      | NULL  | liuchu@farmail.go
(18 rows)

