set(whitespaces_ "[\t\n\r ]*")

set(EXPECTED_FILES_COUNT "1")

if(GENERATOR_TYPE STREQUAL "DEB")
  set(EXPECTED_FILE_1 "empty_dir_0.1.1-1_*.deb")
  set(EXPECTED_FILE_CONTENT_1 "^.*/usr/${whitespaces_}.*/usr/empty/$")
elseif(GENERATOR_TYPE STREQUAL "RPM")
  set(EXPECTED_FILE_1 "empty_dir*.rpm")
  set(EXPECTED_FILE_CONTENT_1 "^/usr/empty$")
elseif(GENERATOR_TYPE STREQUAL "TGZ")
  set(EXPECTED_FILE_1 "empty_dir*.tar.gz")
  set(EXPECTED_FILE_CONTENT_1 "^[^\n]*empty_dir-0.1.1-[^\n]*/empty/$")
endif()
