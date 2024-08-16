import serial

def bin_to_bytes(bin_str):
    return int(bin_str, 2).to_bytes((len(bin_str)) // 8, 'little')

def bytes_to_bits_binary(byte_data):
    bits_data = bin(int.from_bytes(byte_data, byteorder='little'))[2:]
    if len(bits_data) < 16:
        bits_data = '0' * (16 - len(bits_data)) + bits_data
    return bits_data

COMMANDS = {
    'SELECT': {'1': '00000000', '2': '00000001', '3': '00000010', '4': '00000011'},
    'WRITE': '01000000',
    'READ': '10000000',
    'ERASE' : '11000000'
}

ser = serial.Serial('/dev/ttyUSB1', 115200)
ser.timeout = 1.0

while True:
    try:
        
        code_line = input("Enter command: ")
        cıde_line = code_line.upper()
        parts = code_line.split(" ")
        if parts[0] == "SELECT":
            ser.write(bin_to_bytes(COMMANDS['SELECT'][parts[1]]))
            ser.write(bin_to_bytes('00000000'))
            ser.write(bin_to_bytes('00000000'))
            ser.write(bin_to_bytes('00000000'))
        elif parts[0] == 'WRITE':
            ser.write(bin_to_bytes(COMMANDS['WRITE']))
            ser.write(bin_to_bytes(parts[1]))
            ser.write(bin_to_bytes(parts[2]))
        elif parts[0] == 'READ':
            ser.write(bin_to_bytes(COMMANDS['READ']))
            ser.write(bin_to_bytes(parts[1]))
            ser.write(bin_to_bytes('00000000'))
            ser.write(bin_to_bytes('00000000'))
            raw_val = ser.read_until(size=2)
            print(bytes_to_bits_binary(raw_val))
        elif parts[0] == 'ERASE':
            ser.write(bin_to_bytes(COMMANDS['ERASE']))
            ser.write(bin_to_bytes(parts[1]))
            ser.write(bin_to_bytes('00000000'))
            ser.write(bin_to_bytes('00000000'))
    except (IndexError, OverflowError, KeyError, ValueError) as e:
        print("Error in command")
    except KeyboardInterrupt:
        ser.close()
        break
