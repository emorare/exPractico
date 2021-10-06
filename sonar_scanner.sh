echo Installing Sonar Scanner CLI
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
unzip sonar-scanner-cli-4.6.2.2472.linux.zip
export PATH=$(pwd)/sonar-scanner-cli-4.6.2.2472-linux/bin:$PATH
echo Sonar Scanner Installed!
echo Running Sonar Scanner...
sonar-scanner \
  -Dsonar.projectKey=EXF_Edgar_Mora \
  -Dsonar.sources=. \
  -Dsonar.host.url=https://sq.semanticsecurity.org \
  -Dsonar.login=$SONARQUBE_LOGIN
echo Done!
