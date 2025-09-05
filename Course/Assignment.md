## Assignment & Lab Handout - S1 1S W1  

### Subject: VLSI Design Fundamentals    
Week 1: Moore’s Law, VLSI Trends, SoC vs ASIC vs FPGA

**1. Define Moore’s Law in your own words and explain its significance in the semiconductor industry.**  
 
 According to Scietist Moore , Transistors on a chip keep doubling every two years which results in increase in performance and power while the cost remained same or reduced .

 It can be stated as an observation discovered by the founder of Intel Company .

**Significance**  
i)Exponential growth in power and peformance  
ii)Cost per transistor reduced  
iii)Size of chip started becoming realtively small   
iv) This law became as an benchmark and set standards      where every chip manafacturing company started increasing the number of transistors on a silicon chip for every two years while maintaining the size and cost

**2. Research and list the transistor count of Intel CPUs from 2000 to 2020. Plot a graph showing Moore’s Law trend.**
This was the list of computer/laptop oriented flagship model silicon chips released by Intel with their codenames in brackets

| **Year** | **Representative Intel CPU**           | **Transistor Count**        |
| ---- | -----| ---- |
| **2000** | Pentium 4 (Willamette)                 | \~42 million                |
| **2001** | Pentium III-S (Tualatin)               | \~44 million                |
| **2002** | Pentium 4 (Northwood)                  | \~55 million                |
| **2003** | Pentium M (Banias)                     | \~77 million                |
| **2004** | Pentium 4 (Prescott)                   | \~125 million               |
| **2005** | Pentium D (Smithfield, dual-core)      | \~230 million               |
| **2006** | Core 2 Duo (Conroe)                    | \~291 million               |
| **2007** | Core 2 Duo (Penryn)                    | \~410 million               |
| **2008** | Core i7-920 (Nehalem)                  | \~731 million               |
| **2009** | Core i7-975 Extreme (Nehalem)          | \~731 million (quad)        |
| **2010** | Core i7-980X (Gulftown, 6-core)        | \~1170 million              |
| **2011** | Core i7-2600K (Sandy Bridge)           | \~1160 million              |
| **2012** | Core i7-3770K (Ivy Bridge)             | \~1400 million               |
| **2013** | Core i7-4960X (Ivy Bridge-E)           | \~1860 million              |
| **2014** | Core i7-5960X (Haswell-E, 8-core)      | \~2600 million               |
| **2015** | Core i7-6700K (Skylake)                | \~1750 million              |
| **2016** | Core i7-6950X (Broadwell-E, 10-core)   | \~3200 million               |
| **2017** | Xeon Skylake-SP (server)               | \~7100 million               |
| **2018** | Xeon Cascade Lake-AP (server, 48-core) | \~8400 million               |
| **2019** | Xeon Platinum 9200 (56-core, server)   | \~10200 million              |
| **2020** | Core i9-10900K (Comet Lake, 10-core)   | \~10300 million (incl. iGPU) |






```vega-lite
{
  "description": "Test Line Chart",
  "data": {
    "values": [
      {"year": 2000, "transistors": 42},
      {"year": 2002, "transistors": 55},
      {"year": 2004, "transistors": 125},
      {"year": 2006, "transistors": 291},
      {"year": 2008, "transistors": 731},
      {"year": 2010, "transistors": 1170},
      {"year": 2012, "transistors": 1400},
      {"year": 2014, "transistors": 2600},
      {"year": 2016, "transistors": 3200},
      {"year": 2018, "transistors": 4800},
      {"year": 2020, "transistors": 10300}
    ]
  },
  "mark": "line",
  "encoding": {
    "x": {"field": "year", "type": "ordinal", "title": "Year"},
    "y": {"field": "transistors", "type": "quantitative", "title": "Transistor Count (Millions)"},
    "tooltip": [{"field": "year"}, {"field": "transistors"}]
  }
}
```


**3. Differentiate between ASIC, SoC, and FPGA with two real-world examples each**

