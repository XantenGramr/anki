SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

answer=`awk 'BEGIN {srand();} {print rand() " " $0;}' $SCRIPT_DIR/vocab.txt | sort -n | cut -d ' ' -f2- | head -n 1`

# answer="1|2|3" > last.txt

echo $answer > $SCRIPT_DIR/last.txt

IFS='|' read -ra ADDR <<< "$answer"
echo "${ADDR[0]} | ${ADDR[1]}"
