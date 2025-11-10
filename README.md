# Conway's Game of Life – Assembly Implementation

---

## About the Project

This project implements **Conway’s Game of Life** using low-level **x86 Assembly language**.  
It demonstrates practical concepts of computer architecture, memory management, and iterative data processing in assembly.

The program follows the classical rules of Conway’s automaton:

- **Underpopulation:** A live cell with fewer than two live neighbors dies.  
- **Survival:** A live cell with two or three live neighbors remains alive.  
- **Overpopulation:** A live cell with more than three live neighbors dies.  
- **Reproduction:** A dead cell with exactly three live neighbors becomes alive.  

The simulation progresses through multiple generations, dynamically updating the grid to reflect the system’s evolution.

---

## Features

- **Two I/O Modes** –  
  - **Mode 1:** Console-based version using `scanf` and `printf` for input/output.  
  - **Mode 2:** File-based version using `fscanf` and `fprintf` (`in.txt → out.txt`).  
  Both modes produce the same simulation output.

## Technologies Used

- **x86 Assembly (AT&T)**





