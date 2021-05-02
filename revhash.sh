#!/bin/bash
#More Example: https://cryptii.com/pipes/vigenere-cipher
clear
base64 -d <<<"H4sICASkgGAAAz8AhY5LCsMwDET3PsXQdYO2s08PkK3BYCjJNXz26OPULqHUC+vzNNIAPx/JfyRptrQCHGRrPIBMvo0IHNF6kBYQu46VQVJftHt0Zeil3xgWrL1G+SGXXANrjcL0Mg+5tcWz2H2T5x6fUQhm+Tr50P91l+Nh16uEz4wvuUO/XtTgNkg6AYqAq3Z5AQAA" | gunzip

if [[ $2 != "" ]]; then
	echo 'please use quote, example "sceq1 sceq1 sceq3", or "sceq1sceq2sceq3"'
	exit 2
elif [[ $1 == "" ]]; then
	echo "please give me a hash..."
	exit 2
else
	hash=`echo $1`
fi

###
### Functions
###
function binary {
	binary_space=`echo "$hash" | grep " "`
	if [[ $binary_space == "" ]]; then
		binaryresult=`echo "$hash" | sed 's/.\{8\}/& /g' | perl -lape '$_=pack"(B8)*",@F'`
	else
		binaryresult=`echo "$hash" | perl -lape '$_=pack"(B8)*",@F'`
	fi
	echo "result for binary: $binaryresult"
}
function b64 {
	b64=`echo "$hash" | base64 --decode`
	echo "result for base64: $b64"
}
function b32 {
	b32=`echo "$hash" | base32 --decode`
	echo "result for base32: $b32"
}
function hexa {
	hexa=`echo "$hash" | xxd -r -p`
	echo "result for hexa: $hexa"
	# for convert: echo "string" | xxd -p
}
function reverse {
	rev=`echo "$hash" | rev`
	echo "result for reverse:$rev"
}
function cesar {
	rot1=`echo "$hash" | tr 'b-za-aB-ZA-A' 'a-zA-Z'` #ROT-2
	echo "result for rot1: $rot1"
	echo "_______"
	rot2=`echo "$hash" | tr 'c-za-bC-ZA-B' 'a-zA-Z'` #ROT-2
	echo "result for rot2: $rot2"
	echo "_______"
	rot3=`echo "$hash" | tr 'd-za-cD-ZA-C' 'a-zA-Z'` #ROT-3
	echo "result for rot3: $rot3"
	echo "_______"
	rot4=`echo "$hash" | tr 'e-za-dE-ZA-D' 'a-zA-Z'` #ROT-4
	echo "result for rot4: $rot4"
	echo "_______"
	rot5=`echo "$hash" | tr 'f-za-eF-ZA-E' 'a-zA-Z'` #ROT-5
	echo "result for rot5: $rot5"
	echo "_______"
	rot6=`echo "$hash" | tr 'g-za-fG-ZA-F' 'a-zA-Z'` #ROT-6
	echo "result for rot6: $rot6"
	echo "_______"
	rot7=`echo "$hash" | tr 'h-za-gH-ZA-G' 'a-zA-Z'` #ROT-7
	echo "result for rot7: $rot7"
	echo "_______"
	rot8=`echo "$hash" | tr 'i-za-hI-ZA-H' 'a-zA-Z'` #ROT-8
	echo "result for rot8: $rot8"
	echo "_______"
	rot9=`echo "$hash" | tr 'j-za-iJ-ZA-I' 'a-zA-Z'`  #ROT-9
	echo "result for rot9: $rot9"
	echo "_______"
	rot10=`echo "$hash" | tr 'k-za-jK-ZA-J' 'a-zA-Z'` #ROT-10
	echo "result for rot10: $rot10"
	echo "_______"
	rot11=`echo "$hash" | tr 'l-za-kL-ZA-K' 'a-zA-Z'` #ROT-11
	echo "result for rot11: $rot11"
	echo "_______"
	rot12=`echo "$hash" | tr 'm-za-lM-ZA-L' 'a-zA-Z'` #ROT-12
	echo "result for rot12: $rot12"
	echo "_______"
	rot13=`echo "$hash" | tr 'n-za-mN-ZA-M' 'a-zA-Z'` #ROT-13
	echo "result for rot13: $rot13"
	echo "_______"
	rot14=`echo "$hash" | tr 'o-za-nO-ZA-N' 'a-zA-Z'` #ROT-14
	echo "result for rot14: $rot14"
	echo "_______"
	rot15=`echo "$hash" | tr 'p-za-oP-ZA-O' 'a-zA-Z'` #ROT-15
	echo "result for rot15: $rot15"
	echo "_______"
	rot16=`echo "$hash" | tr 'q-za-pQ-ZA-P' 'a-zA-Z'` #ROT-16
	echo "result for rot16: $rot16"
	echo "_______"
	rot17=`echo "$hash" | tr 'r-za-qR-ZA-Q' 'a-zA-Z'` #ROT-17
	echo "result for rot17: $rot17"
	echo "_______"
	rot18=`echo "$hash" | tr 's-za-rS-ZA-R' 'a-zA-Z'` #ROT-18
	echo "result for rot18: $rot18"
	echo "_______"
	rot19=`echo "$hash" | tr 't-za-sT-ZA-S' 'a-zA-Z'` #ROT-19
	echo "result for rot19: $rot19"
	echo "_______"
	rot20=`echo "$hash" | tr 'u-za-tU-ZA-T' 'a-zA-Z'` #ROT-20
	echo "result for rot20: $rot20"
	echo "_______"
	rot21=`echo "$hash" | tr 'v-za-uV-ZA-U' 'a-zA-Z'` #ROT-21
	echo "result for rot21: $rot21"
	echo "_______"
	rot22=`echo "$hash" | tr 'w-za-vW-ZA-V' 'a-zA-Z'` #ROT-22
	echo "result for rot22: $rot22"
	echo "_______"
	rot23=`echo "$hash" | tr 'x-za-wX-ZA-W' 'a-zA-Z'` #ROT-23
	echo "result for rot23: $rot23"
	echo "_______"
	rot24=`echo "$hash" | tr 'y-za-xY-ZA-X' 'a-zA-Z'` #ROT-24
	echo "result for rot24: $rot24"
	echo "_______"
	rot25=`echo "$hash" | tr 'z-za-yZ-ZA-Y' 'a-zA-Z'` #ROT-25
	echo "result for rot25: $rot25"
}

