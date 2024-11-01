# 0x05. Processes and signals

# One-Sentence Summary

The project focuses on understanding processes and signals in Linux through various Bash scripting tasks, emphasizing the importance of process management and signal handling.

---

# Summary

## 📅 Project Timeline
- 🗓️ Project starts on November 1, 2024, at 6:00 AM and ends on November 2, 2024, at 6:00 AM.
- ⏰ Checker will be released on November 1, 2024, at 12:00 PM.

## 📚 Learning Objectives
- 🧠 Understand what a PID (Process ID) is.
- 🔍 Learn how to find and manage processes using Bash scripts.
- 🚫 Recognize signals that cannot be ignored.

## 🛠️ Project Requirements
- 📝 All scripts must be executable and pass Shellcheck without errors.
- 📄 A README.md file is mandatory at the project root.
- 🖥️ Scripts should be written for Ubuntu 20.04 LTS.

## 📝 Tasks Overview
- 🥇 Task 0: Create a script to display its own PID.
- 🥈 Task 1: List all currently running processes.
- 🥉 Task 2: Show the PID of the Bash process.
- 🔄 Task 4: Create a script that outputs "To infinity and beyond" indefinitely.
- ❌ Task 5: Write a script to stop the previous script using `kill`.

---

# Content Analysis

| Task Number | Description                                      | Requirements                                   |
|-------------|--------------------------------------------------|------------------------------------------------|
| 0           | Display own PID                                  | Must show the PID of the script itself.       |
| 1           | List all processes                               | Must show all processes in a user-oriented format. |
| 2           | Show Bash PID                                   | Cannot use `pgrep`.                           |
| 4           | Infinite loop script                            | Must include a sleep of 2 seconds between iterations. |
| 5           | Stop the infinite loop script                   | Must use `kill` to terminate the process.     |
| 6           | Stop the infinite loop without `kill`          | Must find an alternative method to stop the process. |
| 7           | Display message on receiving SIGTERM            | Must show "I am invincible!!!" when terminated. |
| 8           | Kill the 7-highlander process                   | Must successfully terminate the process.      |

---

# Extra Information

- **PID (Process ID)**: A unique identifier assigned by the operating system to each process.
- **Signals**: Notifications sent to processes to trigger specific behaviors, such as termination or suspension.
- **Bash Scripting**: A method of automating tasks in Unix/Linux environments using the Bash shell.
- **Ubuntu 20.04 LTS**: A long-term support version of the Ubuntu operating system, widely used for development and server environments.
