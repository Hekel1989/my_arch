#!/bin/bash

# Main script to run all tasks

# Function to download and execute a script
run_script() {
    script_name=$1
    echo "Executing $script_name..."
    curl -s "https://raw.githubusercontent.com/Hekel1989/my_arch/main/$script_name" | bash
    echo "$script_name completed."
    echo
}

# Execute all scripts in order
run_script "cachyos_repos.sh"
run_script "chaotic_aur.sh"
run_script "cachyos_kernel.sh"
run_script "update_grub.sh"
run_script "cachyos_settings.sh"
run_script "install_packages.sh"

echo "All tasks completed successfully!"
