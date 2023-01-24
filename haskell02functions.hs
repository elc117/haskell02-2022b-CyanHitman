-- Prática 02 de Haskell
-- Nome: Gabriel da Silva França

--1-----
tempAlta :: Float -> Bool
tempAlta t = t > 37.8

hasFever :: [Float] -> [Float]
hasFever = filter tempAlta

--2-----

hasFever' :: [Float] -> [Float]
hasFever' = filter (\x -> x > 37.8)


--3-----
itemize :: [String] -> [String]
itemize = map (\x -> "<li>" ++ x ++ "</li>")

--4----
circleArea :: Float -> Float
circleArea r = pi * r^2

bigCircles :: Float -> [Float] -> [Float]
bigCircles prm retorno = filter (\raios -> circleArea raios > prm) retorno

--5----
quarentena :: [(String,Float)] -> [(String,Float)]
quarentena = filter (\(_, tp) -> tp > 37.8)

--6----
agesIn :: [Int] -> Int -> [Int]
agesIn ret ref = map (\anos -> ref - anos) ret

--7----
super :: String -> String
super p = if (elem 'A' p) then "Super" ++ p else p

changeNames :: [String] -> [String]
changeNames = map (\h -> super h)



--8----
onlyShorts :: [String] -> [String]
onlyShorts = filter (\s -> length s < 5)