## Semester 1 – Subject 1 – Week 1(S1 1S W1)

**Subject: VLSI Design Fundamentals
Week 1 Topic: Moore’s Law, VLSI Trends, SoC vs ASIC vs FPGA**

### I)Introduction to VLSI  
**1. What is VLSI?**

- VLSI stands for Very Large Scale Integration.

- It refers to the process of designing and fabricating integrated circuits (ICs) by combining millions (or billions) of transistors on a single chip.

- Before VLSI, ICs had only hundreds (SSI) or thousands (MSI) of transistors.

**2. Predecessors of VLSI (how technology evolved)**


- SSI (Small Scale Integration) – 1960s  
Only tens of transistors per chip.  
Example: basic logic gates, flip-flops.

- MSI (Medium Scale Integration) – 1960s–70s  
Hundreds of transistors per chip.  
Example: adders, multiplexers, counters.

- LSI (Large Scale Integration) – early 1970s  
Thousands of transistors per chip.  
Example: early memory chips, simple microprocessors.

➡️ VLSI (Very Large Scale Integration) – late 1970s onwards  
Millions of transistors per chip. 
Example: microprocessors, advanced memories.

**3. Successors of VLSI (future / advanced integrations)**

- ULSI (Ultra-Large Scale Integration)  
Chips with tens of millions to billions of transistors.
Modern CPUs and GPUs fall here.

- SoC (System-on-Chip)  
Entire systems (CPU, GPU, memory, I/O, wireless modules) on a single chip.
Used in smartphones, IoT devices.

- SiP (System-in-Package)  
Multiple chips (CPU + memory + sensors) packaged together.

- Nanoelectronics   
Research into quantum computing, spintronics, molecular electronics, 3D ICs etc., considered successors to VLSI in future.

**4. Applications of VLSI**

- Computing: CPUs, GPUs, microcontrollers, memory chips.  
- Electronics : ASICs,FPGAs  
- Communication: Mobile phones, 5G/6G chips, Wi-Fi, Bluetooth.  
- Consumer Electronics: TVs, cameras, smartwatches, gaming consoles.  
- Automotive: ADAS (Advanced Driver Assistance Systems), engine control units, infotainment.  
- Healthcare: Medical imaging, implantable devices, wearable monitors.  
- Defense & Aerospace: Radar, navigation systems, satellite electronics.  
- AI & IoT: Neural network accelerators, edge computing devices.

### II) Moore's Law
**1. What is Moore’s Law?**

- In 1965, Gordon E. Moore (co-founder of Intel) observed a trend in the semiconductor industry.
- He noticed that the number of transistors on an integrated circuit (IC) doubled approximately every 18–24 months, while the cost per transistor decreased.

In simple words: Computing ***power keeps doubling*** roughly every ***two years***, while becoming ***cheaper***

**2. What does Moore’s Law state?**  
**Statement:**  
*The number of transistors on a microchip doubles about every two years, leading to exponential growth in computing performance and reduction in relative cost.*  
 or  
*"Processing power doubles every two years at almost the same cost."*

**3. Impacts of Moore’s Law**  

- Exponential Growth in Computing Power  
    Enabled smaller, faster, and cheaper computers.  
Example: From room-sized mainframes to smartphones more powerful than old supercomputers.

- Economic & Industrial Growth  
    Fueled the IT revolution, internet age, smartphones, AI.  
Created trillion-dollar industries (Intel, Nvidia, Apple, etc.).

- Miniaturization  
    Chips became smaller, leading to portable devices, wearables, IoT.  

- Cost
Cost per transistor kept decreasing → affordable computing for the masses.

**4. Limitations of Moore’s Law**
- Physical Limits  
Transistor size approaching atomic scale (~2–3 nm).  
Quantum effects (tunneling, leakage currents) make further shrinking difficult.  

