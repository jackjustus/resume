#import "lib.typ": resume, section
#import "blocks.typ": *

#let embedded-skills = (
  Computer: [Assembly, C/C++, Java, C\#, Python, Git/GitHub, CI/CD, TCP/IP, Linux, LTspice, MATLAB, Fusion 360],
  Hardware: [KiCad, Embedded Systems, Soldering, I2C/SPI/UART/CAN],
)

#let embedded(skills: embedded-skills) = resume(skills: skills)[
  #section[Relevant Experience]
  #digits
  #ride-club(ui: false)
  #motorsport
  #ta
  #shine(short: true)
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
  #shine(short: true)
]

#let entertainment-skills = (
  Controls: [Control Systems, PLCs, Ladder Logic, Electrical Systems, Communication Networks, System Design],
  Entertainment: [GrandMA2/3, Hog 4, Vectorworks, Lightwright, ASTM F2291, ASTM F3598, Unity],
  Computer: [C/C++, C\#, Java/Kotlin, Python, Linux, Git/GitHub],
  Hardware: [KiCad, Raspberry Pi, Soldering, I2C/SPI/UART/CAN, CAD (SolidWorks, AutoCAD, Fusion 360)],
)

#let entertainment(skills: entertainment-skills) = resume(skills: skills)[
  #section[Relevant Experience]
  #ride-club(risk: true)
  #digits
  #jjld
  #lighting
  //#ta
  //#section[Projects]
  //#lp-solver
]
