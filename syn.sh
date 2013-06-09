myecho(){
  echo -e  "\033 $2 \033[0m"
}
myecho 'now synchronizing files to git...'
cp ~/.vimrc ./
cp ~/.bash_aliases ./
cp ~/..sh ./ -r 
cp /etc/apache2/sites-available/default etc.apache2.sites-available.default
cp /etc/rc.local etc.rc.local
git add ..sh .bash_aliases .vimrc etc.* syn.sh
myecho "now commit"
git commit -m "$1"
myecho "now push to remote server"
git push origin master
