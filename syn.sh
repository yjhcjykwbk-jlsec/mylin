echo '【now synchronizing files to git...】'
cp ~/.vimrc ./
cp ~/.bash_aliases ./
cp ~/..sh ./ -r 
cp /etc/apache2/sites-available/default etc.apache2.sites-available.default
cp /etc/rc.local etc.rc.local
git add ..sh .bash_aliases .vimrc etc.* syn.sh
echo "【now commit】"
git commit -m "$1"
echo "【now push to remote server】"
git push origin master
