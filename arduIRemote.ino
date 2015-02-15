

#include "etherShield.h"
#include "ETHER_28J60.h"
#include <IRremote.h>

IRsend irsend;

static uint8_t mac[6] = {0x54, 0x55, 0x58, 0x10, 0x00, 0x24};   // this just needs to be unique for your network, 
                                                                // so unless you have more than one of these boards
                                                                // connected, you should be fine with this value.
                                                           
static uint8_t ip[4] = {192, 168, 1, 145};                       // the IP address for your board. Check your home hub
                                                                // to find an IP address not in use and pick that
                                                                // this or 10.0.0.15 are likely formats for an address
                                                                // that will work.

static uint16_t port = 80;                                      // Use port 80 - the standard for HTTP

ETHER_28J60 e;

void setup()
{ 
  e.setup(mac, ip, port);
   Serial.begin(9600);
  Serial.println("Tatasky RC\nControls:");
  Serial.println("Power : p");
  Serial.println("Next Channel : c");
  Serial.println("Previous Channel : d");
  Serial.println("Volume up : v");
  Serial.println("Volume down : u");
  Serial.println("Back : b");
  Serial.println("Mute : m");
  Serial.println("0-9 : 0-9");
  Serial.println("Complete channel code can also be typed at once Eg:123");
}

void loop()
{
  char* params;
  if (params = e.serviceRequest())
  {
      e.print("<H1>Web Remote</H1>");
      e.print("<H2><A HREF='?pwr'>Power</A></H2>");
      e.print("<H2><A HREF='?mute'>Mute</A></H2>");
      e.print("<H2><A HREF='?vup'>Volume+</A></H2>");
      e.print("<H2><A HREF='?vdwn'>Volume-</A></H2>");
      e.print("<H2><A HREF='?cup'>Channel+</A></H2>");
      e.print("<H2><A HREF='?cdwn'>Channel-</A></H2>");
      e.print("<H2><A HREF='?bck'>Back</A></H2>");
    if (strcmp(params, "?pwr") == 0)
    {
      irsend.sendRC6(0xC0000C, 24);
      Serial.println("Power Button");
    }
    else if (strcmp(params, "?mute") == 0) 
    { 
     irsend.sendRC6(0xC0000D, 24);
     Serial.println("Mute");
    }
    else if(strcmp(params, "?vup") == 0)
    {
      irsend.sendRC6(0xC00010, 24);
      Serial.println("Volume +");
    }
    else if(strcmp(params, "?bck") == 0)
    {
      irsend.sendRC6(0xC00083, 24);
      Serial.println("Back");
    }
    else if(strcmp(params, "?vdwn") == 0)
    {    
      irsend.sendRC6(0xC00011, 24);
      Serial.println("Volume -");
    }
        else if(strcmp(params, "?cup") == 0)
    {    
      irsend.sendRC6(0xC00020, 24);
      Serial.println("Channe +");
    }
        else if(strcmp(params, "?cdwn") == 0)
    {    
      irsend.sendRC6(0xC00021, 24);
      Serial.println("Channel -");
    }
         else if(strcmp(params, "?ch0") == 0)
    {    
      irsend.sendRC6(0xC00000, 24);
      Serial.println("Channel 0");
    }
     else if(strcmp(params, "?ch1") == 0)
    {    
      irsend.sendRC6(0xC00001, 24);
      Serial.println("Channel 1");
    }
     else if(strcmp(params, "?ch2") == 0)
    {    
      irsend.sendRC6(0xC00002, 24);
      Serial.println("Channel 2");
    }
     else if(strcmp(params, "?ch3") == 0)
    {    
      irsend.sendRC6(0xC00003, 24);
      Serial.println("Channel 3");
    }
     else if(strcmp(params, "?ch4") == 0)
    {    
      irsend.sendRC6(0xC00004, 24);
      Serial.println("Channel 4");
    }
     else if(strcmp(params, "?ch5") == 0)
    {    
      irsend.sendRC6(0xC00005, 24);
      Serial.println("Channel 5");
    }
     else if(strcmp(params, "?ch6") == 0)
    {    
      irsend.sendRC6(0xC00006, 24);
      Serial.println("Channel 6");
    }
     else if(strcmp(params, "?ch7") == 0)
    {    
      irsend.sendRC6(0xC00007, 24);
      Serial.println("Channel 7");
    }
     else if(strcmp(params, "?ch8") == 0)
    {    
      irsend.sendRC6(0xC00008, 24);
      Serial.println("Channel 8");
    }
     else if(strcmp(params, "?ch9") == 0)
    {    
      irsend.sendRC6(0xC00009, 24);
      Serial.println("Channel 9");
    }
     else if(strcmp(params, "?aon") == 0)
    {    
      irsend.sendNEC(0xE13EA45B, 32);
      delay(100);
      irsend.sendNEC(0xE13EA45B, 32);
      delay(100);
      irsend.sendNEC(0xE13EA45B, 32);
      Serial.println("AMPON");
    }
    
     else if(strcmp(params, "?aoff") == 0)
    {    
      irsend.sendNEC(0xE13E13EC, 32);
      delay(100);
      irsend.sendNEC(0xE13E13EC, 32);
      delay(100);
      irsend.sendNEC(0xE13E13EC, 32);
      Serial.println("AMPOFF");
    }
     else if(strcmp(params, "?aaux") == 0)
    {    
      irsend.sendNEC(0xE13ED926, 32);
      delay(100);
      irsend.sendNEC(0xE13ED926, 32);
      delay(100);
      irsend.sendNEC(0xE13ED926, 32);
      delay(100);
      irsend.sendNEC(0xE13ED926, 32);
      Serial.println("AMPAUX");
    }
    else if(strcmp(params, "?acd") == 0)
    {    
      irsend.sendNEC(0xE13EA15E, 32);
      delay(100);
      irsend.sendNEC(0xE13EA15E, 32);
      delay(100);
      irsend.sendNEC(0xE13EA15E, 32);
      delay(100);
      irsend.sendNEC(0xE13EA15E, 32);
      Serial.println("AMPCD");
    }
    else if(strcmp(params, "?avup") == 0)
    {    
      irsend.sendNEC(0xE13E11EE, 32);
      delay(100);
      irsend.sendNEC(0xE13E11EE, 32);
      delay(100);
      irsend.sendNEC(0xE13E11EE, 32);
      delay(100);
      irsend.sendNEC(0xE13E11EE, 32);
      Serial.println("AMVUP");
    }
    else if(strcmp(params, "?avdwn") == 0)
    {    
      irsend.sendNEC(0xE13E31CE, 32);
      delay(100);
      irsend.sendNEC(0xE13E31CE, 32);
      delay(100);
      irsend.sendNEC(0xE13E31CE, 32);
      delay(100);
      irsend.sendNEC(0xE13E31CE, 32);
      Serial.println("AMVDWN");
    }
    e.respond();
  }
}