| S No.| Feature | ASIC | SOC | FPGA |
|---|---|---|---|---|
1|Fullform | Application Specific IC | System on Chip |Field Programamble Gate Array
2|Performance|Very High optimised for its purpose|Very High|Lower than ASIC/SoC
3|Power Efficiency | Very Efficient |Efficient|Less Efficient
4|Cost per unit |Low (when produced in high volumes)|Low (when produced in high volumes)|Higher per unit but no upfornt silicon fabrication cost
5|Programmability|Not Programmable mostly|Not Programmable mostly|Programmable Mostly
6|Examples|1)Google TPU (Tensor Processing Unit) → a custom chip designed only for AI/ML workloads.  2)Intel Nervana (AI accelerator) or Broadcom network switch ASICs → optimized for very high-speed packet processing.|1)Apple M1/M2 chip → CPU, GPU, AI engine, memory controller all integrated on a single die.         2)Qualcomm Snapdragon processors → Used in smartphones, combining CPU, GPU, modem, DSP, etc.|1)Xilinx/Intel FPGA boards → Used in 5G base stations for fast prototyping  2)NASA space missions → FPGAs are used since they can be reprogrammed in orbit if logic changes are needed.





**4. Explain the term 'Design Abstraction' in VLSI with a brief description of each abstraction level**

**Abstraction Levels in VLSI Design**

**i)System Level (Behavioral / Algorithmic Level)**

- Describes the overall functionality of the system without considering hardware details.  
- Uses algorithms, data flow, and input–output behavior.  
- Specified in high-level languages like C, MATLAB, or SystemC.  

Example: defining that a chip should perform video compression.

**ii)Register Transfer Level (RTL)**

- Specifies the design in terms of data transfer between registers and the operations performed on that data.  
- Describes how data flows through the system clock by clock.  
- Written using HDLs (VHDL, Verilog, SystemVerilog).

Example: “On each clock cycle, add A and B, and store result in register R.”

**iii)Logic Level (Gate Level)**

- Describes the design using logic gates and flip-flops (AND, OR, NOT, DFF, etc.).  
- RTL is synthesized into this level.  
- Timing, Boolean equations, and logic minimization are considered.

Example: an adder implemented with XOR, AND, and OR gates.

**iv)Circuit Level (Transistor Level)**

- Each logic gate is represented by its transistor implementation (using CMOS, pass transistor logic, etc.).  
- Electrical behavior such as capacitance, current, and power are considered.

Example: a NAND gate implemented with 4 MOS transistors.

**v)Physical Level (Layout / Geometrical Level)**

- Deals with the actual geometrical representation of the circuit on silicon.  
- Includes placement of transistors, interconnects, routing, layers, and mask generation.  
- Output is the layout (GDSII file) used for fabrication.

Example: polygons representing n-well, p-well, metal, polysilicon layers.

>**Overview**
System Level - ***Functionality*** using ***software languages without hardware*** consideration  

>Register Transfer Level -  ***Data transfer*** between ***Registers*** on every ***clock cycle***

>Gate Level - ***logic gates and flip-flops***

>Transistor level - ***logic gate***  represented by  ***transistor implementation***

>Physical Level - ***Placement of transistors,routing,masking*** etc

**5. What challenges threaten the continuation of Moore’s Law?**

According to Moore the transistor count gets doubled for a life pan of every two years Due to this many problems arose with reduced or same price per transistor on a silicon chip

i) Due to increase in transistor count ,***The design became too complex to test and verify***
ii)Although Computation power and performance increased , but the wiring and the interconnections became harder
iii)As the no. of transistors increased , The power usage by transistors became more and the heat dissipated by the transistors was more.
iv)Hence Cooling chambers strips or vapour cooling or fans ecame a need 
v) Moore's Law became a standard for growing companies to design chips with increased no. of transistors nearly doubling every two years pushing every company to design their with more count.
vi)The photolithoraphy uses UV Lithography but as the number of transistors on a small chip increased the printing using UV light became extremely difficult 
vii)Hence Extreme UV Lithography need to be used which is very expensive

> UV photolithoraphy 
Wavelength: 13.5 nm (very short)-Ultraviolet, >248 nm
Early chips (before ~250 nm nodes) used UV light.

>Extreme ultraviolet (EUV) lithography (13.5 nm wavelength)Wavelength: 13.5 nm (very short).
Introduced at 7 nm and 5 nm nodes (u