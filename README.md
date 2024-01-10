![WhatsApp Image 2024-01-10 at 13 52 39_ce241a48](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/2bee65c3-6e37-4e40-94fd-3035d63c4d2c)![WhatsApp Image 2024-01-10 at 13 52 39_281a5b5d](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/3a05fbf8-909e-4f06-9f40-679255bbb1a6)# internsctl - Custom Linux Command

## Overview

internsctl is a custom Linux command designed to provide various system-related operations. It includes functionalities to retrieve CPU information, memory information, manage users, and obtain file details.

## Installation

1. Download the internsctl script to your local machine.
2. Grant execute permissions to the script using the command: chmod +x internsctl.
3. Run the script using ./internsctl followed by the desired command and options.

## Usage

### Manual Page

To view the manual page, execute:

./internsctl --help
![WhatsApp Image 2024-01-10 at 13 59 18_12cb64e3](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/8347275a-0a75-4af5-b01b-2df3b01ebd2a)


Version Information:

To check the version of the command, execute:
./internsctl --version
![WhatsApp Image 2024-01-10 at 13 59 18_577ed335](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/a1ea7452-d9c7-4a41-b06d-85bd75fb62f7)


CPU Information:

To get CPU information, use:
./internsctl cpu getinfo
![WhatsApp Image 2024-01-10 at 13 52 39_ce241a48](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/17ec9446-d455-4d1c-b7c3-61313aa2ae08)

Memory Information:

To get memory information, use:
./internsctl memory getinfo
![WhatsApp Image 2024-01-10 at 13 52 39_ec581826](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/3bd3ae59-c418-4b1f-beb5-6c68363413a7)

User Management:

Create User:

To create a new user, use:
./internsctl user create <username>
Replace <username> with the desired username.
![WhatsApp Image 2024-01-10 at 13 52 39_b002c319](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/35600211-ed01-4c1d-8f4c-b568ca59169c)

List Users:

To list all regular users, use:
./internsctl user list
![WhatsApp Image 2024-01-10 at 13 52 38_1aebd320](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/8bd10800-cd24-4375-bc1b-b7af7f47c5f7)

List Sudo Users:

To list users with sudo permissions, use:
./internsctl user list --sudo-only
![WhatsApp Image 2024-01-10 at 13 52 38_d620f02a](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/6f7674dc-9c88-458a-b018-807fc5b7f1d6)


Get File Information:

To get information about a file, use:
./internsctl file getinfo <file-name>
Replace <file-name> with the desired file.

File Information Options
To obtain specific information about a file, use options:

Size of the specified file:
./internsctl file getinfo --size <file-name>
![WhatsApp Image 2024-01-10 at 13 52 38_a4d42a11](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/6b4730d2-388e-4c27-bc4e-2ede40e92ed6)


Permissions of the specified file:
./internsctl file getinfo --permissions <file-name>
![WhatsApp Image 2024-01-10 at 13 52 38_d51f07f1](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/1078e674-07ec-4642-8af0-7ae4bebc7947)


Owner of the specified file:
./internsctl file getinfo --owner <file-name>
![WhatsApp Image 2024-01-10 at 13 52 38_7a3116d0](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/1769a888-3be8-4b61-a159-df8afdc64503)


Last modified time of the specified file:
./internsctl file getinfo --last-modified <file-name>
![WhatsApp Image 2024-01-10 at 13 52 38_1736d71d](https://github.com/GAGANMEHTA29/internsctl_GaganMehta/assets/99328799/ea060a59-5bc9-4d1b-a2ee-a177da8667c5)
