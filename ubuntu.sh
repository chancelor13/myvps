#Ubuntu.sh
sudo apt-get update
sudo apt-get upgrade
sudo apt dist-upgrade
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev libpq-dev python-psycopg2 python-openssl git nano libjpeg8-dev zlib1g-dev
# show git branch
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\] $(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi
adduser oleg
# list all users
compgen -u
# list all groups
compgen -g
usermod -aG sudo oleg
# copy your key
cat ~/.ssh/id_rsa.pub
mkdir -p ~/.ssh
~/.ssh/authorized_keys
chown -R oleg:oleg ~/.ssh
sudo apt install ufw
sudo ufw app list
sudo udo ufw status
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw status
sudo mkdir -p /var/sftp/uploads
Set the owner of /var/sftp to root:
sudo chown root:root /var/sftp
sudo chmod 755 /var/sftp
sudo apt install nginx
sudo ufw app list
