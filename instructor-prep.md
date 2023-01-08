# HashiCorp Blacksmiths: Service Mesh Fundamentals Workshop
## Instructor prep  guide

This guide is for instructors of the Service Mesh Fundamentals workshop to build and use the assets for the sessions. The purpose of this workshop is to take attendees with little or no knowledge of service mesh and provide enough content, context, hands-on experience and recommended goals to kickstart their self-enabelemnt journey. 

* [Navigation](#navigation)
* [Prerequisites](#prerequisites)
* [Setup](#setup)
* [Explore](#explore)
* [Clean Up](#clean-up)
* [Credits](#credits)
* [Additional References](#additional-references)

## Navigation

Folders contain content for the workshop
- `build-slides.sh` - runs pandoc conversion on available markdown files converting them to slides in reveal.js format
- `md` - markdown files, source material for slidesSlides are all created with [markdown](https://www.markdownguide.org/) for simplicity 
- `html` - Slides are html/reveal.js format. [pandoc](https://pandoc.org/) generates [reveal.js](https://revealjs.com/) slides from markdown
- `images` - images used in the slides are stored here for pandoc conversion and served from here when showing slides

Benefits:
- quick, simple content development to keep focused on service mesh concepts (illustrated with Consul OSS) 
- allows for simple collbaoration when developing content, conducting a class or sharing content with attendees

## Prerequisites

### Versions 

The following versions were used for this workshop
- pdfTeX 3.141592653-2.6-1.40.24 (TeX Live 2022)
- reveal.js (hosted @ https://unpkg.com/reveal.js)
- Pandoc 2.19.1
- Consul 1.14.3

### Platforms

- MacOS
- Linux

## Setup

1. Clone the repo

   `git clone git@github.com:irvnet/erg-smesh-starter.git && cd erg-smesh-starter`

2. Build the slides using the available script

   `./build-slides.sh`

3. show slides in the local browser

   `open ./html/FILENAME.html`


## Clean Up


## Credits

- The demo application comes from the [HashiCorp Demo Application](https://github.com/hashicorp-demoapp).

## Additional References

