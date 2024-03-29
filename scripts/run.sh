#!/bin/bash
set -e

# ./wait-for-it.sh -t 15 chrome:5555

if [ $? -ne 0 ]
then
  echo "Failure: Timed out to connect to selenium hub." >&2
  exit 1
fi
ls src
# run tests and get the exit code
node ./node_modules/.bin/wdio --spec ./src/new_features/**/*.feature  || EXIT_CODE=$?
# generate report
npm run report

exit $EXIT_CODE