## Assignment & Lab Handout - S1 1S W2

### Subject: VLSI Design Fundamentals
Week 2: VLSI Design Abstraction Levels

**1. Explain why abstraction is necessary in VLSI design. Provide two benefits.**

Abstraction refers to te process of hiding lower level /other level details while working with  the current level . 

- Modern chips have millions of transistors. Handling all of them at same time makes it impossible and complex .  
With  the use of abstraction  one can test and verify at needed level instead of verifying all at a time.

- It reduces complexity by dividing into smaller understandable blocks

- It can help designers to 
    - speed up their design as multiple designers can work on different blocks instead of working collectively on the same 
    - work on the current blocking without the need of understanding other blocks.

- Helps in reusing of IP cores 
IP stands for Intellectual Property.
    - IP cores are reusuable blocks of code with a specific functionality .
    - Instead of redesigning the same module and verify it multiple times , one can reuse the IP cores

**2.Describe the six abstraction levels used in VLSI. Provide one example for each.**

from low to high

**1. Device Level** 
- Direct behavior of MOSFET devices.
Example: MOSFET Id–Vgs characteristics/design.

**2. Transistor Level**
- Circuits built from MOS transistors.
Example: CMOS logic for gates or other circuits.

**3. Logic Gate Level**
- Gates and sequential circuits made from transistors.
Example: Gate level design for NAND gate, D flip-flop.

**4. Register Transfer Level (RTL)**
- Code using HDL
Example: 4-bit adder in Verilog.

**5. Architecture Level**
- Complete processor core or functional unit.

Example: ARM Cortex-A CPU architecture.

**6. System Level (highest)**
- Focus: Entire SoC with CPU, GPU, memory, I/O, etc.
Example: Qualcomm / Snapdragon Processors.


