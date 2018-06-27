#!/bin/bash

$sudo yum update

$aws lambda create-function --function-name trexuploadpdf --runtime python3.6 --role arn:aws:iam::752265335640:role/EC2LAMBDAS3FULL --handler PDFParser.lambda_handler --code S3Bucket=trexpdfupload,S3Key=PDFParser.py.zip
