# MacOS version, not Linux !

# MacPorts
[ -d /opt/local/sbin ] && export PATH="/opt/local/sbin:$PATH"
[ -d /opt/local/bin ] && export PATH="/opt/local/bin:$PATH"

# Add user bin to path if it exists
[ -n "$HOME" ] && [ -d "$HOME/bin" ] && export PATH="$HOME/bin:$PATH"

# Radio
export MPD_HOST=dacpro

# Editor
export VISUAL=nano
export EDITOR="$VISUAL"

# Raspberry Pi Pico
[ -n "$HOME" ] && [ -d "$HOME/pico/pico-sdk" ] && export PICO_SDK_PATH="$HOME/pico/pico-sdk"
