# PlantMonitor


I created a plant monitor that checks the plant's moisture, humidity, and temperature using an Arduino UNO R3.
The Arduino UNO R3 utilized the DHT11 sensor and the REES52 sensor to gather the data on the plant and stream it through the serial port.
I then used a Python script that utilized the pyserial library to stream data from the arduino into a created MySQL database.
After logging all the data into the database a PHP website was made to get the most recent logging and display the data while also giving info on the plant.


Below is a link to Google Drive folder containing videos of the plant monitor at work.

https://drive.google.com/drive/folders/1AkEVXJtuPJTMPEec12wQsZlEEynMq5_r?usp=sharing 

how my circuit looked like is diplayed below

![image](https://github.com/user-attachments/assets/c03908d2-c6bb-4164-a879-9d1aaa5dfbf8)






