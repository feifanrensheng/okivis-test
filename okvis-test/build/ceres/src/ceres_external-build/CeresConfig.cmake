# Ceres Solver - A fast non-linear least squares minimizer
# Copyright 2013 Google Inc. All rights reserved.
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
# Authors: pablo.speciale@gmail.com (Pablo Speciale)
#          alexs.mac@gmail.com (Alex Stewart)
#

# Config file for Ceres Solver - Find Ceres & dependencies.
#
# This file is used by CMake when FIND_PACKAGE( Ceres ) is invoked (and
# the directory containing this file is present in CMAKE_MODULE_PATH).
#
# This module defines the following variables:
#
# Ceres_FOUND / CERES_FOUND: True iff Ceres has been successfully
#                            found. Both variables are set as although
#                            FindPackage() only references Ceres_FOUND
#                            in Config mode, given the conventions for
#                            <package>_FOUND when FindPackage() is
#                            called in Module mode, users could
#                            reasonably expect to use CERES_FOUND
#                            instead.
#
# CERES_VERSION: Version of Ceres found.
#
# CERES_INCLUDE_DIRS: Include directories for Ceres and the
#                     dependencies which appear in the Ceres public
#                     API and are thus required to use Ceres.
#                     CERES_LIBRARIES: Libraries for Ceres and all
#                     dependencies against which Ceres was
#                     compiled. This will not include any optional
#                     dependencies that were disabled when Ceres was
#                     compiled.
#
# The following variables are also defined for legacy compatibility
# only.  Any new code should not use them as they do not conform to
# the standard CMake FindPackage naming conventions.
#
# CERES_INCLUDES = ${CERES_INCLUDE_DIRS}.

# Called if we failed to find Ceres or any of it's required dependencies,
# unsets all public (designed to be used externally) variables and reports
# error message at priority depending upon [REQUIRED/QUIET/<NONE>] argument.
MACRO(CERES_REPORT_NOT_FOUND REASON_MSG)
  # FindPackage() only references Ceres_FOUND, and requires it to be
  # explicitly set FALSE to denote not found (not merely undefined).
  SET(Ceres_FOUND FALSE)
  SET(CERES_FOUND FALSE)
  UNSET(CERES_INCLUDE_DIRS)
  UNSET(CERES_LIBRARIES)

  # Reset the CMake module path to its state when this script was called.
  SET(CMAKE_MODULE_PATH ${CALLERS_CMAKE_MODULE_PATH})

  # Note <package>_FIND_[REQUIRED/QUIETLY] variables defined by
  # FindPackage() use the camelcase library name, not uppercase.
  IF (Ceres_FIND_QUIETLY)
    MESSAGE(STATUS "Failed to find Ceres - " ${REASON_MSG} ${ARGN})
  ELSE (Ceres_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Failed to find Ceres - " ${REASON_MSG} ${ARGN})
  ELSE()
    # Neither QUIETLY nor REQUIRED, use SEND_ERROR which emits an error
    # that prevents generation, but continues configuration.
    MESSAGE(SEND_ERROR "Failed to find Ceres - " ${REASON_MSG} ${ARGN})
  ENDIF ()
  RETURN()
ENDMACRO(CERES_REPORT_NOT_FOUND)

# Get the (current, i.e. installed) directory containing this file.
GET_FILENAME_COMPONENT(CURRENT_CONFIG_INSTALL_DIR
  "${CMAKE_CURRENT_LIST_FILE}" PATH)

# Record the state of the CMake module path when this script was
# called so that we can ensure that we leave it in the same state on
# exit as it was on entry, but modify it locally.
SET(CALLERS_CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH})
# Reset CMake module path to the installation directory of this
# script, thus we will use the FindPackage() scripts shipped with
# Ceres to find Ceres' dependencies, even if the user has equivalently
# named FindPackage() scripts in their project.
SET(CMAKE_MODULE_PATH ${CURRENT_CONFIG_INSTALL_DIR})

# Build the absolute root install directory as a relative path
# (determined when Ceres was configured & built) from the current
# install directory for this this file.  This allows for the install
# tree to be relocated, after Ceres was built, outside of CMake.
GET_FILENAME_COMPONENT(CURRENT_ROOT_INSTALL_DIR
  ${CURRENT_CONFIG_INSTALL_DIR}/../../ ABSOLUTE)
IF (NOT EXISTS ${CURRENT_ROOT_INSTALL_DIR})
  CERES_REPORT_NOT_FOUND(
    "Ceres install root: ${CURRENT_ROOT_INSTALL_DIR}, "
    "determined from relative path from CeresConfg.cmake install location: "
    "${CURRENT_CONFIG_INSTALL_DIR}, does not exist. Either the install "
    "directory was deleted, or the install tree was only partially relocated "
    "outside of CMake after Ceres was built.")
ENDIF (NOT EXISTS ${CURRENT_ROOT_INSTALL_DIR})

# Set the version.
SET(CERES_VERSION 1.9.0 )

# Set the include directories for Ceres (itself).
SET(CERES_INCLUDE_DIR "${CURRENT_ROOT_INSTALL_DIR}/include")
IF (NOT EXISTS ${CERES_INCLUDE_DIR}/ceres/ceres.h)
  CERES_REPORT_NOT_FOUND(
    "Ceres install root: ${CURRENT_ROOT_INSTALL_DIR}, "
    "determined from relative path from CeresConfg.cmake install location: "
    "${CURRENT_CONFIG_INSTALL_DIR}, does not contain Ceres headers. "
    "Either the install directory was deleted, or the install tree was only "
    "partially relocated outside of CMake after Ceres was built.")
