
local host_color="green"

if [ -n "$SSH_CLIENT" ]; then
	local host_color='"red'
fi

PROMPT='

'

# Return status codes prompt
RPrompt=''
