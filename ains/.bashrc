######################################################################
#
#  $HOME/.bashrc file
#  Last Updated: 2022-05-24
#
#    The most recent file is kept under ~stdskel/ .
#    You may revise your files by copying from there.
#    URL : http://web-int.u-aizu.ac.jp/~stdskel/stdskel.html
#
#  The University of Aizu Information Network System (AINS)
#  Information System and Technology Center (ISTC)
#  E-mail: std-help@u-aizu.ac.jp
#
######################################################################

MACHINE=`uname -s`-`uname -r`

umask 077

case "$MACHINE" in
  Linux-*) ;;
  *)	PATH=/usr/local/perl5/bin:/usr/local/texlive/bin:/usr/local/bin:/usr/local/gnu/bin ;;
esac

case "$MACHINE" in
  # for Solaris 2.x
  SunOS-5.11*)	PATH=/usr/local/gcc/bin:/usr/local/java/jdk/bin:$PATH
		PATH=$PATH:/usr/openwin/bin:/usr/bin:/usr/sbin
		PATH=$PATH:/usr/local/SolarisStudio/bin:/usr/ccs/bin

		MANPATH=/usr/local/perl5/man:/usr/local/man
		MANPATH=$MANPATH:/usr/local/share/man:/usr/local/gnu/man
		MANPATH=$MANPATH:/usr/local/gnu/share/man:/usr/share/man
		MANPATH=$MANPATH:/usr/local/SolarisStudio/man
	;;
  # for Apple macOS 11
  Darwin-*)	PATH=$PATH:/usr/X11/bin:/usr/bin:/bin:/usr/sbin:/sbin

		MANPATH=/usr/local/man:/usr/local/share/man:/usr/local/gnu/man
		MANPATH=$MANPATH:/usr/local/gnu/share/man:/usr/share/man:/usr/X11/share/man
	;;
  # for Linux RHEL
  Linux-*)	. /etc/profile
  		case $- in
		  *i*) PATH=/usr/local/texlive/bin:$PATH ;;
		esac

		# ':' at the end of the line will include settings in /etc/man_db.conf.
		MANPATH=/usr/share/man:
	;;
esac

# set site path
#set PATH=$PATH:${HOME}/bin


# if [ $?USER == 0 || $?prompt == 0 ]; then
#     exit
# fi

LC_COLLATE=C

export PATH MANPATH LC_COLLATE

EDITOR=vi
export EDITOR

unset OS REV

tty -s
if [ $? == 0 ]; then
  if [ "$SHELL" = "/bin/csh" -o "$SHELL" = "/usr/local/bin/tcsh" ]; then
    eval `env SHELL=/bin/sh tset -rs`
  else
    eval `tset -rs`
  fi
else
  stty erase ^H kill ^U
fi

# set this for all shells
export HISTSIZE=100
export HISTFILESIZE=50
export IGNOREEOF=3
#PS1="\h{`whoami`}\!$ "
#PS1="\h:\033[36m\W\033[0m \u$ "
PS1="\h:\033[36m\W\033[0m $ "

# aliases for all shells
#function cd(){
#  command cd $@
#  command pwd
#}
#alias  cp='cp -i'
#alias  mv='mv -i'
#alias  rm='rm -i'
#alias  ls='ls -F'
#alias  ps='ps -ef'
alias pip="python3 -m pip"
alias pdf="sh $HOME/workspace/p.sh"
alias sub="sh $HOME/workspace/s.sh"
alias menu="~prog1/bin/menu"
cd ~/workspace
export SUB="/home/course/literacy/submission/s1330026"
export PATH="$PATH:~/bin:$HOME/go/bin:$HOME/.local/bin:~prog1/bin"
export GOROOT="$HOME/go"
export GOPATH="$HOME/go_projects"
export GOBIN="$GOPATH/bin"
