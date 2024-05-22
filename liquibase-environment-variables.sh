# ==== ENVIRONMENT VARIABLES ====
# Environment variables for S3 integration
export AWS_S3_BUCKET="amalik-s3-extension-demo"
export AWS_REGION=us-east-1
export AWS_ACCESS_KEY_ID="<your_aws_access_key_id>"
export AWS_SECRET_ACCESS_KEY="<your_aws_secret_access_key>"
export AWS_SESSION_TOKEN="<your_aws_session_token>"


# Environment variables for Liquibase
export LIQUIBASE_SEARCH_PATH=./,s3://${AWS_S3_BUCKET}
export LIQUIBASE_COMMAND_CHANGELOG_FILE=changelog.xml
export LIQUIBASE_COMMAND_CHECKS_SHOW_CHECKS_SETTINGS_FILE=static/checks/liquibase.checks-settings.conf
export LIQUIBASE_COMMAND_CHECKS_RUN_CHECKS_SETTINGS_FILE=static/checks/liquibase.checks-settings.conf
export LIQUIBASE_COMMAND_CHECKS_ENABLE_CHECKS_SETTINGS_FILE=static/checks/liquibase.checks-settings.conf
export LIQUIBASE_COMMAND_CHECKS_CUSTOMIZE_CHECKS_SETTINGS_FILE=static/checks/liquibase.checks-settings.conf
# # export LIQUIBASE_PRO_LICENSE_KEY=<your Liquibase Pro license key here>
# export LIQUIBASE_LOG_LEVEL=FINE

# Database-specific environment variables
export LIQUIBASE_COMMAND_URL=jdbc:oracle:thin:@cs-oracledb.liquibase.net:1521/PP_DEV
export LIQUIBASE_COMMAND_USERNAME=liquibase_user
export LIQUIBASE_COMMAND_PASSWORD=liquibase_user

# export FLOW_FILE="validate-changes-update-db.yaml"
export QC_FLOW_FILE="s3://${AWS_S3_BUCKET}/qc_flow_file.yaml"
export UPDATE_FLOW_FILE="s3://${AWS_S3_BUCKET}/update_flow_file.yaml"
export ROLLBACK_FLOW_FILE="s3://${AWS_S3_BUCKET}/rollback_flow_file.yaml"
# export FLOW_FILE="flow.yaml"

export PATH=${PWD}/../liquibase-4.26.0-AWSS3_SECRETSMANAGER:${PATH}

# ==== LIQUIBASE ====
# liquibase command line
# liquibase status --verbose
# liquibase update-sql
# liquibase update
# liquibase history

# liquibase command line using flow files
# liquibase flow --flow-file=${QC_FLOW_FILE}
# liquibase flow --flow-file=${UPDATE_FLOW_FILE}
# liquibase flow --flow-file=${ROLLBACK_FLOW_FILE}

# ./runme.sh &> output.log
# liquibase status --verbose

