import os
import re
import time
from influxdb_client import InfluxDBClient
from influxdb_client.client.write_api import SYNCHRONOUS

def get_cpu_temperature():
    with open("/sys/class/thermal/thermal_zone0/temp", "r") as temperature_file:
        temperature = temperature_file.read()
        temperature = float(temperature) / 1000
        return temperature

def main():
    # Create an InfluxDB client
    client = InfluxDBClient(url="http://YourHost:8086", 
        token="YourToken")
    write_api = client.write_api(write_options=SYNCHRONOUS)
    print("Start")
    while True:
        try:
            # Get the CPU temperature
            temperature = get_cpu_temperature()
            # Prepare the data in the InfluxDB line protocol format
            data = f"cpu_temperature,host=YourHost value={temperature}"
            # Write the data to InfluxDB
            write_api.write("YourBucket", "YourOrg", data)
            # Wait for some time before repeating
        except:
            current_time = time.strftime("%Y-%m-%d %H:%M:%S", time.gmtime(time.time()+25200))
            print(f"{current_time} Error: {e}")
        # Wait for some time before repeating
        time.sleep(10)

if __name__ == '__main__':
    main()
