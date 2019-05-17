/* Name: main.c
 * Projekt: cpu_lueftersteuerung
 * Author: Thorsten Kattanek
 * Geändert am: 09.05.2019
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

void InitMotor(void);
void InitPWMChannel(void);
void Init7Segment(void);

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

    MotorOn();

    uint8_t number = 0;

    while(1)
    {
        Set7SegmentNumber(number);
        number++;
        if(number == 10)
            number = 0;
        _delay_ms(200);
    }
    
    /*
    unsigned char speed_tbl[6] = {0,50,100,150,200,255};
    unsigned char current_speed = 0; 	// 0 = Ausgang
    unsigned char key, old_key = 0;
    
    DDRB = (1 << PB0 );	// PIN0 von PB auf Ausgang schalten
    
    DDRC = 0x0f;	// PINC0-3 Steuerung Anzeige
    PINC = 0;		// Keine internen Pullups setzen

    InitPWMChannels();
    MotorOff();
    SetMotorSpeed(0);
    Set7Segment(0);
    
    while( 1 )
    {
	key = (PINC >> 4) & 1;
	
	if(key != old_key)
	{
	    if(!key)
	    {
		current_speed++;
		if(current_speed == 6)
		    current_speed = 0;
		Set7Segment(current_speed);
		
		if(current_speed == 0)
		    MotorOff();
		else
		    MotorOn();
		
		SetMotorSpeed(speed_tbl[current_speed]);
	    }
	}
	
	old_key = key;
    }  
    */
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
