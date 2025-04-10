#!/bin/bash

echo "Enter an executable to protect: "
read test

chmod -x $test
echo "$test is not executable now."
