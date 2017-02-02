echo "Setting up config files..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Base directory: ${DIR}"

ln -s ${DIR}/.bash_profile ~/.bash_profile > /dev/null 2>&1

if [ $? -eq 0 ]; then
	echo "Symlinked ~/.bash_profile."
else
	echo "Could not symlink ~/.bash_profile. Does it already exist?"
	exit 1
fi

ln -s ${DIR}/.gitconfig ~/.gitconfig > /dev/null 2>&1

if [ $? -eq 0 ]; then
	echo "Symlinked ~/.gitconfig."
else
	echo "Could not symlink ~/.gitconfig. Does it already exist?"
	exit 1
fi

echo "Done."