#!/bin/bash -x

set -e

export AWS_PROFILE=$1
PARAMETERS=$2

# スクリプトが配置されているディレクトリへ移動
cd $(dirname $0)

# デプロイ実行
aws cloudformation deploy \
--template-file ./quicksight.yaml \
--stack-name ExampleQuickSight \
--capabilities CAPABILITY_NAMED_IAM \
--parameter-override ${PARAMETERS}