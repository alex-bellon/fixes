sudo !! # re-run previous command with sudo

cd - # change to previous directory

git checkout - # change to previous branch

CTRL+R # search command history

pushd
popd # navigate through directory stack

!$ # use previous argument

CTRL+L # clear screen

watch 'tail /path/to/log' # monitor changed in output of a command

wget -r -np -nH --cut-dirs=3 -R index.html http://hostname/aaa/bbb/ccc/ddd/

# Explanation:
#  It will download all files and subfolders in ddd directory:
#  recursively (-r),
#  not going to upper directories, like ccc/… (-np),
#  not saving files to hostname folder (-nH),
#  but to ddd by omitting first 3 folders aaa, bbb, ccc (--cut-dirs=3)
#  excluding index.html files (-R index.html)
