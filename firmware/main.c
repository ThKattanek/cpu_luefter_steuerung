/* Name: main.c
 * Projekt: cpu_lueftersteuerung
 * Author: Thorsten Kattanek
 * Geändert am: 19.05.2019
 * Copyright: Thorsten Kattanek
 * License: GNU GPL v2 (see License.txt), GNU GPL v3 or proprietary (CommercialLicense.txt)
 *
 */

#define F_CPU   8000000UL
    
#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/pgmspace.h>   /* benötigt von usbdrv.h */

// PinOut
// PB1 - FAN_POWER
// PB2 - FAN_PWM

// PA0 - 7_SEG_SER
// PA1 - 7_SEG_SRCLK
// PA2 - 7_SEG_RCLK

// PB0 - PUSH_BUTTON1

void InitMotor(void);
void InitPWMChannel(void);
void Init7Segment(void);
void InitInputs(void);

void MotorOn(void);
void MotorOff(void);
void SetMotorSpeed(unsigned char speed);

void Set7Segment(uint8_t value);
void Set7SegmentNumber(uint8_t num);

int main(void)
{
    InitMotor();
    InitPWMChannel();
    Init7Segment();
    InitInputs();

    Set7SegmentNumber(0);

    uint8_t number = 0;

    const uint8_t speed_tbl[6] = {0,50,100,150,200,255};
    uint8_t current_speed = 0; 	// 0 = Aus
    uint8_t key, old_key = 0;
    uint8_t key_wait1 = 0;

    while(1)
    {
        key = (PINB >> PB0) & 1;

        if(key != old_key && key_wait1 == 0)
        {
            if(!key)
            {
                current_speed++;
                if(current_speed == 6)
                    current_speed = 0;
                Set7SegmentNumber(current_speed);

                if(current_speed == 0)
                    MotorOff();
                else
                    MotorOn();

                SetMotorSpeed(speed_tbl[current_speed]);
            }
            key_wait1 = 0xff;
        }
        else if(key_wait1 > 0) {
            key_wait1--;
        }

        old_key = key;
    }
}

/* ------------------------------------------------------------------------- */

void InitMotor(void)
{
    // Motor On/Off Signal muss definiert 5V oder GND haben.
    DDRB |= 1 << PB1;
    PORTB &= ~(1 << PB1);
}

void InitPWMChannel(void)
{
    DDRB |= 1 << PB2;                                   // OC0A auf Ausgang setzen
    TCCR0A |= 1 << COM0A1 | 1 << WGM00 | 1 << WGM01;     // OC0A non-invertmode - FAST PWM Mode
    TCCR0B |= 1 << CS01;                                 // Prescaler auf 8 --> 8MHz / 8 / 256 = 3,9 KHz
    OCR0A = 0;
}

void Init7Segment(void)
{
    DDRA |= 1 << PA0 | 1 << PA1 | 1 << PA2;

    PORTA |= 1 << PA0;       // SER auf HI -> LED AUS

    PORTA &= ~(1 << PA1 | 1 << PA2);    // SRCLK & RCLK auf Low setzen

    for(int i=0; i<8; i++)      // SRCLK 8x
    {
        PORTA |= 1 << PA1;
        PORTA &= ~(1 << PA1);
    }

    PORTA |= 1 << PA2;      // RCLK 1x
    PORTA &= ~(1 << PA2);
}

void InitInputs(void)
{
    DDRB &= ~(1 << PB0);
    PINB |= 1 << PB0;      // Set intern pullups
}

void Set7Segment(uint8_t value)
{
    for(int i=0; i<8; i++)
    {
        PORTA &= 0xfe;                      // SER loeschen
        PORTA |= (value >> (7-i)) & 0x01;   // SER mit Bit füllen
        PORTA ^= 0x01;                      // SER invertieren

        PORTA |= 1 << PA1;                  // SRCLK
        PORTA &= ~(1 << PA1);
    }

    PORTA |= 1 << PA2;                      // RCLK 1x
    PORTA &= ~(1 << PA2);
}

void Set7SegmentNumber(uint8_t num)
{
    const uint8_t num_conv_tbl[10] = {0xed, 0x21, 0xf4, 0xf1, 0x39, 0xd9, 0xdd, 0x61, 0xfd, 0xf9};

    if(num < 10)
    Set7Segment(num_conv_tbl[num]);
}

///
/// \brief MotorOn
///
void MotorOn(void)
{
    PORTB |= 1 << PB1;
}

///
/// \brief MotorOff
///
void MotorOff(void)
{
    PORTB &= ~(1 << PB1);
}

///
/// \brief SetMotorSpeed
/// \param speed = 0-255 (0=slow 255=fast)
///
void SetMotorSpeed(unsigned char speed)
{
    OCR0A = speed;
}
