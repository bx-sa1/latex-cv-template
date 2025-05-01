# latex-cv-template

A Latex class for CVs.

Dependencies:
```
symbols-nerd-font
```

Environments:
```
skills: Defines a list of skills
projects: Defines a list of projects
experience: Defines an experience list
```

Commands:
```
\cvName{name}: The author's name
\cvContact{... \and ... \and ...}: A contact list, spearated by \and
\cvEmail{address}: Adds a mail icon  in front of an email
\cvPhone{number}: Adds a phone icon in front of an phone number
\cvGithub{address}: Adds a github icon in front of a github profile address.
\cvMakeHeader: Builds the header which includes the \name and \contact

\cvSkill{group}{list}: Adds a list of skills in the skills environment
\cvInfo{info}: Adds itemized info to a projects and experience environment
```
