#!/bin/bash

# Function to display the manual page
display_manual() {
    echo "internsctl(1)                 User Commands                internsctl(1)"
    echo
    echo "NAME"
    echo "       internsctl - Custom Linux command for operations"
    echo
    echo "SYNOPSIS"
    echo "       internsctl [OPTIONS] COMMAND [ARGS...]"
    echo
    echo "DESCRIPTION"
    echo "       Custom Linux command for various operations."
    echo
    echo "OPTIONS"
    echo "       --help        Display help for internsctl"
    echo "       --version     Display version information"
    echo
    echo "COMMANDS"
    echo "       cpu           Get CPU information"
    echo "       memory        Get memory information"
    echo "       user          Manage users"
    echo "       file          Get information about a file"
    echo
    echo "SEE ALSO"
    echo "       For more information, use 'internsctl COMMAND --help'"
}

# Function to display help
display_help() {
    echo "Usage: internsctl COMMAND [ARGS...]"
    echo
    echo "Commands:"
    echo "  cpu getinfo               Get CPU information"
    echo "  memory getinfo            Get memory information"
    echo "  user create <username>    Create a new user"
    echo "  user list                 List all regular users"
    echo "  user list --sudo-only     List users with sudo permissions"
    echo "  file getinfo <file-name>  Get information about a file"
    echo
    echo "Options:"
    echo "  --help                    Display this help message"
    echo "  --version                 Display version information"
}

# Function to display version
display_version() {
    echo "internsctl v0.1.0"
}

# Function to get CPU information
get_cpu_info() {
    lscpu
}

# Function to get memory information
get_memory_info() {
    free
}

# Function to create a new user
create_user() {
    username="$1"
    sudo useradd -m "$username"
    echo "User $username created successfully."
}

# Function to list users
list_users() {
    if [ "$1" == "--sudo-only" ]; then
        getent passwd | cut -d: -f1,3,4 | awk -F: '$2 > 999 {print $1}'
    else
        getent passwd | cut -d: -f1
    fi
}

# Function to get file information
get_file_info() {
    file_name="$1"
    size=$(stat -c%s "$file_name")
    permissions=$(stat -c%a "$file_name")
    owner=$(stat -c%U "$file_name")
    last_modified=$(stat -c%y "$file_name")

    echo "File: $file_name"
    echo "Access: $permissions"
    echo "Size(B): $size"
    echo "Owner: $owner"
    echo "Modify: $last_modified"
}

# Parse command line arguments
case "$1" in
    "cpu")
        get_cpu_info
        ;;
    "memory")
        get_memory_info
        ;;
    "user")
        case "$2" in
            "create")
                create_user "$3"
                ;;
            "list")
                list_users "$4"
                ;;
        esac
        ;;
    "file")
        case "$2" in
            "getinfo")
                if [ "$3" == "--size" ]; then
                    stat -c%s "$4"
                elif [ "$3" == "--permissions" ]; then
                    stat -c%a "$4"
                elif [ "$3" == "--owner" ]; then
                    stat -c%U "$4"
                elif [ "$3" == "--last-modified" ]; then
                    stat -c%y "$4"
                else
                    get_file_info "$4"
                fi
                ;;
        esac
        ;;
    "--help")
        display_help
        ;;
    "--version")
        display_version
        ;;
    *)
        display_manual
        ;;
esac