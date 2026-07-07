echo "Student Grade Calculater"
# Accept marks for 5 subjects

echo "Enter marks for Subject 1:"
read sub1

echo "Enter marks for Subject 2:"
read sub2

echo "Enter marks for Subject 3:"
read sub3

echo "Enter marks for Subject 4:"
read sub4

echo "Enter marks for Subject 5:"
read sub5

# Calculate total marks
total=$((sub1 + sub2 + sub3 + sub4 + sub5))

# Calculate average marks
average=$((total / 5))

# Display total and average
echo "Total Marks = $total"
echo "Average Marks = $average"

# Display grade using if condition

if [ $average -ge 90 ] && [ $average -le 100 ]
then
    grade="A"

elif [ $average -ge 75 ] && [ $average -le 89 ]
then
    grade="B"

elif [ $average -ge 60 ] && [ $average -le 74 ]
then
    grade="C"

elif [ $average -ge 50 ] && [ $average -le 59 ]
then
    grade="D"

else
    grade="FAIL"
fi

echo "Grade = $grade"
