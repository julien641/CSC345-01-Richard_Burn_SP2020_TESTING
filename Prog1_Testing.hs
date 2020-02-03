{--###########################################
Assigment: Homework 1
created By: Julien Lanoue
Contribution:
Date:2/3/2020
Last update:2/3/2020 at 5:00Pm
Version: 1.0.0.0
###########################################--}
module Prog1_test where
import Control.Exception
import Prog1
catchAny :: IO a -> (SomeException -> IO a) -> IO a
catchAny = Control.Exception.catch

test_isPositive :: Integer -> Bool
test_dividesEvenlyByFive :: Integer ->Bool
test_middle :: Int ->Bool
test_nor :: Int -> Bool
test_triangleArea :: Int -> Bool
test_ceilingDecimal :: Int ->Bool
test_letterGrade ::Int -> Bool
test_averageThree :: Int ->Bool
test_howManyAboveAverage ::Int->Bool
test_howManyWithinThreshold :: Int->Bool

test_isPositive x =
 if (isPositive (-1) == False)  &&
       (isPositive 1  == True) &&
        (isPositive (-10000) ==False) &&
         (isPositive 10  == True)
  then  True
  else 1==1

test_dividesEvenlyByFive x =
  if (dividesEvenlyByFive 10 == True)&&
     dividesEvenlyByFive 4  == False&&
   dividesEvenlyByFive 1  == False&&
   dividesEvenlyByFive (-10) == True&&
   dividesEvenlyByFive 5 ==True
       then True 
            else False


test_middle x=
  if middle 1 2 3==2 && middle 4 9 2 ==4 && middle 96 74 100 ==96 && middle 100 40 50 == 50 
      && middle (-100) (-50) 10 ==(-50)
    then  True
     else False

test_nor x =if nor False False ==True && nor False True ==False && nor True False == False && nor True True ==False
    then  True
     else False


test_triangleArea x =
  if triangleArea 50 40 ==1000 &&
    triangleArea 40 10 ==200 
     then  True
       else False

test_ceilingDecimal x =
     if ceilingDecimal 1 ==1 &&
    ceilingDecimal 3.42 ==4 &&
    ceilingDecimal (-10000.10) == (-10000)
    then  True
     else False

test_letterGrade x =
  if letterGrade 100 =="A" &&
  letterGrade 92 =="A-" &&
  letterGrade 88 =="B+" &&
  letterGrade 85 =="B" &&
  letterGrade 78 =="C+" &&
  letterGrade 75 =="C" &&
  letterGrade 69 =="D+" &&
  letterGrade 63 =="D" &&
  letterGrade 61 =="D-" &&
  letterGrade 10 =="F" &&
  letterGrade (-100) == "F"
    then  True
     else False

test_averageThree x =
    if averageThree 1 2 3 == 2 &&
      averageThree 3 3 3 ==3
            then  True
     else False
test_howManyAboveAverage x =
    if howManyAboveAverage 3 2 1 ==  1 &&
        howManyAboveAverage 10 9 1 == 2 &&
        howManyAboveAverage 100 1 2 == 1 
            then  True
     else False
test_howManyWithinThreshold x =
    if howManyWithinThreshold 3 2 1 2 ==  3 &&
        howManyWithinThreshold 10 9 1 2 == 0 &&
        howManyWithinThreshold 10 4 9 2 == 1 &&
        howManyWithinThreshold 10 10 1 3 == 2
        then  True
          else False



main :: IO ()
main = do 
putStrLn "1.Testing isPositive"
if test_isPositive 1 == True
  then putStrLn "does work"
    else putStrLn "does not work"

putStrLn "2.dividesEvenlyByFive"
if test_dividesEvenlyByFive 1==True
  then putStrLn "does work"
   else putStrLn "does not work"

putStrLn "3.test_middle"
if test_middle 1 ==True
  then putStrLn "does work"
    else putStrLn "does not work"

putStrLn "4.test_nor"
if test_nor 2 ==True
  then putStrLn "does work"
    else putStrLn "does not work"

putStrLn "5.test_triangleArea"
if test_triangleArea 2==True
  then putStrLn "does work"
    else putStrLn "does not work"

putStrLn "6.test_ceilingDecimal"
if test_ceilingDecimal 3  ==True
  then putStrLn "does work"
    else putStrLn "does not work"

putStrLn "7.test_letterGrade"
if test_letterGrade 2==True
  then putStrLn "does work"
    else putStrLn "does not work"

putStrLn "8.test_averageThree"
if test_averageThree 3 ==True
  then putStrLn "does work"
    else putStrLn "does not work"

putStrLn "9.test_howManyAboveAverage"
if test_howManyAboveAverage  23 ==True
  then putStrLn "does work"
    else putStrLn "does not work"

putStrLn "10.test_howManyWithinThreshold"
if test_howManyWithinThreshold 2 ==True
  then putStrLn "does work"
    else putStrLn "does not work"