void main() {
    TRISC &= ~(1 << 0);
    TRISC &= ~(1 << 1);

    TRISB |= (1 << 0);
    TRISB |= (1 << 1);

    PORTC &= ~((1 << 0) | (1 << 1));

    while(1) {
        if ((PORTB >> 0) & 1) {
            PORTC |= ((1 << 0) | (1 << 1));
            Delay_ms(200);
            PORTC &= ~((1 << 0) | (1 << 1));
            Delay_ms(200);
        }
        else if ((PORTB >> 1) & 1) {
            PORTC |= ((1 << 0) | (1 << 1));
            Delay_ms(500);
            PORTC &= ~((1 << 0) | (1 << 1));
            Delay_ms(500);
        }
        else {
            PORTC &= ~((1 << 0) | (1 << 1));
        }
    }
}