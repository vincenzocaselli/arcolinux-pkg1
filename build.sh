#Prepare temporary package build folder
mkdir /tmp/pkg1

#if exist then clean tmp dir
rm -rf /tmp/pkg1/*

#Copy package definition files in tmp build folder
cp PKGBUILD /tmp/pkg1
cp pkg1.install /tmp/pkg1

#Build package
cd /tmp/pkg1
makepkg


#Create repo db files
ls -l *.zst | repo-add arcolinux-pkg1.db.tar.gz 

