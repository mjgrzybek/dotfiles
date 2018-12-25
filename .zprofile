logger ".zprofile loaded"
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile' || logger "~/.profile not found"
