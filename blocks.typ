#import "lib.typ": entry

#let lp-solver = [
  #entry(
    [LP Problem Solver using Analog Circuitry],
    date: link("https://jackjust.com/eng")[jackjust.com/eng],
  )
  - Engineered an analog circuit to solve linear programming problems 7,000x faster than conventional digital methods.
  - Applied analog methods to optimize complex problems alongside a seven-person research team.
  - Developed during USC's Summer High School Intensive in Next-Generation Engineering Research Internship.
]

#let digits = [
  #entry([Software Engineering Intern,], org: [Digits], date: [May 2026 – Present])
  - Implemented a company top-10 priority (Closed Periods v2) end-to-end on the Ledger team, owning architectural planning, backend services, and frontend integration alongside 2 interns and 6 full-time engineers.
  - Extended Kotlin/Java view-generation pipelines with new schema tables to freeze transaction attributes in closed accounting periods, shipped to 13.3K+ organizations and 7.4K+ active users to block imported and ML-classified edits.
  - Designed and built a closed-period review-queue system using Go microservices, GraphQL/Protobuf endpoints, and Google Spanner on Kubernetes, fulfilling a contractual requirement for a top-20 accounting firm's deal with Digits.
  - Shipped 90+ peer-reviewed PRs across three codebases (Kotlin, Go, React/Apollo) with 90% test coverage targets via CircleCI; monitored production deploys with Google Cloud Console logging, error reporting, and Dataflow metrics.
]

#let ta = [
  #entry([Software Engineering Teaching Assistant,], org: [Boston University], date: [Aug 2025 – Dec 2025])
  - Collaborated with 5 other TAs to create C/C++ labs for 100+ students, teaching software practices including object-oriented design, testing, design patterns, and collaborative Git workflows.
  - Developed C/C++ homework assignments and implemented CI/CD tests with GoogleTest, integrating them into a GitHub-based autograder pipeline; received faculty commendation for initiative in curriculum development.
]

#let ride-club(ui: true) = [
  #entry([President & Electrical Lead, Terrier Ride Engineering Club,], org: [Boston University], date: [Sep 2024 – Present])
  - Led a 20-person team across mechanical, electrical, and design subteams to build a functional, ASTM F2291-compliant model theme park ride, placing 5th of 23 as a first-year team at the Ride Engineering Competition.
  - Developed ride control software in Python on a Raspberry Pi: an 8-state machine executing JSON-defined motion profiles on a motor controller over UART, with 15+ fault codes in 3 severity tiers that automatically latch an E-Stop.
  - Built a Python fault-injection simulator that emulates the control computer to validate safety controller responses to 6 failure modes and the reset path before hardware integration; mocked hardware for off-ride testing with 97 automated tests in CI.
  - Built a CRC-checked UART heartbeat link to the ride's safety PLC, so either side halts the ride on communication loss, limit-switch mismatch, or speed limit violations.
  #if ui [- Built a Flask operator interface on a touchscreen kiosk that displays ride state and faults in real time.]
  - Designed the ride's electrical system in KiCad, including a redundant hard-wired E-Stop, with schematics for power distribution, wiring, and controller interfaces used in design reviews.
]

#let motorsport = [
  #entry([Software Deputy, Terrier Motorsport (Formula Hybrid-Electric),], org: [Boston University], date: [Sep 2024 – Present])
  - Developed a Python package for the backend of a Linux-based dash display, integrating SPI, I2C, and CAN devices through SMBus2 and cantools.
  - Increased data collection speed 100x with multithreaded, non-blocking I/O, enabling real-time performance monitoring while recording telemetry for later diagnosis.
  - Built error handling that keeps the display running under abnormal conditions.
]

#let shine(short: false) = [
  #entry([SHINE Research Intern,], org: [University of Southern California], date: [Jun 2023 – Jul 2023])
  - Engineered an analog circuit to solve linear programming problems 7,000x faster than conventional digital methods.
  #if not short [- Researched analog circuitry for real-time object avoidance updates in drone systems with PhD mentors.]
]

#let jjld = [
  #entry([Owner & Lighting Designer,], org: [Jack Justus Lighting Design], date: [Jun 2024 – Present])
  - Co-designed and programmed Easter 2026 at Connection Pointe Christian Church (IN): 160 rented fixtures on 43 truss sections flown from 22 hoists, documented in a 9-sheet Vectorworks plot package used for load-in.
  - Designed Columbia Business School's NYC fashion show lighting; pitched tiered budgets and rented gear via 4Wall.
  - Designed and pre-programmed Saddleback's CR Summit conference (2024–25), timecoding cues to music on a Hog 4.
]

#let lighting = [
  #entry([Audio Visual Lighting Technician,], org: [Saddleback Church – Lake Forest, CA], date: [Dec 2022 – Aug 2025 (Seasonal)])
  - Programmed a GrandMA3 console for concert-style weekend services in a 2,000-seat venue.
  - Trained and led a team of 11 volunteers to run shows independently.
  - Maintained and engineered the lighting control network for 50+ moving fixtures.
]
