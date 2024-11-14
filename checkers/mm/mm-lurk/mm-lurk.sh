#!/usr/bin/zsh

bold=$(tput bold)
green='\033[0;32m'
normal='\033[0m'

if [[ $1 == "-i" ]] ; then
    lurk --preload src/mm-prelude.lurk ;
    exit 0
fi

if [[ $1 == "-d" ]] ; then

   if [[ (! "$#" == "2") ]] ; then
     echo "Wrong number of arguments"
     echo "Usage: $0 -d FILE" >&2 ;
     echo "where FILE is a lurk data file"
     exit 1
   fi

   if [[ (! -a $2) ]] ; then
     echo "File ${1} does not exist"
     echo "Usage: $0 -d FILE" >&2 ;
     echo "where FILE is a lurk data file"
     exit 1
   fi

   echo "${bold}"`src/mmdump.sh $2`"${normal}" ;
   exit 0
fi

if [[ (! "$#" == "3") ]] ; then
  echo "Wrong number of arguments"
  echo "Usage: $0 FILE LURK_DATA_DIR PROOF_ID" >&2 ;
  exit 1
fi

if [[ (! -a $1) ]] ; then
  echo "File ${1} does not exist"
  echo "Usage: $0 FILE LURK_DATA_DIR PROOF_ID" >&2 ;
  exit 1
fi

echo "\n• Generating lurk data from metamath database ${bold}${1}${normal}"

MM_LURK_DIR='.mm-lurk'
if [[ ! -d $MM_LURK_DIR ]] ; then
   mkdir $MM_LURK_DIR ;
fi

LOG_DIR=$MM_LURK_DIR/'log'
TMP_DIR=$MM_LURK_DIR/'tmp'

for d in  $LOG_DIR $TMP_DIR ; do
 if [[ ! -d $d ]] ; then 
   mkdir $d
 fi ;
done

[[ ! -d $2 ]] && {
   echo "Directory ${2} does not exist. Creating one" ;
   mkdir $2 
}

python3 src/mk_lurk_data.py $1 $TMP_DIR > $2/$1:t.lurk
[[ $? -eq 1 ]] && cat $2/$1:t.lurk && exit 1

for d in $TMP_DIR/* ; do 
   if [[ $d:t == $1:t:r ]] ; then
      [[ -a $LOG_DIR/$1:t:r.log ]] && rm -f $LOG_DIR/$1:t:r.log
      for i in $d/* ; do
         echo -ne "Parsing Lurk data for ${bold}${i:t}${normal}\033[0K\r" ;
         lurk load $i >> $LOG_DIR/$1:t:r.log 2>&1 ;
      done ;
   fi ;
done

if [[ -a $LOG_DIR/$1:t:r.log ]] ; then
   echo "File ${bold}${LOG_DIR}/${1:t:r}.log${normal} was generated"
   grep ^Error $LOG_DIR/$1:t:r.log 2>&1 ; 
   if [[ $? == 1 ]] ; then 
      echo "${green}No errors were found${normal}" ;
   fi 
fi

if [[ -a $2/$1:t.lurk ]] then
   echo "Lurk data was generated in file ${bold}$2/$1:t.lurk${normal}" ;
else
   echo "No lurk data file was generated" ;
   if [[ -a $LOG_DIR/$1:t:r.log ]] ; then {
      echo "Check ${LOG_DIR}/${1:t:r}.log for errors" ;
   } else
      echo "No log file was generated" ;
   fi
   exit 1
fi

if [[ -a $2/$1:t.lurk ]] ; then {
   echo "• Verifying $2/$1:t.lurk" ;
   # echo "${bold}"`src/mmverify.sh $2/$1:t.lurk $3`"${normal}"
   LOG_FILE=".mm-lurk/log/$1:t:r.verification.log" ;
   src/mmverify.sh $2/$1:t.lurk $3 $LOG_FILE ;
   OUT=$? ;
   echo "${bold}"
   (grep '=>' $LOG_FILE && grep "Proof key: .*$" $LOG_FILE) || grep -oh ":error (.*)" $LOG_FILE ||  grep Err $LOG_FILE
   echo "${normal}"
}
else {
   echo "No lurk data file was generated" ;
   [[ -a $LOG_DIR/$1:t:r.log ]] && {
      echo "Check ${LOG_DIR}/${1:t:r}.log for errors" ;
      exit 1
   }
   echo "No log file was generated" ;
   exit 1
} 
fi

exit $OUT
