 function guessinggame {
echo "The guessing GAME"
echo ""
echo "Guess the number of files in the current directory."
echo ""
echo ""
echo "So Make a guess?????"

read respond
 actual_number=$( ls -l | wc -l )

for res in $respond 
do  
if [[  $respond -eq $actual_number ]]
then
	echo "woha , You are best at Guessing and your guess was: $respond"
echo ""
elif [[ $respond -lt $actual_number ]]
then 
	echo "Guessed number is $respond low"
        echo " Try again "
echo ""

guessinggame
echo " "

else
echo "Guessed number is $respond high,try coming up with low"
echo "Try again"

guessinggame
echo ""

fi
done

}

