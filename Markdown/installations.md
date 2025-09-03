## Installations

###  1)Magic
**command** - sudo apt install magic -y
![](magic.png)

**run check  command** - magic
![](magicruncheck.png)
![](magicrun.png)
![](magicrun2.png)

**version check command**- magic -dnull -noconsole
![](magicv.png)

### 2)Iverilog+GTKWave

**command** - sudo apt install iverilog gtkwave -y
![](iverilog+gtk.png)

**version check**-iverilogv.png  
gtkwavev.png
![](iverilogv.png)
![](gtkwavev.png)

### 3)Git+Github

**command** - sudo apt install git -y
![](git+github.png)
**version check** - git --version
![](git+githubv.png)

### 4)Yosys

**command** - sudo apt install yosys -y 
![](yosys%20.png)
**version check** -yosys -V
![](yosys%20v.png)

### 5)Netgen
- First go to OpenCircuitDesign.com
![](netgendownoad.png)
- Open Netgen Download and Download the tgz file and extract it in the folder you want to install
![](netgenfiles.png)
- Open Terminal and Navigate to that folder
Run the commands
**./configure**
![](netgen.png)
**make**
![](netgen2.png)
**sudo make install**
![](netgen3.png)
-Check netgen Installation
![](netgencheck.png)

But this doesn't install all dependencies and libraries it just install Netgen from the **.tgz Soruce Install**

For complete installation
**command**-sudo apt update
            sudo apt install netgen -y
![](netgen4.png)
Check installation using
**command**-which netgen
            netgen
![](netgen5.png)
![](netgen6.png)

### 6)Skywater




