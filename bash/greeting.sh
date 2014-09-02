# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return
echo -n "Комп: "; uname -ap
echo -n "Привет, "; whoami
echo -n "Сегодня "; date "+%Y-%m-%d %H:%M:%S"
echo -n 'В работе: '; uptime
echo ''
