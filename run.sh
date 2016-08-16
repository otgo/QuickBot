session=QuickBot
session2=ScriptGban
process=process-115-no_exit

do_secure_process() {
	secure="process-115"
	while true
	do
		lua bot.lua
		echo -e 'crash'
	for i in 1
	do
		echo "$i..."
	done
		echo "terminado"
	done
}

if [ "$1" = "" ]; then
	clear
	tmux kill-session -t $session
	tmux kill-session -t $process
	clear
	tmux new-session -s "$session" -d 'lua bot.lua'
	tmux attach -t "$session"

fi

if [ "$1" = "attach" ]; then
  if [ "$2" == "" ]; then
	clear
	tmux attach -t "$session"
  fi
  if [ "$2" == "gbans" ]; then
        clear
        tmux attach -t "$session2"
  fi
fi

if [ "$1" = "kill" ]; then
	clear
	tmux kill-session -t $process
	tmux kill-session -t $session
	tmux kill-session -t $session2
fi

if [ "$1" == "$process" ]; then
	do_secure_process
fi

if [ "$1" == "secure" ]; then
	clear
	tmux kill-session -t $session
	tmux kill-session -t $process
	clear
	tmux new-session -s "$process" -d 'sudo bash run.sh '$process
	exit
fi
