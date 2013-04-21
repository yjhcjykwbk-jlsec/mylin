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
mkdir acm c git gnu java py 
cd acm
git clone https://github.com/stevenberge/alg.git

cd ~ 
mkdir ..git
cd ..git
mkdir lin www java
cd lin
git clone https://github.com/stevenberge/lin.git
cp .* ~/ -r
cd ../www
git clone https://github.com/stevenberge/www.git
cp .* ~/www/ -r
cd ../java 
git clone https://github.com/stevenberge/java.git

cd ~
mkdir git
svn checkout http://wmreader.googlecode.com/svn/trunk/ wmreader-read-only
git clone https://github.com/pakerfeldt/android-viewflow.git
git clone https://code.google.com/p/apps-for-android/
git clone https://github.com/WhiteHouse/wh-app-android.git