function vigenere {
	hash=`echo $hash | tr -d ' '`
	keysize="abcdefghijklmnopqrstuvwxyz"
	m=-
	printf "passphrase to decrypt: ";read k
	code=`echo $k | tr -d ' ' | tr A-Z a-z | sed s/[^a-z]//g`
	printf "\n"
	for ((i=0;i<${#hash};i++)); do
	p1=${keysize%%${hash:$i:1}*}
	p2=${keysize%%${code:$((i%${#code})):1}*}
	vigeneredecode="${vigeneredecode}${keysize:$(((${#p1}${m:-}${#p2})%${#keysize})):1}"
	done
	echo "result for vigenere: "$vigeneredecode""
}

function morse {
	#Morse need space for space char, detect if space, if not is not a morse code
	detect_space=`echo $hash | grep " "`
	#Morse char
	#Latin
	Latin_A='.-'; Latin_B='-...'; Latin_C='-.-.'; Latin_D='-..'; Latin_E='.'; Latin_F='..-.'; Latin_G='--.'; Latin_H='....'; Latin_I='..'; Latin_J='.---'; Latin_K='-.-'; Latin_L='.-..'; Latin_M='--';
	Latin_N='-.'; Latin_O='---'; Latin_P='.--.'; Latin_Q='--.-'; Latin_R='.-.'; Latin_S='...'; Latin_T='-'; Latin_U='..-'; Latin_V='...-'; Latin_W='.--'; Latin_X='-..-'; Latin_Y='-.--'; Latin_Z='--..';
	#Numbers 
	Number_0='-----'; Number_1='.----'; Number_2='..---'; Number_3='...--'; Number_4='....-'; Number_5='.....'; Number_6='-....'; Number_7='--...'; Number_8='---..'; Number_9='----.';
	#Punctuation
	Punctuation_morsespace='#'
	Punctuation_dots='.-.-.-'; Punctuation_comma='--..--'; Punctuation_question_mark='..--..'; Punctuation_single_quote='.----.'; Punctuation_exclamation_mark='-.-.--'; Punctuation_slash='-..-.'; Punctuation_open_parenthesis='-.--.'; Punctuation_close_parenthesis='-.--.-'; Punctuation_ampersand='.-...'; Punctuation_colon='---...';
	Punctuation_semicolon='-.-.-.'; Punctuation_equal='-...-'; Punctuation_plus='.-.-.'; Punctuation_minus='-....-'; Punctuation_underscore='..--.-'; Punctuation_double_quote='.-..-.'; Punctuation_dollar='...-..-'; Punctuation_at='.--.-.'; Punctuation_reverse_question_mark='..-.-'; Punctuation_reverse_exclamation_mark='--...-';
	#international characters & digrams
	Int_char_A_V1='.-.-'; Int_char_A_V2='.--.-'; Int_char_C_V1='-.-..'; Int_char_H_V1='----'; Int_char_D_V1='..--.'; Int_char_E_V1='.-..-'; Int_char_E_V2='..-..';
	Int_char_G_V1='--.-.'; Int_char_I_V1='.---.'; Int_char_N_V1='--.--'; Int_char_O_V1='---.'; Int_char_S_V1='...-.'; Int_char_S_V2='.--..'; Int_char_U_V1='..--';
	#decode morse
	morsedecode=""; echo "?" > /tmp/.interogation;
	#split every char morse
	echo "${hash//' / '/' # '}" | tr " " '\n' > /tmp/.morse;
	while read line; do
			case $line in
				#Latin
				$Latin_A ) morsedecode=$(echo $morsedecode)a; ;; # 'a'
				$Latin_B ) morsedecode=$(echo $morsedecode)b; ;; # 'b'
				$Latin_C ) morsedecode=$(echo $morsedecode)c; ;; # 'c'
				$Latin_D ) morsedecode=$(echo $morsedecode)d; ;; # 'd'
				$Latin_E ) morsedecode=$(echo $morsedecode)e; ;; # 'e'
				$Latin_F ) morsedecode=$(echo $morsedecode)f; ;; # 'f'
				$Latin_G ) morsedecode=$(echo $morsedecode)g; ;; # 'g'
				$Latin_H ) morsedecode=$(echo $morsedecode)h; ;; # 'h'
				$Latin_I ) morsedecode=$(echo $morsedecode)i; ;; # 'i'
				$Latin_J ) morsedecode=$(echo $morsedecode)j; ;; # 'j'
				$Latin_K ) morsedecode=$(echo $morsedecode)k; ;; # 'k'
				$Latin_L ) morsedecode=$(echo $morsedecode)l; ;; # 'l'
				$Latin_M ) morsedecode=$(echo $morsedecode)m; ;; # 'm'
				$Latin_N ) morsedecode=$(echo $morsedecode)n; ;; # 'n'
				$Latin_O ) morsedecode=$(echo $morsedecode)o; ;; # 'o'
				$Latin_P ) morsedecode=$(echo $morsedecode)p; ;; # 'p'
				$Latin_Q ) morsedecode=$(echo $morsedecode)q; ;; # 'q'
				$Latin_R ) morsedecode=$(echo $morsedecode)r; ;; # 'r'
				$Latin_S ) morsedecode=$(echo $morsedecode)s; ;; # 's'
				$Latin_T ) morsedecode=$(echo $morsedecode)t; ;; # 't'
				$Latin_U ) morsedecode=$(echo $morsedecode)u; ;; # 'u'
				$Latin_V ) morsedecode=$(echo $morsedecode)v; ;; # 'v'
				$Latin_W ) morsedecode=$(echo $morsedecode)w; ;; # 'w'
				$Latin_X ) morsedecode=$(echo $morsedecode)x; ;; # 'x'
				$Latin_Y ) morsedecode=$(echo $morsedecode)y; ;; # 'y'
				$Latin_Z ) morsedecode=$(echo $morsedecode)z; ;; # 'z'
				#Numbers
				$Number_0 ) morsedecode=$(echo $morsedecode)0; ;; # '0'
				$Number_1 ) morsedecode=$(echo $morsedecode)1; ;; # '1'
				$Number_2 ) morsedecode=$(echo $morsedecode)2; ;; # '2'
				$Number_3 ) morsedecode=$(echo $morsedecode)3; ;; # '3'
				$Number_4 ) morsedecode=$(echo $morsedecode)4; ;; # '4'
				$Number_5 ) morsedecode=$(echo $morsedecode)5; ;; # '5'
				$Number_6 ) morsedecode=$(echo $morsedecode)6; ;; # '6'
				$Number_7 ) morsedecode=$(echo $morsedecode)7; ;; # '7'
				$Number_8 ) morsedecode=$(echo $morsedecode)8; ;; # '8'
				$Number_9 ) morsedecode=$(echo $morsedecode)9; ;; # '9'
				#Punctuation
				$Punctuation_dots ) morsedecode=$(echo $morsedecode)'.'; ;; # '.'
				$Punctuation_comma ) morsedecode=$(echo $morsedecode)','; ;; # ','
				$Punctuation_question_mark ) morsedecode=$(echo $morsedecode; cat /tmp/.interogation); ;; # '?'
				$Punctuation_single_quote ) morsedecode=$(echo $morsedecode)"'"; ;; # '''
				$Punctuation_exclamation_mark ) morsedecode=$(echo $morsedecode)'!'; ;; # '!'
				$Punctuation_slash ) morsedecode=$(echo $morsedecode)'/'; ;; # '/'
				$Punctuation_open_parenthesis ) morsedecode=$(echo $morsedecode)'('; ;; # '('
				$Punctuation_close_parenthesis ) morsedecode=$(echo $morsedecode)')'; ;; # ')'
				$Punctuation_ampersand ) morsedecode=$(echo $morsedecode)'&'; ;; # '&'
				$Punctuation_colon ) morsedecode=$(echo $morsedecode)':'; ;; # ':'
				$Punctuation_semicolon ) morsedecode=$(echo $morsedecode)';'; ;; # ';'
				$Punctuation_equal ) morsedecode=$(echo $morsedecode)'='; ;; # '='
				$Punctuation_plus ) morsedecode=$(echo $morsedecode)'+'; ;; # '+'
				$Punctuation_minus ) morsedecode=$(echo $morsedecode)'-'; ;; # '-'
				$Punctuation_underscore ) morsedecode=$(echo $morsedecode)'_'; ;; # '_'
				$Punctuation_double_quote ) morsedecode=$(echo $morsedecode)'"'; ;; # '"'
				$Punctuation_dollar ) morsedecode=$(echo $morsedecode)'$'; ;; # '$'
				$Punctuation_at ) morsedecode=$(echo $morsedecode)'@'; ;; # '@'
				$Punctuation_reverse_question_mark ) morsedecode=$(echo $morsedecode)'¿'; ;; # '¿'
				$Punctuation_reverse_exclamation_mark ) morsedecode=$(echo $morsedecode)'¡'; ;; # '¡'
				$Punctuation_morsespace ) morsedecode=$(echo $morsedecode)'#'; ;; # ' '
				#international characters & digrams
				$Int_char_A_V1 ) morsedecode=$(echo $morsedecode)'Ä'; ;; # 'Ä'
				$Int_char_A_V2 ) morsedecode=$(echo $morsedecode)'Ã'; ;; # 'Ã'
				$Int_char_C_V1 ) morsedecode=$(echo $morsedecode)'Ç'; ;; # 'Ç'
				$Int_char_H_V1 ) morsedecode=$(echo $morsedecode)'Ĥ'; ;; # 'Ĥ'
				$Int_char_D_V1 ) morsedecode=$(echo $morsedecode)'Ð'; ;; # 'Ð'
				$Int_char_E_V1 ) morsedecode=$(echo $morsedecode)'È'; ;; # 'È'
				$Int_char_E_V2 ) morsedecode=$(echo $morsedecode)'Ę'; ;; # 'Ę'
				$Int_char_G_V1 ) morsedecode=$(echo $morsedecode)'Ğ'; ;; # 'Ğ'
				$Int_char_I_V1 ) morsedecode=$(echo $morsedecode)'Ì'; ;; # 'Ì'
				$Int_char_N_V1 ) morsedecode=$(echo $morsedecode)'Ń'; ;; # 'Ń'
				$Int_char_O_V1 ) morsedecode=$(echo $morsedecode)'Ó'; ;; # 'Ó'
				$Int_char_S_V1 ) morsedecode=$(echo $morsedecode)'Ŝ'; ;; # 'Ŝ'
				$Int_char_S_V2 ) morsedecode=$(echo $morsedecode)'Ş'; ;; # 'Ş'
				$Int_char_U_V1 ) morsedecode=$(echo $morsedecode)'Ü'; ;; # 'Ü'
			* ) echo "no morse" > /dev/null; ;;
			esac
	done < /tmp/.morse
	morse_result=`echo "$morsedecode" | tr "#" ' ' | sed 's/ //g'`
	echo "result for morse: $morse_result"
}

echo "============================================="
echo "================ YOUR HASH =================="
echo "$hash"
echo "============================================="
echo "============================================="
echo "=============== REVERSE HASH ================"
echo "============================================="
echo "0) TEST ALL(exept decode methods)"
echo "1) Binary    2) Base64    3) Base32"
echo "4) Hexa      5) Cesar     6) Reverse"
echo "7) Morse"
echo "============================================="
echo "=============== DECODE HASH ================="
echo "============================================="
echo "8) Vigenere"
echo ''
echo -n "Choice: "
read choice
case $choice in
	0 )
	echo "_______"
	binary
	echo "_______"
	b64
	echo "_______"
	b32
	echo "_______"
	hexa
	echo "_______"
	cesar
	echo "_______"
	reverse
	echo "_______"
	;;
	1 )
	binary
	;;
	2 )
	b64
	;;
	3 )
	b32
	;;
	4 )
	hexa
	;;
	5 )
	cesar
	;;
	6 )
	reverse
	;;
	7 )
	morse
	;;
	8 )
	vigenere
	;;
	* )
		echo "bad code choice... Exit"
	;;
esac
