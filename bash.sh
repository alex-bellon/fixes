#####################################################
# Commands ##########################################
#####################################################

cat -A # cat and print out end lines, tabs, etc.

cd - # change to previous directory

echo foo{1,2,3}.txt # prints foo1.txt foo2.txt foo3.txt

git checkout - # change to previous branch

pushd
popd # navigate through directory stack

sudo !! # re-run previous command with sudo
sudo -l # list commands you can run as sudo

tr -d "\n" # delete newline characters

watch 'tail /path/to/log' # monitor changed in output of a command

wget -r -np -nH --cut-dirs=3 -R index.html http://hostname/aaa/bbb/ccc/ddd/
# Explanation:
#  It will download all files and subfolders in ddd directory:
#  recursively (-r),
#  not going to upper directories, like ccc/… (-np),
#  not saving files to hostname folder (-nH),
#  but to ddd by omitting first 3 folders aaa, bbb, ccc (--cut-dirs=3)
#  excluding index.html files (-R index.html)

!$ # use previous argument

#####################################################
# Keyboard Shortcuts ################################
#####################################################

CTRL+L # clear screen

CTRL+R # search command history

#####################################################
# Miscellaneous #####################################
#####################################################

# /etc/profile.d/extended_history.sh - Keep history from the beginning of time (almost)
# Show the timestamp for each entry of the history file
export HISTTIMEFORMAT="%Y-%m-%dT%H:%M:%S "
# Ensure the history file size and entry number is large
# enough to record years upon years of history
export HISTFILESIZE=500000000
export HISTSIZE=50000000
