#/bin/bash
RESULT="`wget -q0- http://localhost:8090`"
wget -q localhost:8090
if [ $? -eq 0 ]
then
    echo 'ok - servico no ar !'
elif [[ $RESULT == *"Number"* ]]
then
    echo 'ok - number os visits'
    echo $RESULT
else
    echo 'error - number of visits'
    exit 1
fi