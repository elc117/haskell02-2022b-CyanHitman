import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  (svgCircle 250 250 50 "rgb(0, 255, 255, 1)") ++
  (svgCircle 70 50 82 "rgb(139, 0, 139, 0.9)") ++
  (svgCircle 77 150 45 "rgb(255, 255, 0, 1.5)") ++
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll