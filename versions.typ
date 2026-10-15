#import "lib.typ": resume, section
#import "blocks.typ": *

#let embedded-skills = (
  Computer: [Assembly, C/C++, Java, C\#, Python, Git/GitHub, CI/CD, TCP/IP, Linux, LTSpice, MatLab, Fusion360],
  Hardware: [KiCad, Embedded Systems, Soldering, Diagnostics, Documentation, I2C/SPI/UART/CAN],
)

#let embedded(skills: embedded-skills) = resume(skills: skills)[
  #section[Relevant Experience]
  #digits
  #ride-club()
  #motorsport
  #ta
  #shine
]

#let swe-skills = (
  Computer: [C/C++, Kotlin/Java, Python, React, SQL/PostgreSQL, Git/GitHub, CI/CD, Networks, Unix/Linux, Verilog],
  Hardware: [Raspberry Pi/Arduino/STM32, I2C/SPI/UART/CAN, PCB Design (KiCad), Embedded Systems, Soldering],
)

#let swe(skills: swe-skills) = resume(skills: skills)[
  #section[Relevant Experience]
  #digits
  #ta
  #ride-club(ui: false)
  #motorsport
  #shine
]

#let entertainment-skills = (
  Controls: [Control Systems, PLCs, Ladder Logic, Electrical Systems, Communication Networks, System Design],
  Entertainment: [GrandMA2/3, ASTM F2291, ASTM F3598, Unity],
  Computer: [C/C++, C\#, Java/Kotlin, Python, Linux, Microsoft Office (Excel, Word, Powerpoint), Git/GitHub],
  Hardware: [KiCad, Raspberry Pi, Soldering, I2C/SPI/UART/CAN, CAD (Solidworks, AutoCAD, Fusion360)],
)

#let entertainment(skills: entertainment-skills) = resume(skills: skills)[
  #section[Relevant Experience]
  #trec-virtcommisioningvariant()
  #digits
  #lighting
  #motorsport
  //#ta
  //#section[Projects]
  //#lp-solver
]
