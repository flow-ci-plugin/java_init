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

flow_cmd "echo $FLOW_PROJECT_NAME" --echo
flow_cmd "mvn --version" --echo
flow_cmd "java -version" --echo
flow_cmd "echo $FLOW_VERSION" --echo
flow_cmd "echo $JAVA_HOME" --echo
flow_cmd "echo $MAVEN_HOME" --echo


FLOW_JAVA_VERSION="$(java -version 2>&1)"
FLOW_JDK_VERSION="$FLOW_VERSION"
FLOW_MAVEN_VERSION="$(mvn --version 2>&1)"