'Z' < 'a'     					-- True, Ascii
"abc" <= "ab" 					-- False, taille de la chaîne
"abc" >= "ac" 					-- False, b < c
1 + 2 * 3                       -- 7
5.0 - 4.2 / 2.1					-- 3.0
3 > 4 || 5 < 6 && not (7 /= 8)  -- False
if 6 < 10 then 6.0 else 10.0    -- 6.0

18 mod 7/2 						-- div (mod 18 7) 2 -- Pas de float
if 2 < 3 then 3					-- if 2 < 3 then 3 else 2
1 < 2 and 5 > 3					-- 1 < 2 && 5 > 3
6 + 7 div 2						-- div (6+7) 2
4. + 3.5						-- 4.0 + 3.5
1.0 < 2.0 or 3 > 4				-- 1.0 < 2.0 || 3 > 4
1.0 = 3							-- 1.0 == 3
if 4 > 4.5 then 3.0 else 'a'	-- if 4 > 4.5 then 'b' else 'a'

2 < 1							-- Bool
4.2 + 2.0						-- Double
4.2 + 2							-- Double
4 + 2 							-- Int ou Double
(4::Int) + 2					-- Int
floor 2.3						-- Int
fromIntegral 3					-- Double
succ 2.2						-- Double
succ 2							-- Int
succ (2::Int)					-- Int
succ 'b'						-- Char
show 2							-- String
show 2.4						-- String
