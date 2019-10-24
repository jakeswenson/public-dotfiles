#!/usr/bin/env zsh
function safe_source() {
  if [ -f "$1" ]; then source "$1"; fi
}

source <(kubectl completion zsh)
safe_source /usr/local/share/zsh/site-functions/aws_zsh_completer.sh

ssh-add -A 2>/dev/null

# The next line updates PATH for the Google Cloud SDK.
safe_source '/Users/jswenson/tools/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
safe_source '/Users/jswenson/tools/google-cloud-sdk/completion.zsh.inc'

setopt APPEND_HISTORY
setopt clobber

complete -C aws_completer okta