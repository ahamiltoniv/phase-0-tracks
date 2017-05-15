# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
	Version control is a means of tracking changes made to a file or piece of software by multiple users at different times. Version control is important because it allows multiple parties to collaboratively work on a single piece of code independently without needing to manually combine all of the changes each party has made. This is extremely useful for complicated code development and people collaborating on a file from different locations.

* What is a branch and why would you use one?
A branch is like a copy of a repository that you can work in without disrupting the original repository for other users. By working in a branch, one person's work doesn't disrupt other users's work. In order to apply changes made to a branch to the original or master version of the repository, the branch must be merged into the master.

* What is a commit? What makes a good commit message?
A commit is like a save point for work done in the repository. A good commit message gives concise but specific information about what changes were made from the previous commit. These are very important for understanding and debugging code, as they help you to quickly identify what changes were made at which commits.

* What is a merge conflict?
Merge conflicts are situations where changes made on a branch cannot be combined back into the master by git. Generally during a merge, Git will combine files automatically without incident. But for instance if two people are working on the same line of code on different branches, when they merge their changes back in there might be a difference that Git cannot figure out on its own. For instance if the first user changes a section of code that another user had also changed or deleted, git doesn't know which version is correct to apply to the master, and will generate a merge conflict.