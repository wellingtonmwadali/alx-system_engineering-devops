
# Process and PID Readme

This readme provides an overview of important concepts related to processes, PID (Process IDentifier), and signals in computer systems.

## Table of Contents
- [What is a PID?](#what-is-a-pid)
- [What is a Process?](#what-is-a-process)
- [How to Find a Process's PID](#how-to-find-a-processs-pid)
- [How to Kill a Process](#how-to-kill-a-process)
- [What is a Signal?](#what-is-a-signal)
- [Two Signals That Cannot be Ignored](#two-signals-that-cannot-be-ignored)

## What is a PID?
PID stands for Process IDentifier. It is a unique numerical identifier assigned to a process in an operating system. Each process running on a system is assigned a PID, allowing the operating system to identify and manage that specific process.

## What is a Process?
A process refers to an instance of a running program on a computer. It represents the execution of a program in memory. A process can consist of one or more threads, which are smaller units of execution within a process. Each process has its own memory space and resources allocated to it.

## How to Find a Process's PID
To find a process's PID, you can use various commands depending on the operating system you are using:
- In Linux and Unix-like systems, the `ps` command is commonly used. For example, `ps aux | grep process_name` will display the process details along with their PIDs.
- In macOS, you can use `ps` or `top` commands to find the PID of a process.
- In Windows, the `tasklist` command can be used to list all running processes along with their PIDs.

## How to Kill a Process
To kill a process, you can use the `kill` command (or `killall` in some systems) followed by the PID of the process. The `kill` command sends a specific signal to the process, requesting it to terminate. By default, the `SIGTERM` signal is sent, allowing the process to perform cleanup tasks before exiting gracefully. For example, to kill a process with PID 1234, you can use `kill 1234`.

## What is a Signal?
A signal is a software interrupt delivered to a process by the operating system. It can be used to notify a process about various events or to request specific actions. Signals can be sent to processes to perform actions like termination, suspension, or handling specific events.

## Two Signals That Cannot be Ignored
There are two signals that cannot be ignored or caught by a process:
1. `SIGKILL` (signal number 9): This signal is used to forcefully terminate a process. When a process receives `SIGKILL`, it is immediately terminated without any chance to perform cleanup tasks.
2. `SIGSTOP` (signal number 19 or 17): This signal is used to suspend a process. When a process receives `SIGSTOP`, it is paused and put into a suspended state. Unlike other signals, `SIGSTOP` cannot be caught or ignored by the process.

These signals are typically used for critical operations or to handle exceptional circumstances where immediate termination or suspension of a process is required.

Please note that the usage of process-related commands and signals may vary slightly depending on the operating system and specific requirements of your system.

Feel free to refer to the specific documentation of your operating system for more detailed information and usage examples.