- Tunelling - 
Tunneling is a quantum mechanical effect where electrons can pass through a very thin energy barrier (like the gate oxide in a transistor), even if they don’t have enough classical energy to overcome it.  

    - Traditional photolithography uses UV light.

    - As transistors are scaled down to nanometer sizes (e.g., 5 nm, 3 nm nodes), the gate oxide thickness becomes just a few atoms thick.

    - At this size, electrons “tunnel” through the barrier, causing leakage current even when the transistor is supposed to be off.


- Lithograhy
Lithography is the process of printing circuit patterns (transistors, interconnects) onto silicon wafers using light (photolithography).

    - Traditional photolithography uses UV light.  
    - As features shrink below the wavelength of light (~193 nm deep UV), it becomes extremely difficult to print transistor patterns smaller than ~10 nm.
    - Requires extreme ultraviolet (EUV) lithography (13.5 nm wavelength), which is: Very expensive (machines cost > $150M each).


- Heat Dissipation & Power
More transistors = more power consumption → thermal management challenges.

- Fabrication Costs

    - Chip manufacturing at advanced nodes (5 nm, 3 nm) is extremely expensive (billions of dollars for new fabs).


**5. Validation / Current Status**
- Moore’s Law held true for ~50 years (1965–2015).  
Today, the pace has slowed down:
- Transistor doubling now happens in ~2.5–3 years, not 2 years.
- Instead of only shrinking transistors, industry explores alternatives:  
    3D stacking (FinFET, GAAFET)
    Chiplets & SoC architectures  
Specialized processors (AI accelerators, GPUs, TPUs)  
Quantum computing & neuromorphic chips

 So, Moore’s Law is not dead, but it’s evolving: progress continues through new design and materials, not just transistor scaling.

 ### III)Trends in VLSI
 **1.VLSI Scaling Trends (130 nm → 3 nm)**  
Scaling in VLSI refers to shrinking the minimum feature size (technology node) of transistors. Each new node improves PPA (Power, Performance, Area).

Node|	Era	Key| Trends & Features|
---|---|---|
130 nm	|~2001	|End of planar MOSFET dominance; leakage begins to be a concern.
65 nm	|~2006	|Strain engineering, high-k dielectrics introduced. Power efficiency improved.
28 nm	|~2011	|Widely used in mobile SoCs; mature, low-cost node. Some low-power devices still use it today.
7 nm	|~2018	|Transition from planar to FinFETs; massive jump in performance and energy efficiency; used in CPUs/GPUs/5G.
3 nm	|~2022–2024	|GAAFET / Nanosheet FETs replace FinFETs; enables further scaling with better electrostatics. Used in Apple, Samsung, TSMC designs.

 **2. PPA Trends (Power, Performance, Area)**  
PPA = Power, Performance, Area, the holy trinity of VLSI optimization.

- Power: Focus on low-power design 

- Performance: Higher speed, clock frequencies, and parallelism (multi-core, GPUs, AI accelerators).

- Area: Minimize silicon real estate (cost per transistor).

**3. Technology Trends (Transistor Architectures)**  
(a) Planar MOSFET → FinFET → GAAFET

- Planar MOSFETs (used till ~22 nm):  
    - Flat channel, short-channel effects became unmanageable at small sizes.

- FinFETs (~22 nm to ~3 nm):
    - 3D “fin” structure where the gate surrounds the channel on 3 sides.
    - Better control of leakage, scaling, and performance.
    - Used in almost all advanced chips today (Intel, TSMC, Samsung).

- GAAFETs (Gate-All-Around FETs) (~3 nm and below):
    - Gate surrounds the channel completely (all around).
    - Channel shaped as nanowires or nanosheets.
    - Offers even better electrostatic control than FinFETs.
    - Foundries (Samsung, TSMC, Intel) are moving to GAAFETs around 2–3 nm nodes.

**4)Open-source trends**  
- RISC-V: An open-source Instruction Set Architecture (ISA), free, customizable, and gaining adoption in academia, startups, and industry.

