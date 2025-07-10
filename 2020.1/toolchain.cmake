set(CMAKE_SYSTEM_NAME Linux )
set(CMAKE_SYSTEM_PROCESSOR arm )

set(CMAKE_SYSROOT /tools/Xilinx/Vitis/2020.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/cortexa9t2hf-neon-xilinx-linux-gnueabi)
set(CMAKE_C_COMPILER /tools/Xilinx/Vitis/2020.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER /tools/Xilinx/Vitis/2020.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-g++)
set(CMAKE_LINKER /tools/Xilinx/Vitis/2020.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-ld)
set(CMAKE_AR /tools/Xilinx/Vitis/2020.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-ar )
set(CMAKE_OBJCOPY /tools/Xilinx/Vitis/2020.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-objcopy)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER )
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY )
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY )
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY )

# После переход на GCC 9.2 в какой-то момент проект перестал собираться.
# Ошибка о слишком длинной строку в терминале.
# Добавил пять строк ниже, заработало. Строчки отсюда: https://stackoverflow.com/a/43188057/12925144
SET(CMAKE_C_USE_RESPONSE_FILE_FOR_OBJECTS 1)
SET(CMAKE_CXX_USE_RESPONSE_FILE_FOR_OBJECTS 1)

SET(CMAKE_C_RESPONSE_FILE_LINK_FLAG "@")
SET(CMAKE_CXX_RESPONSE_FILE_LINK_FLAG "@")

SET(CMAKE_NINJA_FORCE_RESPONSE_FILE 1 CACHE INTERNAL "")