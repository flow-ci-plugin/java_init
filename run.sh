# ************************************************************
#
# This step will init your project
#
#   Variables used:
#     $FLOW_VERSION
#
#   Outputs:
#     $FLOW_JAVA_VERSION
#     $FLOW_JDK_VERSION
#     $FLOW_MAVEN_VERSION
#
# ************************************************************

echo '===============DEFAULT ENVS======================='

echo "\$FLOW_PROJECT_NAME = $FLOW_PROJECT_NAME"
echo "\$FLOW_USER_ID = $FLOW_USER_ID"
echo "\$FLOW_PROJECT_ID = $FLOW_PROJECT_ID"
echo "\$FLOW_PROJECT_GIT_URL = $FLOW_PROJECT_GIT_URL"
echo "\$FLOW_PROJECT_LANGUAGE = $FLOW_PROJECT_LANGUAGE"
echo "\$FLOW_GIT_HOST = $FLOW_GIT_HOST"
echo "\$FLOW_JOB_ID = $FLOW_JOB_ID"
echo "\$FLOW_EVENT_ID = $FLOW_EVENT_ID"
echo "\$FLOW_EVENT_NUMBER = $FLOW_EVENT_NUMBER"
echo "\$FLOW_PHP_OLD_VERSION = $FLOW_PHP_OLD_VERSION"

flow_cmd "mvn --version" --echo
flow_cmd "java -version" --echo


FLOW_JAVA_VERSION="$(java -version 2>&1)"
FLOW_JDK_VERSION="$FLOW_VERSION"
FLOW_MAVEN_VERSION="$(mvn --version 2>&1)"