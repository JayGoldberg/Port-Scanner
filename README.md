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


