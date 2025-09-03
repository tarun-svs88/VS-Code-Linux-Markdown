## Installations on Ubuntu
Ubuntu Version - Ubuntu 24.04.2 LTS
![](ubuntuv.png)


### 1)Git+Github

**command** - sudo apt install git -y
![](git+github.png)
**version check** - git --version
![](git+githubv.png)


###  2)Magic
**command** - sudo apt install magic -y
![](magic.png)

**run check  command** - magic
![](magicruncheck.png)
![](magicrun.png)
![](magicrun2.png)

**version check command**- magic -dnull -noconsole
![](magicv.png)

### 3)Iverilog+GTKWave

**command** - sudo apt install iverilog gtkwave -y
![](iverilog+gtk.png)

**version check**-iverilog -v
                    gtkwave -v
![](iverilogv.png)
![](gtkwavev.png)


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
- Update the pacakage list  
**command**- sudo apt update
    sudo apt install -y git build-essential m4 tcl-dev tk-dev libx11-dev libcairo2-dev mesa-common-dev libglu1-mesa-dev freeglut3-dev libncurses-dev libtool automake
![](skywater1.png)

-Clone open_pdks Repositories
**command**-git clone https://github.com/RTimothyEdwards/open_pdks.git
            cd open_pdks

- Configure open_pdks for Sky130  
**command**-  ./configure --enable-sky130-pdk --enable-sky130-efabless --enable-sky130-timing --enable-sram-sky130 --prefix=/opt/pdks
![](skywater2.png)

- Configure open_pdks for Sky130  
**command** - make -j$(nproc)
              sudo make install
![](skywater3.png)

- Setting Up the Environment Variable  
**command** - export PDK_ROOT=/opt/pdks

- Checking the Installation  
**command** -ls $PDK_ROOT/sky130A

-Open Magic
**command**-magic -T sky130A
![](skywater4.png)
![](skywatercheck.png)
![](skywatercheck2.png)



