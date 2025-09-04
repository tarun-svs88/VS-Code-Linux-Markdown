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
| **2010** | Core i7-980X (Gulftown, 6-core)        | \~1.17 billion              |
| **2011** | Core i7-2600K (Sandy Bridge)           | \~1.16 billion              |
| **2012** | Core i7-3770K (Ivy Bridge)             | \~1.4 billion               |
| **2013** | Core i7-4960X (Ivy Bridge-E)           | \~1.86 billion              |
| **2014** | Core i7-5960X (Haswell-E, 8-core)      | \~2.6 billion               |
| **2015** | Core i7-6700K (Skylake)                | \~1.75 billion              |
| **2016** | Core i7-6950X (Broadwell-E, 10-core)   | \~3.2 billion               |
| **2017** | Xeon Skylake-SP (server)               | \~7.1 billion               |
| **2018** | Xeon Cascade Lake-AP (server, 48-core) | \~8.4 billion               |
| **2019** | Xeon Platinum 9200 (56-core, server)   | \~10.2 billion              |
| **2020** | Core i9-10900K (Comet Lake, 10-core)   | \~10.3 billion (incl. iGPU) |






```vega-lite
{
  "description": "Test Line Chart",
  "data": {
    "values": [
      {"year": 2000, "transistors": 42},
      {"year": 2002, "transistors": 55,}
      {"year": 2005, "transistors": 230},
      {"year": 2010, "transistors": 1170},
      {"year": 2015, "transistors": 1750},
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
