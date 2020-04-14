zimfw() { source /Users/haatwal/.zim/zimfw.zsh "${@}" }
fpath=(/Users/haatwal/.zim/modules/git/functions /Users/haatwal/.zim/modules/utility/functions /Users/haatwal/.zim/modules/git-info/functions ${fpath})
autoload -Uz git-alias-lookup git-branch-current git-branch-delete-interactive git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw coalesce git-action git-info
source /Users/haatwal/.zim/modules/environment/init.zsh
source /Users/haatwal/.zim/modules/git/init.zsh
source /Users/haatwal/.zim/modules/input/init.zsh
source /Users/haatwal/.zim/modules/termtitle/init.zsh
source /Users/haatwal/.zim/modules/utility/init.zsh
source /Users/haatwal/.zim/modules/steeef/steeef.zsh-theme
source /Users/haatwal/.zim/modules/zsh-completions/zsh-completions.plugin.zsh
source /Users/haatwal/.zim/modules/completion/init.zsh
source /Users/haatwal/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/haatwal/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/haatwal/.zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh