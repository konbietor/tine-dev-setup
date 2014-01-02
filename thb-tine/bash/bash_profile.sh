SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

### Base directories ###
DEV_SOFTWARE_HOME=/Users/THB-Tine/Dev-Software-Tine
DEV_HOME=~/Dev
GIT_REPOSITORIES_HOME=$DEV_HOME/Git-Repositories

### Home directories export ###
#export JAVA_HOME=$DEV_SOFTWARE_HOME/Java/jdk1.6.0_38
#export GIT_HOME=/usr/local/git
export MVN_HOME=$DEV_SOFTWARE_HOME/Maven/apache-maven-3.0.4
export JREBEL_HOME=$DEV_SOFTWARE_HOME/JRebel/jrebel-5.1.2


### Maven ###
alias mvni='mvn clean install -P jrebel -DskipTests=true'

### Git  ###
alias   gpsh='git push'
alias    gpl='git pull --ff-only'
alias    gaa='git add .;git status'
alias    gco='git commit'
alias    gch='git checkout'
alias     gs='git status'
alias gchdev='git checkout develop'
alias gchrel='git checkout release/current'


### Jetty ###
alias       j='sh jetty.sh'
alias      jr='sh jetty.rebel.sh'
alias  jrperf='sh jetty.rebel.sh perf,nocache'
alias jrcache='sh jetty.rebel.sh dev-sdbtest'


### Diverse ####
alias bashrc='source "${HOME}/.bashrc"'


### Change directory ###
alias   dev='cd $DEV_HOME'
alias   tds='cd $GIT_REPOSITORIES_HOME/tine-dev-setup; bashrc'
alias    gr='cd $GIT_REPOSITORIES_HOME'
alias  reku='cd $GIT_REPOSITORIES_HOME/ReKu; bashrc'
alias rekui='cd $GIT_REPOSITORIES_HOME/ReKu/reku-api/api-impl; bashrc'
alias rekua='cd $GIT_REPOSITORIES_HOME/ReKu/reku-api; bashrc'
alias rekud='cd $GIT_REPOSITORIES_HOME/ReKu/reku-domain; bashrc'
alias rapps='cd $GIT_REPOSITORIES_HOME/buildtools/rekuapps; bashrc'
alias  mink='cd $GIT_REPOSITORIES_HOME/minedata-kk; bashrc'
alias rekuj='cd $GIT_REPOSITORIES_HOME/ReKu/reku-jobs; bashrc'
alias rekub='cd $GIT_REPOSITORIES_HOME/ReKu/reku-jobs/batch; bashrc'
alias  geno='cd $GIT_REPOSITORIES_HOME/geno; bashrc'

### Path ###
# (Requires $JAVA_HOME and $GIT_HOME to be set)
export PATH=$PATH:$JAVA_HOME/bin:$GIT_HOME/cmd:$MVN_HOME/bin

### Maven ###
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=256m'