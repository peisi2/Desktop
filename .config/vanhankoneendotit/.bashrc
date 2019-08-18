# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export GPG_TTY=$(tty)
export TERM=xterm-256color
#PS1="\u@ \[\e[32;1m\][\A]\[\e[0m\]\[\e[34;1m\]\W\[\e[0m\] $ "
PS1="\u@ \[\e[31;1m\][\A]\[\e[0m\]\[\e[44;1m\]\w\[\e[0m\] $ "


# User specific aliases and functions
## FUNKTIOT

function RPC () {
url=http://rautaportti.net/announce.php
for i in "$@"; do
	transmission-create -p -t $url -o "$i.torrent" "$i"
done
}
 
function kopio () {
scp "$@" mika@192.168.0.101:~/
}

function InOut () {
Grep="ifconfig enp3s0 | egrep -w 'RX|TX'"
watch -n1 $Grep
}

function TO () {
#LOPPUOSA=[.avi,.mp4,.mkv^]
LOPPUOSA=[.avi|.mp4|.mkv]
totem *$LOPPUOSA
}
function SYS () {
AIKA=$(date '+%j-%B')
sys_info -f ~/Hiekkis/fedora_$AIKA
}
function nof () {
	ls -l $1 | egrep -c '^-'
}
## ALIAKSET
alias rpc='~/bin/RPc.sh'
alias s='cd ..'
alias Rtorre='rtorrent -o http_capath=/etc/pki/tls/certs'
alias Rt='rtorrent -o http_capath=/etc/ssl/certs'

## RADIOT ##
alias RadioRock='mplayer http://icelive0.80692-icelive0.cdn.qbrick.com/10565/80692_RadioRock.mp3'
alias SuomiPop='mplayer http://icelive0.80692-icelive0.cdn.qbrick.com/10566/80692_RadioSuomipop.mp3'
alias Aalto='mplayer http://icelive0.80692-icelive0.cdn.qbrick.com/10564/80692_RadioAalto.mp3'
#--------------------------------#

#alias Rt='rtorrent -o http_capath=http_capath=/etc/ssl/certs'
alias XTerm='xterm -fg white -bg black'

## VIRTUAALIKONEET ##
alias WIN='VBoxManage startvm a7875dd6-539e-41b1-816f-f8d2617a0d64 --type gui &'
#--------------------------------#
alias LP1='mutt -F lp1rc'
alias PV='sudo dnf update -y'
alias MC1='mc -S sand256.ini'
alias MC2='mc -S modarin256root-defbg.ini'
alias MC3='mc -S modarcon16-defbg.ini'
alias L='ls -C --color=always'
alias GMK='killall -9 gnome-mplayer'
alias TAR='tar zcvpf'
alias MC0='mc -S gotar.ini'
alias MC4='mc -S modarin256-defbg.ini'
alias Stop='sudo systemctl stop firewalld'
alias Fire='sudo systemctl stop firewalld.service'
alias Sort11='du -cks * | sort -rn | head -11'
alias LOG='sudo tail -f /var/log/{messages,maillog} -n 25 | ccze -A'
alias CONKY='killall conky && conky -c /home/mika/.conky_fluxbox'
alias Tls='tree -L'

if [ -f /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi
alias ST='sudo docker stats transmission plex irssi oc samba mariadb'
