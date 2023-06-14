function s(){
str1=""
while [ $# != 1 ]
do
    str1+=$1+
    shift
done

case $1 in
 "y" )
 str="https://www.youtube.com/results?search_query="
 echo "searching on youtube...." ;;
 "g" )
 str="https://www.google.com/search?q="
 echo "searching on google...." ;;
"a" )
 str="https://www.amazon.in/s?k="
 echo "searching on amazon...." ;;
 * ) ;;
esac
open $str${str1%"+"}
}