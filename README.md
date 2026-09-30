# resume builder
This repo contains the source files for my resume. This repo is made in typst.

The idea behind this was to simplify maintaining different versions of my resume by extracting the common info and being able to just declare a particular version of my resume, rather than dealing with tedious styling things in google docs.

Every time a change is pushed, i have a cloud ci runner (thanks oracle free tier) which publishes a release with the compiled PDFs. 

`blocks.typ` contains my experiences. `lib.typ` has common resources for all resumes, including style info. `versions.typ` defines the different types of resumes which can be made from the experience blocks. skills are different for each as i find I usually tailor that to the specific job i'm applying for. 


## Compiled Resumes

### Software Engineering
[![SWE resume](https://github.com/jackjustus/resume/releases/download/latest/Jack_Justus_SWE_Resume.png)](https://github.com/jackjustus/resume/releases/download/latest/Jack_Justus_SWE_Resume.pdf)

### Embedded Software
[![Embedded resume](https://github.com/jackjustus/resume/releases/download/latest/Jack_Justus_Embedded_Resume.png)](https://github.com/jackjustus/resume/releases/download/latest/Jack_Justus_Embedded_Resume.pdf)

### Controls/Entertainment Engineering
[![Entertainment resume](https://github.com/jackjustus/resume/releases/download/latest/Jack_Justus_Entertainment_Resume.png)](https://github.com/jackjustus/resume/releases/download/latest/Jack_Justus_Entertainment_Resume.pdf)

