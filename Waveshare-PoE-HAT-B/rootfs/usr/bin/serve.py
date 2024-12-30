from fastapi import FastAPI
import smbus

app = FastAPI()

# Initialize I2C
bus = smbus.SMBus(1)  # Use I2C bus 1
I2C_ADDRESS = 0x76  # Replace with your device's I2C address

@app.get("/sensor")
def read_sensor():
    value = bus.read_byte(I2C_ADDRESS)  # Replace with actual read logic
    return {"value": value}
