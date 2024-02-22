echo "1) Displaying the Jobs"
echo "2) Build the Jobs"
echo "3) Create the Jobs"
echo "4) Delete the Job"
echo "5) Displaying the version"

echo "please select the which task you want to perform..."

read action

case $action in

1) sh listjobs.sh
   ;;
2) sh build.sh
   ;;
3) sh createjob.sh
   ;;
4) sh delete.sh 
   ;;
5) sh version.sh
   ;;
*) echo "Please enter thr correct option"
   ;;
esac   