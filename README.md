# logisim\_cpu

**8-bit CPU design in Logisim**

## Overview

This project contains the design of a simple 8-bit processor built entirely using basic logic components in **Logisim**.
The processor supports **81 different instructions** and is capable of running small programs such as **prime factorization** and **Fibonacci sequence calculation**.

The main goal of the project was to **understand processor operation at the lowest level** — from logic gates to instruction execution.

## Features

* **Harvard architecture** – separate instruction and data lengths
* **8-bit instructions**:

  * 19 memory operations
  * 48 arithmetic operations
  * 16 control operations
* **24-bit addressing** – supports `2^24` addresses of 32-bit RAM registers (**64 MB memory**)
* **32-bit data width** – can store numbers up to `2^32 - 1`
* **Registers** – R0, R1, R2, R3, and A

## Technologies / Tools Used

* **Processor Design:** [Logisim](http://www.cburch.com/logisim/)
* **Machine Code Programming:** Notepad & manual bit-by-bit code writing

## Installation / Running

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/logisim_cpu.git
   cd logisim_cpu
   ```
2. Open `cpu.circ` in **Logisim**.
3. Load a machine code file into program memory (ROM) **or** manually enter instructions in Logisim.

## Example Programs Available

* **Prime factorization**
* **Fibonacci sequence calculation**
