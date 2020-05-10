# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

export PATH="/home/dragomundo/.cargo/bin:$PATH"
export JAVA_HOME="/etc/java-config-2/current-system-vm"
export CATALINA_HOME="/home/dragomundo/tomcat9"
