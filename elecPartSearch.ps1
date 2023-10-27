function s {
	$seperator="+"
	$condition=$False
	$ele_sites=@("https://www.amazon.in/s?k=",
	"https://makerbazar.in/search?q=",
	"https://www.flyrobo.in/index.php?route=product/search&search=",
	"https://robu.in/?post_type=product&product_cat=0&s=",
	"https://www.electronicscomp.com/index.php?route=product/search&search=")

	switch ($args[-1]){
	'y' {
		$url = "https://www.youtube.com/results?search_query="
	     	echo "Searching on youtube......."}
	'g' {
		$url = "https://www.google.com/search?q="
		echo "Searching on google......."}
	'a' {
 		$url=$ele_sites[0]
 		echo "searching on amazon...." }
	'm' {
 		$url=$ele_sites[1]
 		echo "searching on makerbazaar...."
		 }
	'f' {
 		$url=$ele_sites[2]
 		echo "searching on flyrobo...." }
	'r' {
 		$url=$ele_sites[3]
 		echo "searching on robu...." }
	'e' {
 		$url=$ele_sites[4]
 		echo "searching on electronicscomp...."
	}
	'all'{
		$condition=$True
		echo "searching on all webistes...."
	}
}
foreach($i in $args){ $search += $i + $seperator}
$search = $search.TrimEnd($seperator+$args[-1])
if ($condition){foreach($i in $ele_sites){ Start-Process $i$search}}
Else{Start-Process $url$search}
}