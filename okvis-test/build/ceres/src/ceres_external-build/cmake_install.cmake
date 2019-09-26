# Install script for directory: /home/zn/okvis-test/build/ceres/src/ceres_external

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zn/okvis-test/build")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ceres" TYPE FILE FILES
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/crs_matrix.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/fpclassify.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/solver.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/dynamic_numeric_diff_cost_function.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/sized_cost_function.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/c_api.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/cost_function_to_functor.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/loss_function.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/normal_prior.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/rotation.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/conditioned_cost_function.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/numeric_diff_functor.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/ceres.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/covariance.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/dynamic_autodiff_cost_function.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/local_parameterization.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/gradient_checker.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/ordered_groups.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/autodiff_cost_function.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/iteration_callback.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/problem.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/autodiff_local_parameterization.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/numeric_diff_cost_function.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/types.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/cost_function.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/jet.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ceres/internal" TYPE FILE FILES
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/internal/autodiff.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/internal/variadic_evaluate.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/internal/disable_warnings.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/internal/eigen.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/internal/fixed_array.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/internal/reenable_warnings.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/internal/scoped_ptr.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/internal/numeric_diff.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/internal/manual_constructor.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/internal/port.h"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/include/ceres/internal/macros.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ceres/internal" TYPE FILE FILES "/home/zn/okvis-test/build/ceres/src/ceres_external-build/config/ceres/internal/config.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/Ceres/CeresTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/Ceres/CeresTargets.cmake"
         "/home/zn/okvis-test/build/ceres/src/ceres_external-build/CMakeFiles/Export/share/Ceres/CeresTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/Ceres/CeresTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/Ceres/CeresTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Ceres" TYPE FILE FILES "/home/zn/okvis-test/build/ceres/src/ceres_external-build/CMakeFiles/Export/share/Ceres/CeresTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Ceres" TYPE FILE FILES "/home/zn/okvis-test/build/ceres/src/ceres_external-build/CMakeFiles/Export/share/Ceres/CeresTargets-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/Ceres" TYPE FILE FILES
    "/home/zn/okvis-test/build/ceres/src/ceres_external-build/CeresConfig.cmake"
    "/home/zn/okvis-test/build/ceres/src/ceres_external-build/CeresConfigVersion.cmake"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/cmake/FindEigen.cmake"
    "/home/zn/okvis-test/build/ceres/src/ceres_external/cmake/FindGlog.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/zn/okvis-test/build/ceres/src/ceres_external-build/internal/ceres/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/zn/okvis-test/build/ceres/src/ceres_external-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
