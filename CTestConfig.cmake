# CTest Configuration for VXL
set(CTEST_PROJECT_NAME "VXL")
set(CTEST_NIGHTLY_START_TIME "22:00:00 EST")

set(CTEST_DROP_METHOD "http")
set(CTEST_DROP_SITE "open.cdash.org")
set(CTEST_DROP_LOCATION "/submit.php?project=vxl")
set(CTEST_DROP_SITE_CDASH TRUE)

message("IN CONFIG SCRIPT")

set(CTEST_CUSTOM_WARNING_EXCEPTION
  ${CTEST_CUSTOM_WARNING_EXCEPTION}

  "stl_construct.h:.*: warning: Forming reference to null pointer"
  ".*stl_uninitialized.*: warning: Forming reference to null pointer.*"
  "stl_vector.h:771:9: warning: Returning null reference"
)

