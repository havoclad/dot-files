mkdir /tmp/mergepatchs
cd ~/repo/org
export reposrc=myfile.c #or mydir
git format-patch -o /tmp/mergepatchs $(git log $reposrc|grep ^commit|tail -1|awk '{print $2}')^..HEAD $reposrc
cd ~/repo/dest
git am /tmp/mergepatchs/*.patch
