/* Name: main.c
 * Projekt: cpu_lueftersteuerung
 * Author: Thorsten Kattanek
 * Erstellt am: 09.06.2016
 * Copyright: Thorsten Kattanek
 * License: GNU GPL v2 (see License.txt), GNU GPL v3 or proprietary (CommercialLicense.txt)
 *
 */

#define F_CPU   12000000UL

#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/pgmspace.h>   /* benötigt von usbdrv.h */

void InitPWMChannels();
void MotorOn(void);
void MotorOff(void);
void SetMotorSpeed(unsigned char value);
void Set7Segment(char value);

int main(void)
{
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
}

/* ------------------------------------------------------------------------- */
void InitPWMChannels()
{
    DDRB |= (1 << PB1 );
    // COM1A1 -> Compare Output Mode Channel A
    // COM1A0 -> Clear OC1A on Compare Match
    // PWM, Phase Correct 8-bit
    TCCR1A = (1<<COM1A1) | (1<<WGM10);
    // Kein Prescaling
    TCCR1B = (1 << CS10);
    OCR1A = 0;
}

void Set7Segment(char value)
{
    if(value >9 || value < 0)
    {
	PORTC = 0x0f;
	return;
    }
    PORTC = value;
}

void MotorOn(void)
{
    PORTB |= 1 << PB0;
}

void MotorOff(void)
{
    PORTB &= ~(1 << PB0);
}

void SetMotorSpeed(unsigned char value)
{
    OCR1A = value;
}