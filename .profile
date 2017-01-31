# For macOS

# MacPorts
[ -d /opt/local/sbin ] && export PATH="/opt/local/sbin:$PATH"
[ -d /opt/local/bin ] && export PATH="/opt/local/bin:$PATH"

# Add user bin to path if it exists
[ -n "$HOME" ] && [ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH"

export MPD_HOST=pi3
