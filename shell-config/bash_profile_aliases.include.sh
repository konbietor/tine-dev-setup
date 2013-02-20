	### Maven ###
alias mvni='mvn clean install -P jrebel -DskipTests=true'

### Windows special case ###
#alias git='git.cmd'


### Git  ###
alias gpsh='git push'
alias gpl='git pull --ff-only'
alias gaa='git add .'
alias gco='git commit'
alias gch='git checkout'
alias gs='git status'
alias gchdev='git checkout develop'
alias gchrel='git checkout release/2.34.0'


### Jetty ###
alias j='sh jetty.sh'
alias jr='sh jetty.rebel.sh'
alias jrperf='sh jetty.rebel.sh perf,nocache'
alias jrcache='sh jetty.rebel.sh dev-sdbtest'


### Diverse ####
alias bashrc='source "${HOME}/.bashrc"'


### Change directory ###
# (Requires shell variables DEV_HOME and GIT_REPOSITORIES_HOME to be set)
alias dev='cd $DEV_HOME'
alias gr='cd $GIT_REPOSITORIES_HOME'
alias reku='cd $GIT_REPOSITORIES_HOME/ReKu; bashrc'
alias rekui='cd $GIT_REPOSITORIES_HOME/ReKu/reku-api/api-impl; bashrc'
alias rekua='cd $GIT_REPOSITORIES_HOME/ReKu/reku-api/api-impl; bashrc'
alias rekud='cd $GIT_REPOSITORIES_HOME/ReKu/reku-domain; bashrc'
alias rapps='cd $GIT_REPOSITORIES_HOME/buildtools/rekuapps; bashrc'
alias mink='cd $GIT_REPOSITORIES_HOME/minedata-kk; bashrc'