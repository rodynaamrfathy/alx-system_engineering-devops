# SSH Project

In this project, the focus was on working with SSH (Secure Shell), connecting to servers, and configuring the SSH client for secure and convenient access. The tasks were completed on a server provided by ALX.

## Tasks :page_with_curl:

### Task 0: Use a private key

- **Script:** [0-use_a_private_key](./0-use_a_private_key)
  
  **Description:** A Bash script using `ssh` to connect to the server with the private key `~/.ssh/school` and the user `ubuntu`.

### Task 1: Create an SSH key pair

- **Script:** [1-create_ssh_key_pair](./1-create_ssh_key_pair)

  **Description:** A Bash script that creates an RSA key pair named `school` with 4096 bits, and the private key is protected by the passphrase "betty".

### Task 2: Client configuration file

- **Script:** [2-ssh_config](./2-ssh_config)

  **Description:** SSH configuration file (`~/.ssh/config`) configured to use the private key `~/.ssh/school` and to refuse authentication using a password.

### Task 3: Let me in!

- **SSH Public Key:**
  ```
  ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN
  ```

  **Description:** The SSH public key to be added to the server's authorized keys for the `ubuntu` user.

### Task 4: Client configuration file (w/ Puppet)

- **Puppet Script:** [100-puppet_ssh_config.pp](./100-puppet_ssh_config.pp)

  **Description:** Puppet script to configure the SSH client file (`~/.ssh/config`) to use the private key `~/.ssh/school` and refuse authentication using a password.

**Note:** Replace placeholders like `98.98.98.98` or `magic-server` with your specific server details.

Feel free to explore each script for more details and run them in the specified order to accomplish the tasks.