ENDIF (NOT EXISTS ${CERES_INCLUDE_DIR}/ceres/ceres.h)

# Append the include directories for all (potentially optional)
# dependencies with which Ceres was compiled, the libraries themselves
# come in via CeresTargets-<release/debug>.cmake as link libraries for
# Ceres target.
SET(CERES_INCLUDE_DIRS ${CERES_INCLUDE_DIR})

# Eigen.
# Flag set during configuration and build of Ceres.
SET(CERES_EIGEN_VERSION 3.3.7)
# Append the locations of Eigen when Ceres was built to the search path hints.
LIST(APPEND EIGEN_INCLUDE_DIR_HINTS /usr/include/eigen3)
# Search quietly s/t we control the timing of the error message if not found.
FIND_PACKAGE(Eigen ${CERES_EIGEN_VERSION} EXACT QUIET)
IF (EIGEN_FOUND)
  MESSAGE(STATUS "Found required Ceres dependency: "
    "Eigen version ${CERES_EIGEN_VERSION} in ${EIGEN_INCLUDE_DIRS}")
ELSE (EIGEN_FOUND)
  CERES_REPORT_NOT_FOUND("Missing required Ceres "
    "dependency: Eigen version ${CERES_EIGEN_VERSION}, please set "
    "EIGEN_INCLUDE_DIR.")
ENDIF (EIGEN_FOUND)
LIST(APPEND CERES_INCLUDE_DIRS ${EIGEN_INCLUDE_DIRS})

# Glog.
# Flag set during configuration and build of Ceres.
SET(CERES_USES_MINIGLOG OFF)
# Append the locations of glog when Ceres was built to the search path hints.
LIST(APPEND GLOG_INCLUDE_DIR_HINTS /usr/local/include)
GET_FILENAME_COMPONENT(CERES_BUILD_GLOG_LIBRARY_DIR /usr/local/lib/libglog.so PATH)
LIST(APPEND GLOG_LIBRARY_DIR_HINTS ${CERES_BUILD_GLOG_LIBRARY_DIR})
IF (CERES_USES_MINIGLOG)
  SET(MINIGLOG_INCLUDE_DIR ${CERES_INCLUDE_DIR}/ceres/internal/miniglog)
  IF (NOT EXISTS ${MINIGLOG_INCLUDE_DIR})
    CERES_REPORT_NOT_FOUND(
      "Ceres install include directory: "
      "${CERES_INCLUDE_DIR} does not include miniglog, but Ceres was "
      "compiled with MINIGLOG enabled (in place of Glog).")
  ENDIF (NOT EXISTS ${MINIGLOG_INCLUDE_DIR})
  LIST(APPEND CERES_INCLUDE_DIRS ${MINIGLOG_INCLUDE_DIR})
  # Output message at standard log level (not the lower STATUS) so that
  # the message is output in GUI during configuration to warn user.
  MESSAGE("-- Found Ceres installation compiled with miniglog substitute "
    "for glog, beware this will likely cause problems if glog is later linked.")
ELSE (CERES_USES_MINIGLOG)
  # Search quietly s/t we control the timing of the error message if not found.
  FIND_PACKAGE(Glog QUIET)
  IF (GLOG_FOUND)
    MESSAGE(STATUS "Found required Ceres dependency: "
      "Glog in ${GLOG_INCLUDE_DIRS}")
  ELSE (GLOG_FOUND)
    CERES_REPORT_NOT_FOUND("Missing required Ceres "
      "dependency: Glog, please set GLOG_INCLUDE_DIR.")
  ENDIF (GLOG_FOUND)
  LIST(APPEND CERES_INCLUDE_DIRS ${GLOG_INCLUDE_DIRS})
ENDIF (CERES_USES_MINIGLOG)

# Import exported Ceres targets.
IF (NOT TARGET ceres AND NOT Ceres_BINARY_DIR)
  INCLUDE(${CURRENT_CONFIG_INSTALL_DIR}/CeresTargets.cmake)
ENDIF (NOT TARGET ceres AND NOT Ceres_BINARY_DIR)
# Set the expected XX_LIBRARIES variable for FindPackage().
SET(CERES_LIBRARIES ceres)

# Set legacy include directories variable for backwards compatibility.
SET(CERES_INCLUDES ${CERES_INCLUDE_DIRS})

# Reset CMake module path to its state when this script was called.
SET(CMAKE_MODULE_PATH ${CALLERS_CMAKE_MODULE_PATH})

# As we use CERES_REPORT_NOT_FOUND() to abort, if we reach this point we have
# found Ceres and all required dependencies.
MESSAGE(STATUS "Found Ceres version: ${CERES_VERSION} "
    "installed in: ${CURRENT_ROOT_INSTALL_DIR}")

# Set CERES_FOUND to be equivalent to Ceres_FOUND, which is set to
# TRUE by FindPackage() if this file is found and run, and after which
# Ceres_FOUND is not (explicitly, i.e. undefined does not count) set
# to FALSE.
SET(CERES_FOUND TRUE)
