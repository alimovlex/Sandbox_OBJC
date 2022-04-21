# CMakeLists.txt 
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

cmake_minimum_required(VERSION 3.0.0)
project(Sandbox)

SET(CMAKE_C_COMPILER gcc)
SET(CMAKE_CXX_COMPILER g++)

file(GLOB CoreFoundation "SandboxCLang/CoreFoundation/Headers/*.h" "SandboxCLang/CoreFoundation/Source/*.m")
file(GLOB Sandbox "SandboxCLang/inc/*.h" "SandboxCLang/src/*.m")
file(GLOB Socket "SandboxCLang/SecureSocket/*.h" "SandboxCLang/SecureSocket/*.c")

add_library(libCoreFoundation SHARED ${CoreFoundation})
add_library(libSocket SHARED ${Socket})

add_executable(Sandbox ${Sandbox} main.m)
find_package(OpenSSL REQUIRED)

target_compile_options(Sandbox PRIVATE
	-MMD 
	-MP 
	-DGNUSTEP
	-DGNUSTEP_CORE_LIBRARY=1
	-DGNU_GUI_LIBRARY=1 
	-DGNU_RUNTIME=1 
	-DGNUSTEP_BASE_LIBRARY=1
	-fno-strict-aliasing 
	-fexceptions 
	-fobjc-exceptions 
	-D_NATIVE_OBJC_EXCEPTIONS 
	-pthread 
	-fPIC 
	-Wall 
	-DGSWARN 
	-DGSDIAGNOSE 
	-Wno-import 
	-g
	-O2 
	-fgnu-runtime 
	-fconstant-string-class=NSConstantString 
	-I. 
	# Dirs of GNUstep and libobj
	-I/home/ani/GNUstep/Library/Headers 
	-I/usr/local/include/GNUstep
	-I/usr/include/GNUstep
)

target_compile_options(libCoreFoundation PRIVATE
		-MMD
		-MP
		-DGNUSTEP
		-DGNUSTEP_CORE_LIBRARY=1
		-DGNU_GUI_LIBRARY=1
		-DGNU_RUNTIME=1
		-DGNUSTEP_BASE_LIBRARY=1
		-fno-strict-aliasing
		-fexceptions
		-fobjc-exceptions
		-D_NATIVE_OBJC_EXCEPTIONS
		-pthread
		-fPIC
		-Wall
		-DGSWARN
		-DGSDIAGNOSE
		-Wno-import
		-g
		-O2
		-fgnu-runtime
		-fconstant-string-class=NSConstantString
		-I.
		# Dirs of GNUstep and libobj
		-I/home/ani/GNUstep/Library/Headers
		-I/usr/local/include/GNUstep
		-I/usr/include/GNUstep)

target_link_libraries(Sandbox gnustep-base objc BlocksRuntime dispatch libCoreFoundation libSocket OpenSSL::SSL)

target_include_directories(Sandbox PRIVATE usr/include/GNUstep/)
include_directories(SandboxCLang/inc
					SandboxCLang/SecureSocket
					SandboxCLang/CoreFoundation/Headers)