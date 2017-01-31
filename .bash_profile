# For macOS

# Load .profile, containing login, non-bash related initializations.
if [ -f ~/.profile ]; then
	source ~/.profile
fi

# Load .bashrc, containing non-login related bash initializations.
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi
