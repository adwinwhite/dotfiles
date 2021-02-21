
set PATH $PATH /home/adwin/.local/bin

thefuck --alias | source

bind -M insert \cf forward-char
bind -M insert \cg forward-word
bind -M insert -m default jj backward-char force-repaint
bind -M insert \ce up-or-search


