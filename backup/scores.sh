FILE=$1
echo "White wins"
grep "\[White \"Rusty Rival\"\]" $FILE -A 3 | grep "1-0" | wc -l
echo "Black wins"
grep "\[Black \"Rusty Rival\"\]" $FILE -A 3 | grep "0-1" | wc -l
echo "White losses"
grep "\[Black \"Rival" $FILE -A 3 | grep "0-1" | wc -l
echo "Black losses"
grep "\[White \"Rival" $FILE -A 3 | grep "1-0" | wc -l
echo "Draws"
grep "\[Result \"1/2-1/2\"\]" $FILE | wc -l

