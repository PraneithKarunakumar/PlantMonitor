


!!!!!WARNING!!!!!!!!!

For the Arduino Code and Python code I ran it on an older IDE so newer IDE may affect the python code in ArduinoToSQL

_______________________________________________________________________________________________________________________


Recommendation: I recommend that you make a new SQL Database rather than use the one I have and that the table
follows the values bellow:

        id INT AUTO_INCREMENT PRIMARY KEY
        Date DATETIME
        temperature FLOAT
        humidity FLOAT
        moisture FLOAT


_______________________________________________________________________________________________________________________


Steps to get this to work:

make the Arduino Circuit and run it on Arduino

Open up your SQL database(with XXAMPP)

run the python file and make sure your com ports and baud rate are the same as the arduino

put the plantmonitor folder into the HTDOC folder thats located in the XXAMPP Folder on the C:drive

Put http://localhost/PlantMonitor/Start.php into your web browser and it should start presenting data and 
info on the plant