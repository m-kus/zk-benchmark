#!/usr/bin/zsh 
for i in ../../../checker/mm/common/metamath-files/metamath-test/anatomy.mm \
../../../checker/mm/common/metamath-files/metamath-test/demo0.mm \
../../../checker/mm/common/metamath-files/metamath-test/miu.mm \
../../../checker/mm/common/metamath-files/theory/impreflex-compressed-goal.mm \
../../../checker/mm/common/metamath-files/theory/impreflex-compressed.mm \
../../../checker/mm/common/metamath-files/theory/impreflex.mm \
../../../checker/mm/common/metamath-files/theory/simple-compressed.mm \
../../../checker/mm/common/metamath-files/theory/simple.mm \
../../../checker/mm/common/metamath-files/theory/transfer-task-specific.mm ;
do 
src/mk_lurk_data.sh $i .mm-lurk/tmp lurk_data ;
done

for i in lurk_data/*.lurk ; do echo $i ; time src/mmverify.sh $i > ./tests/$i:t:r.log ; done

for i in lurk_data/*.lurk ; do echo $i ; time src/mmverify.sh -p $i > ./tests/$i:t:r-proof.log ; done
