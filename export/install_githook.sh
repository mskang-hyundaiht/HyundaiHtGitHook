CURRENTDIR=$(pwd)
SOURCEDIR=~/.cache/HyundaiHtGitHook
TARGETDIR=$CURRENTDIR/.git/hooks
if [ -d "$TARGETDIR" ]; then
    echo "Installing pre-commit files in ${TARGETDIR}"
    cp $SOURCEDIR/pre-commit $TARGETDIR/pre-commit
    chmod +x $TARGETDIR/pre-commit
else
    echo "'.git' directory not found."
fi