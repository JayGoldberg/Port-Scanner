# Simple Port Scanner

This is a simple port scanner script written in Bash that uses `netcat` (or `nc`) to scan a range of ports on a given IP address. The script checks if each port in the specified range is open or closed.

## Prerequisites

- `netcat` (or `nc`) must be installed on your system. You can check if it is installed by running `nc -h` in your terminal.

## Installation
1. Clone the repository or download the script file `main.sh`.
   
   ```bash
   git clone https://github.com/manuemmanuel/Port-Scanner.git
   ```
2. Make the script executable by running:
   
   ```bash
    chmod +x main.sh
    ```
## Usage
To use the script, run it with the following syntax:
```bash
bash main.sh <IP_ADDRESS> <START_PORT> <END_PORT> 
```

## Parameters
- `<IP_ADDRESS>`: The IP address you want to scan.
- `<START_PORT>`: The starting port number in the range.
- `<END_PORT>`: The ending port number in the range.

## Example
To scan ports `5550` to `5560` on the IP address `192.168.114.224`, use the following command:
```bash
bash main.sh 192.168.114.224 5550 5560
```
## Output
The script will output the status of each port in the specified range, indicating whether the port is open or closed.
```bash
└─$ bash main.sh 192.168.114.224 5550 5560
Port 5550 is closed
Port 5551 is closed
Port 5552 is closed
Port 5553 is closed
Port 5554 is closed
Port 5555 is open
Port 5556 is closed
Port 5557 is closed
Port 5558 is closed
Port 5559 is closed
Port 5560 is closed
```
