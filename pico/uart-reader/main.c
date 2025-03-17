#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/uart.h"
#include "hardware/gpio.h"

#define UART_ID uart1
#define BAUD_RATE 9600
#define TX_PIN 4
#define RX_PIN 5

void read_uart() {
    while (true) {
        if (uart_is_readable(UART_ID)) {
            uint8_t data = uart_getc(UART_ID);
            printf("Datos recibidos: %s\n", data);
        }
        sleep_ms(100);
    }
}


int main() {
    stdio_init_all();
    uart_init(UART_ID, BAUD_RATE);
    gpio_set_function(TX_PIN, GPIO_FUNC_UART);
    gpio_set_function(RX_PIN, GPIO_FUNC_UART);

    read_uart();
}
