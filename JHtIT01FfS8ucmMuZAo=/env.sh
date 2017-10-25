
source ~/.iterm2_shell_integration.zsh
for dir in $(ls ${HOME}/Local/)
do
    PATH=${PATH}:${HOME}/Local/${dir}/bin
done

PATH=${PATH}:${HOME}/.local/bin
PATH=${PATH}:${HOME}/.cargo/bin
