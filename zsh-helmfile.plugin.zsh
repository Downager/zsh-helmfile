if (( $+commands[helmfile] )); then
    __HELMFILE_COMPLETION_FILE="${ZSH_CACHE_DIR}/HELMFILE_completion"

    if [[ ! -f $__HELMFILE_COMPLETION_FILE || ! -s $__HELMFILE_COMPLETION_FILE ]]; then
        curl https://raw.githubusercontent.com/roboll/helmfile/master/autocomplete/helmfile_zsh_autocomplete >! $__HELMFILE_COMPLETION_FILE
    fi

    [[ -f $__HELMFILE_COMPLETION_FILE ]] && source $__HELMFILE_COMPLETION_FILE

    unset __HELMFILE_COMPLETION_FILE
fi