PROMPT='%B%F{cyan}%1~%f %F{yellow }$%f %b'
alias slcm="open https://slcm.manipal.edu"
alias pyvenv="source /Users/mahadevanaiduparimi/Downloads/PYTHON/bin/activate"
alias python3="python3.10"
alias codepy="code /Users/mahadevanaiduparimi/Downloads/PYTHON"
alias codempy="code /Users/mahadevanaiduparimi/Downloads/µ-PYTHON"
alias codess="code /Users/mahadevanaiduparimi/Downloads/SHELL_SCRIPT"
alias codeard="code /Users/mahadevanaiduparimi/Downloads/ARDUINO"
alias drive="open https://drive.google.com/drive/my-drive"
alias tcad="open https://www.tinkercad.com/dashboard"
alias wokwi="open https://wokwi.com/projects/new/arduino-uno"
alias oe="cd ~/Downloads/Linux_OE"
alias y="open https://www.youtube.com"
alias ss="cd /Users/mahadevanaiduparimi/Downloads/SHELL_SCRIPT"
alias g="open https://www.google.com"
alias n="open https://www.netflix.com"
alias ghub="open -u https://github.com/mahadevparimi"
alias tms="open /Applications/Microsoft\ Teams.app"
alias matlab="open /Applications/MATLAB_R2023a.app"
alias myname="echo mahadev"
alias rosw="cd ~/Downloads/ROS2_WS"
alias deskhide="defaults write com.apple.finder CreateDesktop false ; killall Finder"
alias deskunhide="defaults write com.apple.finder CreateDesktop true ; killall Finder"
alias clr="clear"
alias ub="multipass shell elemental-tayra && open /Applications/Microsoft\ Remote\ Desktop.app"
alias ob="code ~/.zshrc"
alias sb="source ~/.zshrc"
alias w="open /Applications/WhatsApp.localized/WhatsApp.app"
alias show="echo $(pwd); open $(pwd)"
alias f360="open /Users/mahadevanaiduparimi/Applications/Autodesk\ Fusion\ 360.app"
alias yt="python3 /Users/mahadevanaiduparimi/Downloads/PYTHON/yt_downloader.py"
alias mute="volume 0"
alias ports="ls /dev/tty.*"

opz2_addr=8c-64-a2-bc-84-90
mi11x_addr=08-1c-6e-3a-b2-6d
op11r_addr=2c-a7-ef-54-10-b0

alias bt1=" blueutil -p 1"
alias bt0="blueutil -p 0"
alias btc="bt1 ; blueutil --connect $opz2_addr"
alias btd="bt1 ; blueutil --disconnect $opz2_addr"
alias wifi1="networksetup -setairportpower en0 on"
alias wifi0="networksetup -setairportpower en0 off"
alias hot1="bt1 && blueutil --connect $op11r_addr"
alias hot0="wifi0 && wifi1 && bt1 && blueutil --disconnect $op11r_addr"
alias hotc="hot1 ; wifi1 ;  networksetup -setairportnetwork en0 Hotspot_Naadhe Ma311203"

export OPENSSL_ROOT_DIR=/opt/homebrew/opt/openssl@3
export OPENSSL_ROOT_DIR=/opt/homebrew/opt/openssl@3
export OPENSSL_ROOT_DIR=/opt/homebrew/opt/openssl@

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

function run(){
dir=$(pwd)
case "$1" in
 "py")
 cd "/Users/mahadevanaiduparimi/Downloads/PYTHON"
 python3 $(ls -t | head -1) ;;
 "ss")
 cd "/Users/mahadevanaiduparimi/Downloads/SHELL_SCRIPT"
 bash $(ls -t | head -1) ;;
 * ) 
 echo "$1 not available";;
 esac
cd "$dir"
}

function volume(){  
osascript -e "set Volume $1"
}

function py(){
     cd ~/Downloads/PYTHON;code .;touch $1.py;code $1.py;cd -
}

function ard(){

cd ~/Downloads/ARDUINO

if [[ $1 == "" ]]
then
    open ~/Downloads/ARDUINO
elif [[ $1 == "rm" ]]
then
    rm -r $2
else

code . ; mkdir $1 ;
echo "

#define 
int var = ;

void setup(){

pinMode(,OUTPUT);
pinMode(,INPUT_PULLUP);

}
void loop(){

digitalWrite(,1);

}" > $1/$1.ino
code $1/$1.ino 
fi

cd -
}

function change(){
src="$1"
files=$(ls *$src)
echo ${files[3]}

if [[ ${#src} -ne 0 && ${#files} -ne 0 ]]
then
    echo ;(ls) ;echo
    for i in $files
    do
    echo $i 1
        mv $i ${i%$src}$2
    done
    echo -e "Successfully changed $1 to $2 files \n"
    ls ; echo
elif [ ${#src} -eq 0 ]
then
    echo "Enter the current extension , new extension"
fi
}

function wa(){
msg=""
while [ $# != 1 ]
do
    msg+=$1%20
    shift
done

link="https://web.whatsapp.com/send?phone=+91$1&text=$msg"
open $link
}





