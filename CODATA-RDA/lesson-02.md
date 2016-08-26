
---
# LESSON TWO: OPEN CITATIONS, BibTeX FORMAT & POPULATING AN ORCiD PROFILE
---
## Module 2A. Introducing Open Citations
---

Citations are a special type of research data that provide a succinct representation of a scholarly work in a standard format. Citation styles and syntaxes differ across resource types, subject disciplines and information systems, but generally have a common kernel of elements:

+ Creator/Author(s)
+ Title of work
+ Publisher of work
+ Publication date
+ Extent/page range
+ Locator (where to retrieve the work)

Additional elements that information providers may also include in their citation data are subject descriptors, keywords, geographic or chronological coverage of the work, funder information, copyright and licensing statements, and so on.

Citation data is critical to research and scholarship because:

1. it permits attribution to works that an author draws on and incorporates into her own writings
2. it allows the research community to aggregate and integrate the contributions of all contributors into a useful system for search, retrieval, tracking, assessment, and reporting.

Citation data is used across the research ecosystem. Citations form the basis of publication lists on researcher websites; scholarly sharing sites and repositories; they represent the core of a professional CV; get pasted into a required section of funder applications and progress reports; and represent essential data in research information systems such as ORCiD and the DOI Registry.

An increasing amount of citation data associated with the scholarly record is being aggregated by the DOI Registration Agencies, particularly CrossRef, because they require metadata about every digital object being deposited for DOIs. Their databases are open and accessible at the command line (as we saw in Lesson 1). Good news!

This lesson introduces an effective and efficient "open science" approach for creating and maintaining a citations list that can be re-used in research-related systems such as the ORCiD Profile. It relies on the open citation format BibTeX to retrieve references from the Web and applies command line tools to combine citations from multiple sources. By maintaining a 'master' bibliography in a consistent, open, plain text citation format, a researcher can re-purpose the citation data for reuse in different systems and services.

---

### Exercise 2A. After watching a demo of the ORCiD system and a viewing researcher's ORCiD profile, register for your own ORCiD using their quicky and easy form.

    Point your web browser to http://orcid.org

Wait for the confirmation email from ORCiD to arrive in your email inbox and click on the link it contains to establish your own unique 16-digit Researcher ID -- like a DOI but for people.


**Welcome to the global scholarly web where you get credit for all your work and contributions using ORCiD; no one claims your works as their own; and colleagues don't get confused whether a given research work is yours or someone's with a similar or same name!**

### Exercise 2B. Fetch several references from an open database on the Web and use them to compose a bibliography for use in a paper

Save each citation in BibTeX format for reuse (e.g., save as cite1.bib, cite2.bib, etc.)

Concatenate the individual BibTeX citations into one bibliography using command line tools:

`$cat cite1.bib, cite2.bib, cite3 bib > citations.bib`
`$cat citations.bib`

Everything look okay? Save that concatenated file for use in the LaTeX lesson Monday night here at Trieste!

### Exercise 2C. Add a citation to your new ORCiD Profile by uploading one of the BiBTeX files saved in Ex. 2A.

Once done, try ORCiD's own integrated tools for finding and adding citations.

Let's discuss the pros and cons of uploading citations from BiBTeX files vs. relying on the ORCiD wizards.

+ Which one would import grey literature (e.g., dissertations, tech reports)?
+ Which one would import older articles that pre-date the emergence of the DOI standard?
+ Which one could carry along metadata you prefer not to be included in your ORCiD profile?

## REFERENCES

+ [Ten things you need to know about ORCID right now](http://blog.impactstory.org/ten-things-you-need-to-know-about-orcid-right-now/)
+ [LaTeX/Bibliography Management](https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management)




