#我的ｈｏｍｅ文件夹
cd ~
sudo ln -s /var/www/ www
sudo ln -s /host E:
sudo ln -s /host/down down
mkdir ..pkg
cd ..pkg
sudo ln -s /usr/share/cmake-2.8/Modules cm
sudo ln -s /var/lib/dpkg pkg
sudo ln -s /usr/lib/pkgconfig/ pc-lib
sudo ln -s /usr/share/pkgconfig/ pc-share

#同步
cd ~
mkdir code
cd code
mkdir  c git gnu java py 
git clone https://github.com/stevenberge/alg.git
mv alg acm

cd ~ 
mkdir ..git
cd ..git
git clone https://github.com/stevenberge/lin.git
cp lin/.* ~/ -r
git clone https://github.com/stevenberge/www.git
cp www/.* ~/www/ -r
git clone https://github.com/stevenberge/java.git

cd ~
mkdir git
cd git
svn checkout http://wmreader.googlecode.com/svn/trunk/ wmreader-read-only
git clone https://github.com/pakerfeldt/android-viewflow.git
git clone https://code.google.com/p/apps-for-android/
git clone https://github.com/WhiteHouse/wh-app-android.git
