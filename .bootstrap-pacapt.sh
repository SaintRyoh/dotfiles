#!/bin/bash

echo "Bootstraping pacapt"

[[ ! -d $HOME/.local/bin ]] && mkdir -p $HOME/.local/bin && PATH=$HOME/.local/bin:$PATH

[[ -d $HOME/.local/bin ]] \
&& [[ ! -x "$(which pacapt)" ]] \
&&  { [[ -x "$(which curl)" ]] \
        && curl -Lo $HOME/.local/bin/pacapt https://github.com/icy/pacapt/raw/ng/pacapt \
    || \
        wget -O $HOME/.local/bin/pacapt https://github.com/icy/pacapt/raw/ng/pacapt; \
    } \
&&  chmod 755 $HOME/.local/bin/pacapt 

[[ -x "$(which pacapt)" ]] && echo "\tpacapt is ready to use" || echo "\tpacapt is not installed"