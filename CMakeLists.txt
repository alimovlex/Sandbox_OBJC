# CMakeLists.txt 
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

cmake_minimum_required(VERSION 3.0.0)
project(Sandbox)

SET(CMAKE_C_COMPILER clang)
SET(CMAKE_CXX_COMPILER clang++)

add_executable(Sandbox
		main.m
		SandboxCLang/src/basics.m
		SandboxCLang/src/sandbox.m
		SandboxCLang/src/structures.m
		SandboxCLang/src/complex_numbers.m
		SandboxCLang/src/polymorphism.m
)


target_compile_options(Sandbox PRIVATE
	-MMD 
	-MP 
	-DGNUSTEP
	-D__APPLE__
	-DGNUSTEP_BASE_LIBRARY=1 
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
	-fblocks	
	-O2 
	-fgnu-runtime 
	-fconstant-string-class=NSConstantString 
	-I. 
	# Dirs of GNUstep and libobj
	-I/home/ani/GNUstep/Library/Headers 
	-I/usr/local/include/GNUstep 
	-I/usr/include/GNUstep
)

target_link_libraries(Sandbox gnustep-base objc BlocksRuntime)

target_include_directories(Sandbox PRIVATE usr/include/GNUstep/)
include_directories(SandboxCLang/inc)