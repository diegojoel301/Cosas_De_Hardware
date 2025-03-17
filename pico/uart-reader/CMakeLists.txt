cmake_minimum_required(VERSION 3.13)

include(pico_sdk_import.cmake)

project(uart_read_pico C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()

add_executable(uart_read_pico
    main.c
)

pico_enable_stdio_usb(uart_read_pico 1)
pico_enable_stdio_uart(uart_read_pico 0)
pico_enable_stdio_uart(uart_read_pico 4)
pico_enable_stdio_uart(uart_read_pico 5)

target_link_libraries(uart_read_pico pico_stdlib hardware_uart)

pico_add_extra_outputs(uart_read_pico)