- SkyWater SKY130: The first open-source 130 nm Process Design Kit (PDK), supported by Google, enabling free chip design and prototyping.

- Efabless: A community-driven platform that provides design tools and shuttle runs for fabricating open-source chips using Sky130 and other processes.


### IV)SoC vs ASIC vs FPGA
| **Feature**        | **SoC** (System-on-Chip)             | **ASIC** (Application-Specific IC)   | **FPGA** (Field-Programmable Gate Array) |
| ------------------ | ------------------------------------ | ------------------------------------ | ---------------------------------------- |
| **Flexibility**    | Medium (fixed + configurable blocks) | Low (fully custom, fixed function)   | Very High (reprogrammable)               |
| **Performance**    | High                                 | Very High                            | Medium                                   |
| **Cost per Unit**  | Low (in high volume production)      | Very Low (at scale) but high upfront | High (due to larger die area)            |
| **NRE Cost**       | High (design + IP licensing)         | Very High (custom design + masks)    | Low (no mask cost, only boards/tools)    |
| **Time-to-Market** | Medium                               | Long (complex fabrication cycle)     | Short (instant reprogramming)            |

    - NRE Cost (Non-Recurring Engineering Cost)
    NRE cost is the one-time upfront cost required for the design, development, and setup of a new product (like an IC, SoC, or ASIC).

### Industry View: ASIC vs FPGA vs SoC

**1. ASICs (Application-Specific Integrated Circuits)**  
- **Dominance:**  
    - High-volume products (CPUs, GPUs, AI accelerators, networking chips).  
    - Used by giants companieslike Intel, AMD, Nvidia, Qualcomm.

- **Why:**  
    - Very high performance + low unit cost at scale.
    - Best suited when millions of chips are produced (smartphones, data centers).

- **Limitation:**  
    -Extremely high NRE cost (tens of millions of dollars).  
    -Long time-to-market.

- **Industry Trend:**
    - Still dominant in mass-market consumer electronics and servers.

    - Specialized ASICs for AI/ML (TPUs, NPUs), 5G modems, GPUs are booming.

**2. FPGAs (Field-Programmable Gate Arrays)**
- **Dominance:**  
    - Low-to-medium volume markets where flexibility matters (defense, aerospace, prototyping, industrial automation).  
    - Key players: Xilinx (AMD), Intel (Altera), Lattice, Microchip.

- **Why:**  
    - Reprogrammable → fast prototyping, design changes possible.  
    - Short time-to-market.

- **Limitation:**
    - Slower and more power-hungry than ASICs.  
    - Higher cost per unit.

- **Industry Trend:**  
    - Popular in rapid prototyping, 5G infrastructure, automotive ADAS, aerospace/defense.  
    - Moving towards AI acceleration at the edge (adaptive computing).

**3. SoCs (System-on-Chip)**

- **Dominance:**
    - Mobile & consumer electronics → smartphones, tablets, IoT devices.  
    - Used by Apple, Qualcomm, Samsung, MediaTek.

- **Why:**  
    - Combines CPU, GPU, DSP, memory, and peripherals in a single chip.  
    - Balanced PPA (Power, Performance, Area) + reduced system cost.

- **Limitation:**  
    - Still high NRE, but lower than full custom ASICs (thanks to reusable IP blocks).  
    - Less flexible compared to FPGAs.

- **Industry Trend:**
    -Dominant in consumer devices.  
    -Growing in IoT, automotive (ADAS, infotainment), and wearables.

### Lab/Assignment Ideas  
🔹 Survey: Top 5 ASIC design companies in India  
🔹 Draw Moore’s Law trend line using actual transistor data  
🔹 Compare ASIC vs FPGA cost for 10,000-unit production  


### Recommended Reading
📖 CMOS VLSI Design by Weste & Harris – Chapter 1  
📖 Intel's Moore’s Law Infographic  
📖 Intro to OpenLane and eFabless documentation