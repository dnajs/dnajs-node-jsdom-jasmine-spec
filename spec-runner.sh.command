#!/bin/sh
#################################
# dnajs-node-jsdom-jasmine-spec #
#################################

# To make this file runnable:
#    $ chmod +x *.sh.command

projectHome=$(cd $(dirname $0); pwd)

setupTools() {
   # Check for Node.js installation and download project dependencies
   cd $projectHome
   pwd
   echo
   echo "Node.js:"
   which node || { echo "Need to install Node.js: https://nodejs.org"; exit; }
   node --version
   npm install
   npm update
   npm outdated
   echo
   }

runSpecs() {
   cd $projectHome
   npm test
   echo
   }

echo
echo "dnajs-node-jsdom-jasmine-spec"
echo "============================="
setupTools
runSpecs
