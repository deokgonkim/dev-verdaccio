#!/bin/bash

echo "Enter version to unpublish"
read VERSION

npm unpublish @dgkim/sample@${VERSION}
