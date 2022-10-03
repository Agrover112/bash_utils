#!/bin/sh
# Venv ALiases                                                                   
alias venv-list='locate --regex "bin/activate"$'    # Locate /bin/activate paths for both conda and venv                         
alias seder='sed  's/bin\/activate$//' '            # Cannot remember

#alias python=python2.7 

# Conda Aliases                                                                  
alias conda-create-env='conda env create --name'    # Creates a conda enviroment with the name as first argument($1)
alias conda-remove-env='conda env remove --name'    # Removes a conda enviroment with the name as first argument($1)
alias conda-eu="conda env update"                   # Updates the current conda environment
alias conda-ls='conda env list'                     # List conda environments
alias conda-lsp='conda list --name'                 # List conda packages                                          
alias conda-i="conda install"                       # Installs a list of packages into a specified conda environment provided as arguments
alias conda-r="conda remove"                        # Removes a list of packages from a specified conda environment provided as arguments

#Git Aliases                                                

alias git-graph='git log --graph --oneline'         # A simpler heuristic                                   
alias git-graph-pr="git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''%C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all" # Simple and Beautiful way to display git log
alias git-show-lastn=' bash $HOME/scripts/gitshowcom.sh' # Look behind at the nth commit back in the log.

# Utils
lsize() { 
        du -s "${1}"/* 2> >(grep -v '^du: cannot \(access\|read\)' >&2) | sort -rn | \
        cut -f2- | xargs -d "\n" du -sh 2> >(grep -v '^du: cannot \(access\|read\)' >&2);
}

alias ls-hidden='ls -d .* --color=auto'  # List hidden files

alias speedread='$HOME/Downloads/speedread/speedread'

#Bat is required
bat_help() { 
        "$1" --help | batcat 
}
alias bat-help='bat_help'
