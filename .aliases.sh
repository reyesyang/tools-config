alias canigo='tail -n 200 /var/log/auth.log | grep session | grep 09:'
alias bi='bundle install --path vendor/bundle --binstubs=vendor/bundle/binstubs'
alias ihosts='sudo vi /etc/hosts'
alias iblog='cd /home/reyesyang/program/projects/my/reyesyang.github.io && jekyll server --watch --draft'
alias sinatra-console='pry -e "require \"./app\""'
#alias nogfw='ssh -v -D 127.0.0.1:1080 sg1.reyesyang.info'
alias nogfw='sudo sslocal -c bin/ss_config.json -d start'
alias net-log="tail -f /var/log/syslog"

alias isyslog='tail -f /var/log/syslog'
alias ishadowsockslog='tail -f /var/log/shadowsocks.log'
alias isshconfig='vim ~/.ssh/config'

alias nogfw='sudo sslocal -c ~/bin/ss_config.hostkvm.hk1.json'
alias rebuild_ycm='cd ~/ycm_build && make ycm_support_libs'

#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

alias upgrade="sudo proxychains4 apt-get update || true && sudo proxychains4 apt-get upgrade"
