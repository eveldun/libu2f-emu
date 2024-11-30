export CPATH=/usr/include/openssl-1.1
echo "CPATH Set: ${CPATH}"
echo "LD_FLAGS Set ${LD_FLAGS}"
export PROMPT_COMMAND='PS1_CMD1=$(pwd)';
export PS1='\[\e[38;5;208m\](\[\e[38;5;54m\]ENV\[\e[38;5;208m\])\[\e[38;5;51;1m\]${CPATH}\[\e[0;38;5;208m\]}\[\e[0m\]${PS1_CMD1}>'
sh
