#!/bin/bash
#Gracias a Bing.com por no bloquear las IP, PoC inspirada originalmente en "Goofile.py".
#S.W.R. creada para macOS 10.13.

#Colores tput
uno=$(tput setaf 1)
dos=$(tput setaf 2)
tres=$(tput setaf 3)
cuatro=$(tput setaf 4)
cinco=$(tput setaf 15)
seis=$(tput setaf 6)
siete=$(tput setaf 15)
ocho=$(tput setaf 8)
nueve=$(tput setaf 9)
diez=$(tput setaf 10)
fin=$(tput sgr0)

usersagents ()
{
useragentb=$(echo 'Mozilla/5.0 (iPad; CPU OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53 \n
Mozilla/5.0 (iPad; CPU OS 9_0 like Mac OS X) AppleWebKit/601.1.17 (KHTML, like Gecko) Version/8.0 Mobile/13A175 Safari/600.1.4 \n
Mozilla/5.0 (iPad; CPU OS 9_3_3 like Mac OS X) AppleWebKit/601.1 (KHTML, like Gecko) CriOS/50.0.2661.95 Mobile/13G34 Safari/601.1.46 \n
Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 \n
Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 \n
Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 \n
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 \n
Mozilla/5.0 (Windows NT 10.0; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0 \n
Mozilla/5.0 (Windows NT 6.1; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0 \n
Mozilla/5.0 (Linux; Android 6.0.1; SM-G920V Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.36 \n
Mozilla/5.0 (Linux; Android 5.1.1; SM-G928X Build/LMY47X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36 \n
Mozilla/5.0 (Windows Phone 10.0; Android 4.2.1; Microsoft; Lumia 950) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Mobile Safari/537.36 Edge/13.10586 \n
Mozilla/5.0 (Linux; Android 6.0.1; Nexus 6P Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.83 Mobile Safari/537.36 \n
Mozilla/5.0 (Linux; Android 6.0.1; E6653 Build/32.2.A.0.253) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.36 \n
Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.36 \n
Mozilla/5.0 (Linux; Android 7.0; Pixel C Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.98 Safari/537.36 \n
Mozilla/5.0 (Linux; Android 6.0.1; SGP771 Build/32.2.A.0.253; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.98 Safari/537.36 \n
Mozilla/5.0 (Linux; Android 5.1.1; SHIELD Tablet Build/LMY48C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Safari/537.36 \n
Mozilla/5.0 (Linux; Android 5.0.2; LG-V410/V41020c Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/34.0.1847.118 Safari/537.36 \n
Mozilla/5.0 (CrKey armv7l 1.5.16041) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.0 Safari/537.36 \n
Mozilla/5.0 (Linux; U; Android 4.2.2; he-il; NEO-X5-116A Build/JDQ39) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Safari/534.30 \n
Mozilla/5.0 (Linux; Android 4.2.2; AFTB Build/JDQ39) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.173 Mobile Safari/537.22 \n
AppleTV5,3/9.1.1 \n
Mozilla/5.0 (Nintendo WiiU) AppleWebKit/536.30 (KHTML, like Gecko) NX/3.0.4.2.12 NintendoBrowser/4.3.1.11264.US \n
Mozilla/5.0 (Windows Phone 10.0; Android 4.2.1; Xbox; Xbox One) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Mobile Safari/537.36 Edge/13.10586 \n
Mozilla/5.0 (PlayStation 4 3.11) AppleWebKit/537.73 (KHTML, like Gecko) \n
Mozilla/5.0 (X11; U; Linux armv7l like Android; en-us) AppleWebKit/531.2+ (KHTML, like Gecko) Version/5.0 Safari/533.2+ Kindle/3.0+ \n
Mozilla/5.0 (Linux; U; en-US) AppleWebKit/528.5+ (KHTML, like Gecko, Safari/528.5+) Version/4.0 Kindle/3.0 (screen 600x800; rotate)'| grep -v ^$)

random=$(echo $(($RANDOM%27)))
useragent=$(echo -e $useragentb | sed -n "${random}p")
}

usersagents

clear && echo "
 $(tput setaf 52)                (                                 )                                 ) 
 $(tput setaf 88)           (    )\ )   (   (     (  (      (   ( /(   (      (              (    ( /( 
 $(tput setaf 124) (   \`  )  )\  (()/(  ))\  )(    )\))(    ))\  )\())  )(    ))\ \`  )    (   )(   )\())
 $(tput setaf 172) )\  /(/( ((_)  ((_))/((_)(()\  ((_)()\  /((_)((_)\  (()\  /((_)/(/(    )\ (()\ (_))/ 
 $(tput setaf 178)((_)((_)_\ (_)  _| |(_))   ((_) _(()((_)(_))  | |(_)  ((_)(_)) ((_)_\  ((_) ((_)| |_  
 $(tput setaf 15)(_-<| '_ \)| |/ _\` |/ -_) | '_| \ V  V // -_) | '_ \ | '_|/ -_)| '_ \)/ _ \| '_||  _| 
 /__/| .__/ |_|\__,_|\___| |_|    \_/\_/ \___| |_.__/ |_|  \___|| .__/ \___/|_|   \__| 
     |_|                                                        |_|                    

$nueve ((((((((((($siete S.W.R. search for files, emails and directories on websites $nueve))))))))))))$fin
$nueve (((((((((((((((((((((((($siete Script by Jonathan Burgos Saldivia$nueve )))))))))))))))))))))))))$fin 

$(tput setaf 15) --------------------------------------------------------------------------------------$(tput sgr0)
"

read -p " Target website: $cinco" -t 60 -e web
echo $fin
web=$(echo "$web" | perl -pe 's/http:\/\/www.//g;s/https:\/\/www.//g;s/http:\/\///g;s/https:\/\///g;s/\/$//' )
webs=$(echo "$web" | perl -pe 's/http:\/\/www.//g;s/https:\/\/www.//g;s/http:\/\///g;s/https:\/\///g;s/\/$//;s/\//-/g' )

if [ -z "$webs" ]; then
	echo -e $uno "\n Time is over.\n$fin"
	exit 2
fi

#Creacion de carpetas

rm -rf ~/Desktop/Reports\ S.W.R./.temp 2>/dev/null
mkdir ~/Desktop/Reports\ S.W.R. 2>/dev/null
mkdir ~/Desktop/Reports\ S.W.R./$webs 2>/dev/null
mkdir ~/Desktop/Reports\ S.W.R./.temp 2>/dev/null

#Bucle con Curl

for page in 1 41 81 121 161 201 241 281 321 361 401 441 481 521 561 601 641 681 721 761 801 841 881 821 861 901 941 981 1021
do

#Busqueda de archivos

	curl -sA "$useragent" \
	--url "www.bing.com/search?q=site:$web+filetype:(pdf+OR+ps+OR+dwf+OR+kml+OR+kmz+OR+xls+OR+ppt+OR+doc+OR+rtf+OR+swf+OR+txt+OR+sql)&first=$page&count=40&filter=0" \
	-o ~/Desktop/Reports\ S.W.R./.temp/web.html && \
	cat ~/Desktop/Reports\ S.W.R./.temp/web.html | awk 'NR!~/^(48)$/' | perl -pe 's/\s/\n/g' | grep "href=\"" \
	| grep -v "&amp" | grep "$web"| uniq | tr -d '"' >> ~/Desktop/Reports\ S.W.R./.temp/web2.html && \
more ~/Desktop/Reports\ S.W.R./.temp/web2.html | perl -pe 's/href=//g' | grep "$web"|sort| uniq | cut -f1 -d";" | perl -pe 's/http:\/\/www.//g;s/https:\/\/www.//g;s/http:\/\///g;s/https:\/\///g;s/\/$//' \
> ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt"

#Busqueda de correos

curl -sA "$useragent" \
--url "www.bing.com/search?q=site:*$web+inbody:mail&first=$page&count=40&filter=0" -o ~/Desktop/Reports\ S.W.R./.temp/Mails.html && \
cat ~/Desktop/Reports\ S.W.R./.temp/Mails.html  \
| perl -pe 's/"|{|}|:|;|,|\(|\)/\n/g;s/\s/\n/g;s/<strong>//g;s/</\n/g' \
| grep -E '@.*\.' | grep -v "/" | sort | uniq >> ~/Desktop/Reports\ S.W.R./.temp/Mails.txt
#exportar a resultado final
cat ~/Desktop/Reports\ S.W.R./.temp/Mails.txt  | sort | uniq | perl -pe 's/\.$//g' > ~/Desktop/Reports\ S.W.R./$webs/"$webs-Mails.txt"

#Funcion suma

suma ()
{
if [ -f ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" ]; then
total=$(wc -l ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | awk '{print $1}')
else
total=0
fi

if [ -f ~/Desktop/Reports\ S.W.R./$webs/"$webs-Mails.txt" ]; then
lines=$(wc -l ~/Desktop/Reports\ S.W.R./$webs/"$webs-Mails.txt" | awk '{print $1}')
else
lines=0
fi

if [ -f ~/Desktop/Reports\ S.W.R./"$webs"/"$webs-Crawled1.txt" ]; then
craw=$(wc -l ~/Desktop/Reports\ S.W.R./"$webs"/"$webs-Crawled1.txt" | awk '{print $1}')
else
craw=0
fi
}

suma 

totalinicial=$(($total + $lines + $craw))

#Cortar bucle

if [[ "$totalinicial" == "$totalfinal" ]]; then
break
fi

#Busqueda de directorios

curl -sA "$useragent" \
--url "https://www.bing.com/search?q=site:$web&first=$page&count=40&filter=0" -o ~/Desktop/Reports\ S.W.R./.temp/webc.html && \
cat ~/Desktop/Reports\ S.W.R./.temp/webc.html | awk 'NR!~/^(48)$/' | perl -pe 's/\s/\n/g' | grep "href=\"" | grep "$web" | tr -d '"'| perl -pe 's/href=//g'| grep -v "&amp;" | grep -v "=" | grep -o ".*/" | sort | uniq >> ~/Desktop/Reports\ S.W.R./.temp/web2c.html && \
more ~/Desktop/Reports\ S.W.R./.temp/web2c.html | perl -pe 's/href=//g' | grep "$web" |sort| uniq | cut -f1 -d";" \
> ~/Desktop/Reports\ S.W.R./$webs/"$webs-Crawled".txt

#Crear resultado final de directorios

cat ~/Desktop/Reports\ S.W.R./"$webs"/"$webs-Files.txt" ~/Desktop/Reports\ S.W.R./"$webs"/"$webs-Crawled.txt" | perl -pe 's/http:\/\/www.//g;s/https:\/\/www.//g;s/http:\/\///g;s/https:\/\///g' | sed 's%/[^/]*$%/%' | sed 's/\/*$//g' | sort | uniq > ~/Desktop/Reports\ S.W.R./"$webs"/"$webs-Crawled1.txt"

#Suma de resultados encontrados

suma

totalfinal=$(($total + $lines + $craw))

#Resultados en directo

echo -ne " $cinco$page$fin results;$cinco $total$fin files, $cinco$lines$fin mails and $cinco$craw$fin directories found.\r"

done

echo -ne " \033[0K\r" && echo -ne " \033[0K\r"

inicio=`expr $total / 3`
for i in $(eval echo "{$inicio..$total}")
do
echo -ne " $cinco$i$fin files found.\r"
sleep .000001
inicio=$(echo "$total")
done

echo ""

doc=$(cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | egrep -i '.doc *$' | uniq | wc -l | awk '{print $1}')
if [ "$doc" != 0 ]
then
echo -ne " $cinco$doc$fin doc found.\n"
fi

docx=$(cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | egrep -i '.docx *$' | uniq | wc -l | awk '{print $1}')
if [ "$docx" != 0 ]
then
echo -ne " $cinco$docx$fin docx found.\n"
fi

pdf=$(cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | egrep -i '.pdf *$' | uniq | wc -l | awk '{print $1}')
if [ "$pdf" != 0 ]
then
echo -ne " $cinco$pdf$fin pdf found.\n"
fi

ppt=$(cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | egrep -i '.ppt *$' | uniq | wc -l | awk '{print $1}')
if [ "$ppt" != 0 ]
then
echo -ne " $cinco$ppt$fin ppt found.\n"
fi

pptx=$(cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | egrep -i '.pptx *$' | uniq | wc -l | awk '{print $1}')
if [ "$pptx" != 0 ]
then
echo -ne " $cinco$pptx$fin pptx found.\n"
fi

rtf=$(cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | egrep -i '.rtf *$' | uniq | wc -l | awk '{print $1}')
if [ "$rtf" != 0 ]
then
echo -ne " $cinco$rtf$fin rtf found.\n"
fi

sql=$(cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | egrep -i '.sql *$' | uniq | wc -l | awk '{print $1}')
if [ "$sql" != 0 ]
then
echo -ne " $cinco$sql$fin sql found.\n"
fi

txt=$(cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | egrep -i '.txt *$' | uniq | wc -l | awk '{print $1}')
if [ "$txt" != 0 ]
then
echo -ne " $cinco$txt$fin txt found.\n"
fi

xls=$(cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | egrep -i '.xls *$' | uniq | wc -l | awk '{print $1}')
if [ "$xls" != 0 ]
then
echo -ne " $cinco$xls$fin xls found.\n"
fi

xlsx=$(cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | egrep -i '.xlsx *$' | uniq | wc -l | awk '{print $1}')
if [ "$xlsx" != 0 ]
then
echo -ne " $cinco$xlsx$fin xlsx found.\n"
fi

otros=$(cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | egrep -vi '.pdf *$|.ps *$|.dwf *$|.kml *$|.kmz *$|.xls *$|.xlsx *$|.ppt *$|.pptx *$|.doc *$|.docx *$|.rtf *$|.swf *$|.txt *$|.sql *$' | uniq | wc -l | awk '{print $1}')
if [ "$otros" != 0 ]
then
echo -ne " $cinco$otros$fin others found.\n"
fi

Mails=$(wc -l ~/Desktop/Reports\ S.W.R./$webs/"$webs-Mails.txt" | awk '{print $1}')
if [ "$Mails" != 0 ]
then
echo -ne " $cinco$Mails$fin mails found.\n"
fi

if [ "$craw" != 0 ]
then
echo -ne " $cinco$craw$fin directories found.\n"
fi

echo

#Borrando archivos temporales y otras cosas

mv ~/Desktop/Reports\ S.W.R./"$webs"/"$webs-Crawled1.txt"  ~/Desktop/Reports\ S.W.R./"$webs"/"$webs-Directories.txt" && rm -rf ~/Desktop/Reports\ S.W.R./.temp ~/Desktop/Reports\ S.W.R./"$webs"/"$webs"-Crawled*

cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt" | grep -q '[a-zA-Z]' || rm -rf ~/Desktop/Reports\ S.W.R./$webs/"$webs-Files.txt"

cat ~/Desktop/Reports\ S.W.R./$webs/"$webs-Mails.txt" | grep -q '[a-zA-Z]' || rm -rf ~/Desktop/Reports\ S.W.R./$webs/"$webs-Mails.txt"

cat ~/Desktop/Reports\ S.W.R./"$webs"/"$webs-Directories.txt" | grep -q '[a-zA-Z]' || rm -rf ~/Desktop/Reports\ S.W.R./"$webs"/"$webs-Directories.txt"
