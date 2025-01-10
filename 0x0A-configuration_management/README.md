# 0x0A. Configuration Management

This project is focused on using Puppet for configuration management. It includes basic Puppet manifests to automate tasks such as creating files, installing packages, and executing commands.

## Folder Structure

- **0-create_a_file.pp**  
  A Puppet manifest to create a file at `/tmp/school` with specific content, permissions, and ownership.

- **1-install_a_package.pp**  
  A Puppet manifest to install the `Flask` package (version 2.1.0) using `pip3`.

- **2-execute_a_command.pp**  
  A Puppet manifest to kill a process named `killmenow` using the `pkill` command.

## Requirements

- All manifests must pass `puppet-lint` checks without errors.
- Manifests are tested on Ubuntu 20.04 LTS with Puppet 5.5.
- Each file ends with a `.pp` extension and follows Puppet's declarative syntax.

## Usage

1. Install Puppet and puppet-lint:
   ```bash
   apt-get install -y puppet ruby-augeas ruby-shadow
   gem install puppet-lint
   ```

2. Validate each manifest using `puppet-lint`:
   ```bash
   puppet-lint <file_name>.pp
   ```

3. Apply the manifest:
   ```bash
   puppet apply <file_name>.pp
   ```

4. Verify the expected outcome:
   - Check files, packages, or processes as specified in the tasks.

## Author

Gemechis Chala  
[@venopyx](https://t.me/venopyx)  
gladsonchala@gmail.com
