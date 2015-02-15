# arduino-IRemote-iOS
Arduino based IR remote control with enc28j60 and ios app to control it.

The code to be uploaded on the Arduino lies in arduIRemote.ino. It uses IR signals to control devices that rely on IR for control, in my case my TataSky STB and my NAD AMP. The IR codes that have to be used can be availed using an IR Receiver and pointing the remote control towards it. Once a button is pressed, the IRemote library is used to decode it. The irrecvDump.ino file can be used for the same. Btw, the decoded codes appear on the serial monitor in the arduino IDE.

I am using enc28j60 with ETHER_28j60 library to connect the arduino to my local network via a wireless access point. This way, i dont need to invest in a wifi shield which is way costlier than enc28j60. The IP address as well as the mac address needs to be set up manually in the arduIRemote.ino file. Once this is done, we can access the webpage hosted by the arduino through any web browser by typing in the ip address.

Now, coming to the ios app, all i am doing is accessing the link corresponding to the function i want to achieve through the ios interface.In order to hide the web browser from the GUI, all i did was make the dimensions 0x0(I am sure there is a better way to do it).

Now, once the arduino has been placed such that the IR led is in line-of-sight with the device(s) i want to control,i no longer need to be in the line-of-sight as now i will be using wifi on my iPod touch to access the arduino (wifi doesn't require line-of-sight).

Thus, now i can be seated anywhere in my house where i have wifi coverage and have complete control of the tv.

