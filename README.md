# Logic Design Spring 2023

These are my solutions to the assignments for **Logic Design (M1522.000700)**, taken in Spring 2023 at **Seoul National University**.

- **Instructor:** [Chang-gun Lee](https://cse.snu.ac.kr/en/people/faculty/94)

- **Course Overview:** This course covers digital logic design, including combinational and sequential circuits, Verilog programming, hardware simulation and FPGA implementation.


## Labs

### **Lab 1 (April 6, 2023)**
- **Half-Adder Implementation on Breadboard**

### **Lab 2 (April 13, 2023)**
1. **2-bit Comparator (LT, EQ, GT)**  
   - Implement and simulate using Xilinx ISE (Schematic).
2. **2-bit Comparator (GT)**
   - Implement on a physical board using DIP switches and basic logic gates.

### **Lab 3 (April 20, 2023)**
1. **74x139 (2-to-4 Decoder)**  
   - Implement using Structural, Data-flow, and Behavioral descriptions.
2. **3-to-8 Decoder**  
   - Implement using 2-to-4 Decoders.
3. **4-to-1 Multiplexer (MUX)**  
   - Implement using Structural, Data-flow, and Behavioral descriptions.

### **Lab 4 (April 27, 2023)**
- **BCD to 7-segment Decoder**  
   - Implement using Structural, Data-flow, and Behavioral descriptions in Xilinx ISE.
- **BCD to 7-segment Decoder for Klingon Numerals**  
   - Similar implementation, but the 7-segment display shows Klingon numerals instead of decimal digits.

### **Lab 5 (May 4, 2023)**
- **Ripple Carry Adder**  
   - Implement in Verilog and program it on the FPGA board.
- **1-bit Arithmetic Logic Unit (ALU)**  
   - Implement in Verilog, simulate all outputs using a testbench, and program/test on the FPGA board.

### **Lab 6 (May 18, 2023)**
**Sequential Logic Implementation**
- Implement the following in Verilog and simulate:
    1. R-S Latch
    2. Gated R-S Latch
    3. Simple Oscillator
    4. R-S Flip-Flop (Edge-triggered)

### **Lab 7 (May 25, 2023)**
- **Binary Counter**  
   - Implement using JK Flip-Flops.
- **Frequency Divider**  
   - Implement using JK Flip-Flops to generate a 1Hz clock.
- **Two-Digit Counter**  
   - Implement in Verilog using modules: Frequency Divider, Binary Counter, and BCD to 7-segment Decoder.
- **Implementation on Logic Design Board**  
   - Program the Two-Digit Counter on the Logic Design Board, using a 50MHz oscillator, tactile switch for reset, and two 7-segment displays.

## Final Project: Microprocessor Design
- **Overview**  
   - Implemented an 8-bit microprocessor in Verilog and programmed it on FPGA.
   - Components: ALU, control unit, system memory, registers, and instruction memory.
   - Uses a 50MHz clock to generate a 1Hz clock (1 tick per second).
  
- **Design**
    - **PC (Program Counter)**: Tracks instruction address and handles jump operations.
    - **Registers**: Four 8-bit general-purpose registers.
    - **Instruction Memory**: 8-bit instruction set for operations (add, load, store, jump).
    - **Control Unit**: Manages operations based on instruction type.
    - **ALU**: Performs add operations.
    - **Data Memory**: 8-bit addressable memory with 32 registers.
    - **7-Segment Display**: Displays register values and PC value in hexadecimal.

- **Functionality**
    - **Instructions**: Add, load, store, jump.
    - **Instruction Fetch and Execution**: Instructions are fetched from memory, decoded by the control unit, and executed by the ALU and memory modules.
    - **Results**: Simulation results matched the actual results when the design was run on the FPGA.
