TFQUIZ=("This is question number 1.T"
        "This is question number 2.T"
        "This is question number 3.T"
        "This is question number 4.T"
        "This is question number 5.T"
        "This is question number 6.T"
        "This is question number 7.T"
        "This is question number 8.T"
        "This is question number 9.T"
	"This is question number 11.F"
	"This is the final question.T")

SCORE=0

for i in "${TFQUIZ[@]}";
do IFS="." read question ans <<< "$i"
read -p "$question (T/F)? " usrans
if [[ $usrans == $ans ]];
then
((SCORE++))
echo "Correct"
else
echo "Incorrect"
fi
done
echo "You Scored $SCORE out of 11."
