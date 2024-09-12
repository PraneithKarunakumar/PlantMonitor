import serial
import csv
import time
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",    
  user="root", 
  password="", 
  database="plantsensorvalues" 
)


if mydb.is_connected():
    print("Connected to the database!")

Cursor = mydb.cursor()

Cursor.execute("""
    CREATE TABLE IF NOT EXISTS datas (
        id INT AUTO_INCREMENT PRIMARY KEY,
        Date DATETIME,
        temperature FLOAT,
        humidity FLOAT,
        moisture FLOAT
    )
""")

sql = "INSERT INTO datas (Date, temperature, humidity, moisture) VALUES (%s, %s, %s, %s)"

ser = serial.Serial('COM3', 9600)  # CHECK YOUR VALUES


try:
    while True:
        if ser.in_waiting > 0:
            data = ser.readline().decode().strip().split(',')
            if len(data) == 3:
                timestamp = time.strftime('%Y-%m-%d %H:%M:%S')
                temperature = data[0]
                humidity = data[1]
                moisture = data[2]

                print(f"{timestamp} - Temperature: {temperature}, Humidity: {humidity}, Moisture: {moisture}")
                val = (timestamp,temperature,humidity,moisture)
                Cursor.execute(sql, val)
                mydb.commit()  

        time.sleep(1)  

except KeyboardInterrupt:
    print("Program stopped by User")

finally:
    ser.close() 
    Cursor.close()  
    mydb.close()  