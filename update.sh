COMMENT_MSG="update shell tools"

if [ "#$" != 1 ]
then
	COMMENT_MSG=$1
fi

git pull

git add ./

git commit -m $COMMENT_MSG

git push

