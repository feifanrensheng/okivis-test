# Ceres Solver - A fast non-linear least squares minimizer
# Copyright 2012 Google Inc. All rights reserved.
# http://code.google.com/p/ceres-solver/
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice,
#   this list of conditions and the following disclaimer.
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
# * Neither the name of Google Inc. nor the names of its contributors may be
#   used to endorse or promote products derived from this software without
#   specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# Author: arnaudgelas@gmail.com (Arnaud Gelas)
#         alexs.mac@gmail.com (Alex Stewart)

IF (COMMAND cmake_policy)
  # Ignore empty elements in LIST() commands.
  CMAKE_POLICY(SET CMP0007 OLD)
ENDIF (COMMAND cmake_policy)

IF (NOT EXISTS "/home/zn/okvis-test/build/ceres/src/ceres_external-build/install_manifest.txt")
  MESSAGE(FATAL_ERROR "Cannot find install manifest: "
                      "\"/home/zn/okvis-test/build/ceres/src/ceres_external-build/install_manifest.txt\"")
ENDIF (NOT EXISTS "/home/zn/okvis-test/build/ceres/src/ceres_external-build/install_manifest.txt")

FILE(READ "/home/zn/okvis-test/build/ceres/src/ceres_external-build/install_manifest.txt" INSTALL_MANIFEST)
STRING(REGEX REPLACE "\n" ";" INSTALL_MANIFEST "${INSTALL_MANIFEST}")
LIST(REVERSE INSTALL_MANIFEST)

FOREACH (INSTALLED_FILE ${INSTALL_MANIFEST})
  # Save the root ceres include install directory, e.g. /usr/local/include/ceres
  # so that we can remove it at the end.
  IF (NOT CERES_INCLUDE_INSTALL_ROOT)
    GET_FILENAME_COMPONENT(FILE_NAME ${INSTALLED_FILE} NAME)
    IF (FILE_NAME STREQUAL ceres.h)
      # Ensure that the directory is nested as we expect, as we are going to
      # remove it, and we do not want to remove files pertaining to anyone else.
      GET_FILENAME_COMPONENT(PARENT_DIR ${INSTALLED_FILE} PATH)
      GET_FILENAME_COMPONENT(PARENT_DIR_NAME ${PARENT_DIR} NAME)
      IF (PARENT_DIR_NAME STREQUAL ceres AND IS_DIRECTORY ${PARENT_DIR})
        SET(CERES_INCLUDE_INSTALL_ROOT ${PARENT_DIR})
      ENDIF (PARENT_DIR_NAME STREQUAL ceres AND IS_DIRECTORY ${PARENT_DIR})
    ENDIF (FILE_NAME STREQUAL ceres.h)
  ENDIF (NOT CERES_INCLUDE_INSTALL_ROOT)

  MESSAGE(STATUS "Uninstalling \"$ENV{DESTDIR}${INSTALLED_FILE}\"")
  IF (EXISTS "$ENV{DESTDIR}${INSTALLED_FILE}")
    EXECUTE_PROCESS(COMMAND /usr/bin/cmake
                    -E remove "$ENV{DESTDIR}${INSTALLED_FILE}"
                    OUTPUT_VARIABLE RM_OUT
                    RESULT_VARIABLE RM_RETVAL)
    IF (NOT ${RM_RETVAL} EQUAL 0)
      MESSAGE(FATAL_ERROR
              "Problem when removing \"$ENV{DESTDIR}${INSTALLED_FILE}\"")
    ENDIF (NOT ${RM_RETVAL} EQUAL 0)
  ELSE (EXISTS "$ENV{DESTDIR}${INSTALLED_FILE}")
    MESSAGE(STATUS "File \"$ENV{DESTDIR}${INSTALLED_FILE}\" does not exist.")
  ENDIF (EXISTS "$ENV{DESTDIR}${INSTALLED_FILE}")
ENDFOREACH(INSTALLED_FILE)

# Removing Ceres include install directory.
IF (CERES_INCLUDE_INSTALL_ROOT AND
    EXISTS ${CERES_INCLUDE_INSTALL_ROOT})
  MESSAGE(STATUS "Removing Ceres include install directory: "
                 "\"$ENV{DESTDIR}${CERES_INCLUDE_INSTALL_ROOT}\"")
  EXECUTE_PROCESS(COMMAND /usr/bin/cmake
                  -E remove_directory
                  "$ENV{DESTDIR}${CERES_INCLUDE_INSTALL_ROOT}"
                  OUTPUT_VARIABLE RM_OUT
                  RESULT_VARIABLE RM_RETVAL)
  IF (NOT ${RM_RETVAL} EQUAL 0)
    MESSAGE(FATAL_ERROR
      "Failed to remove: \"$ENV{DESTDIR}${CERES_INCLUDE_INSTALL_ROOT\"")
  ENDIF (NOT ${RM_RETVAL} EQUAL 0)
ELSE (CERES_INCLUDE_INSTALL_ROOT AND
    EXISTS ${CERES_INCLUDE_INSTALL_ROOT})
  MESSAGE(FATAL_ERROR "Failed to find Ceres installed include directory "
                      "(e.g. /usr/local/include/ceres), candidate: "
                      "\"$ENV{DESTDIR}${CERES_INCLUDE_INSTALL_ROOT}\"")
ENDIF (CERES_INCLUDE_INSTALL_ROOT AND
  EXISTS ${CERES_INCLUDE_INSTALL_ROOT})
