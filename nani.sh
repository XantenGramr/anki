SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

answer=`cat $SCRIPT_DIR/last.txt`
IFS='|' read -ra ADDR <<< "$answer"

echo ${ADDR[2]}