echo "Please enter the Job name which you want to create ?"
read jobName

echo "Creating the $jobName"
echo "------------------"
jenkinsUrl= `grep JENKINS_URL jenkinsconfig.txt | cut -d "=" -f2`
jenkinsUserName=`grep JENKINS_USERNAME jenkinsconfig.txt | cut -d "=" -f2`
jenkinsPassword=`grep JENKINS_TOKEN jenkinsconfig.txt | cut -d "=" -f2`

java -jar jenkins-cli.jar -auth $jenkinsUserName:$jenkinsPassword -s $jenkinsUrl create-job $jobName < facebook.xml