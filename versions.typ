#import "lib.typ": resume, section
#import "blocks.typ": *

#let embedded-skills = (
  Computer: [Assembly, C/C++, Java, C\#, Python, Git/GitHub, CI/CD, TCP/IP, Linux, LTSpice, MatLab, Fusion360],
  Hardware: [KiCad, Embedded Systems, Soldering, Diagnostics, Documentation, I2C/SPI/UART/CAN],
)

#let embedded(skills: embedded-skills) = resume(skills: skills)[
  #section[Projects]
  #lp-solver
  #section[Relevant Experience]
  #ride-club
  #motorsport
  #ta
  #shine
  #section[Other Work Experience]
  #lighting
]

#let swe-skills = (
  Languages: [C/C++, Python, Java, C\#, Assembly],
  Tools: [Git/GitHub, CI/CD, GoogleTest, Flask, Linux, TCP/IP, MatLab],
)

#let swe(skills: swe-skills) = resume(skills: skills)[
  #section[Projects]
  #lp-solver
  #section[Relevant Experience]
  #ta
  #motorsport
  #ride-club
  #shine
  #section[Other Work Experience]
  #lighting
]

#let entertainment-skills = (
  Controls: [Ride Control Systems, State Machines, PID Motor Control, E-Stop/Safety Logic, GrandMA3, Lighting Networks],
  Computer: [C/C++, Python, Flask, Linux, TCP/IP, Git/GitHub],
  Hardware: [KiCad, Raspberry Pi, Soldering, Diagnostics, Documentation, I2C/SPI/UART/CAN],
)

#let entertainment(skills: entertainment-skills) = resume(skills: skills)[
  #section[Relevant Experience]
  #ride-club
  #lighting
  #motorsport
  #ta
  #section[Projects]
  #lp-solver
]
