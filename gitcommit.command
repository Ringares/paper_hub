echo 'start git committing ...'
cd $(cd `dirname $0`; pwd)
git status
git add .
git commit -m 'update'
git push
echo 'git done & close in 3s ...'
