function s(){
str1=""
condition=false
while [ $# != 1 ]
do
    str1+=$1+
    shift
    
done

ele_sites=(
    "https://www.amazon.in/s?k="
	"https://makerbazar.in/search?q="
	"https://www.flyrobo.in/index.php?route=product/search&search="
	"https://robu.in/?post_type=product&product_cat=0&s="
	"https://www.electronicscomp.com/index.php?route=product/search&search="
    )

case "$1" in
 "y" )
 str="https://www.youtube.com/results?search_query="
 echo "searching on youtube...." ;;
 "g" )
 str="https://www.google.com/search?q="
 echo "searching on google...." ;;
"a" )
 str=${ele_sites[1]}
 echo "searching on amazon...." ;;
 "m" )
 str=${ele_sites[2]}
 echo "searching on makerbazar...." ;;
 "f" )
 str=${ele_sites[3]}
 echo "searching on flyrobo...." ;;
 "r" )
 str=${ele_sites[4]}
 echo "searching on robu...." ;;
 "e" )
 str=${ele_sites[5]}
 echo "searching on electronicscomp...." ;;
 "u" )
  str="https://www.${str1%"+"}.com"
  echo "opening url $str ...." ; open $str ;;
 "all" )
 condition=true
 echo "searching on all websites...." ;;
 * ) 
 echo "no" ;;
 esac

if $condition
then
 for i in {1..5}
do
 open ${ele_sites[$i]}${str1%"+"}
done
elif [[ "$1" != "u" ]]
then
open $str${str1%"+"}
fi
}