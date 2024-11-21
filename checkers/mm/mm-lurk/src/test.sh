
for i in checker/mm/common/metamath-files/metamath-test/anatomy*.mm ; do ./mm-lurk.sh $i lurk_data wnew ; done
for i in checker/mm/common/metamath-files/metamath-test/demo0*.mm ; do ./mm-lurk.sh $i lurk_data th@ONE ; done
for i in checker/mm/common/metamath-files/metamath-test/big-unifier*.mm ; do ./mm-lurk.sh $i lurk_data theorem@ONE ; done
for i in checker/mm/common/metamath-files/metamath-test/miu*.mm ; do ./mm-lurk.sh $i lurk_data theorem@ONE ; done
