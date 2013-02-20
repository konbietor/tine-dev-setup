SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

### Includes ###
source $SCRIPT_DIR/bash_profile_mac_variables.include.sh
source $SCRIPT_DIR/bash_profile_aliases.include.sh


### Path ###
# (Requires $JAVA_HOME and $GIT_HOME to be set in variables include)
export PATH=$PATH:$JAVA_HOME/bin:$GIT_HOME/cmd:$MVN_HOME/bin

### Maven ###
export MAVEN_OPTS='-Xmx512m -XX:MaxPermSize=256m'