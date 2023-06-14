function s { 
	switch ($args[-1]){
	'y' {
		$url = "https://www.youtube.com/results?search_query="
	     	echo "Searching on youtube......."
}
	'g' {
		$url = "https://www.google.com/search?q="
		echo "Searching on google......."}

	'a' {
 		$url="https://www.amazon.in/s?k="
 		echo "searching on amazon...." }
}
foreach($i in $args){ $search += $i + "+"}
$search = $search.TrimEnd("+"+$args[-1])
Start-Process $url$search
}
