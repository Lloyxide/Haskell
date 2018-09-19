[1, 2, 3] !! ([1, 2, 3] !! 1) 		-- 3
head [1, 2, 3] 				-- 1
tail [1, 2, 3]				-- [2, 3]
"a":["b","c"]				-- ["a", "b", "c"]
"abc" ++ "d"				-- "abcd"
tail "abc" ++ "d"			-- "bcd"
  head "abc" : "d"			-- "ad"
([1, 2, 3] !! 2 : []) ++ [3, 4] 	-- [3, 3, 4]
[3, 2] ++ [1, 2, 3] !! head [1, 2] : []	-- [3, 2, 2]

head []					-- Liste vide
tail []					-- Liste vide
["n"]:["o", "n", "!"]			-- "n":["o", "n", "!"]
1 ++ 2					-- "1" ++ "2"
head "abc" ++ "d"			-- head "abc" : "d"


['a', 'b', 'c']	               		-- [Char] ou String
('a', 'b', 'c')				-- (Char, Char, Char)
[(False, 0), (True, 1)]			-- [(Bool, Int)]
([False, True], [0, 1])			-- ([Bool], [Int]) 
[tail, init, reverse]			-- 
(1.5,("3",[4,5]))			-- (Double, (Char, [Int]))
[[1,2],[]]				-- [[Int]]
(['a','b'],[[],[1,2,3]])		-- ([Char], [[Int]])
