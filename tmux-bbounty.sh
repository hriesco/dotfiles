#!/bin/bash

SESSION="BBounty"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)

if [ "$SESSIONEXISTS" = "" ]; then
	# New Session
	tmux -2 new-session -d -s $SESSION

	# Burpsuite Window
	tmux rename-window -t $SESSION "Burp"
	tmux send-keys -t $SESSION 'burpsuite' C-m

	# SSH 
	tmux new-window -t $SESSION:1 -n "SSH"
	tmux send-keys -t $SESSION:SSH 'ssh XXXX@XXXX -p XXXX' C-m

	# Fuzzing Window
	tmux new-window -t $SESSION:2 -n Fuzz_1
	tmux split-window -h -t $SESSION:Fuzz_1
	tmux split-window -v -t $SESSION:Fuzz_1
	tmux split-window -v -t $SESSION:Fuzz_1.0
	tmux send-keys -t $SESSION:Fuzz_1.0 'dirsearch; clear' C-m
	tmux send-keys -t $SESSION:Fuzz_1.1 'dirsearch; clear' C-m
	tmux send-keys -t $SESSION:Fuzz_1.2 'dirsearch; clear' C-m
	tmux send-keys -t $SESSION:Fuzz_1.3 'dirsearch; clear' C-m

	# Working directory
	tmux new-window -t $SESSION:3 -n "Work"
	tmux split-window -h -t $SESSION:Work
	tmux send-keys -t $SESSION:Work.0 'cd ~; clear' C-m
	tmux send-keys -t $SESSION:Work.1 'cd /tmp; clear' C-m

	tmux select-pane -t $SESSION:Work.0
fi
