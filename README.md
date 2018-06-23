# Lexidest
A word meaning finder daemon for Linux!!

Lexidest = Lexi(word: in Greek) + idest(meaning: in Latin)
``` bash
#For cloning by HTTPS
git clone --shallow-submodules https://github.com/Jenil2910/Lexidest.git

#For cloning by SSH
git clone --shallow-submodules git@github.com:Jenil2910/Lexidest.git

mv Lexidest ~/.lexidest
cd ~/.lexidest
make
chmod +x script.sh
./lexidest
```
Now get the meaning of any word by selecting it.<br>

Also note that you can define it as a command by putting the line given below in your `~/.bashrc` file
``` bash
alias lexidest="~/.lexidest/lexidest.out"
```
You can also put `~/.lexidest/lexidest.out` in `~/.xprofile`. So that lexidest will start at the login time.
#### Killing lexidest
If it got stuck at any point you can kill the process by `killall lexidest.out`
