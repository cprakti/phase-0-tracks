# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a git feature that allows users to make duplicate directories and files in order to build and/or experiment with new features.  Version control is useful for a number of reasons.  First, by creating a new branch, users can modify the duplicated directories and files without affecting the original items.  Second, multiple users can work simultaneously on same directories and files without changing the original items.  Version control also allows users to merge their branch with the master version to 'lock in' new changes or features. Lastly, with version control you can 'time travel' by revisiting previous commit points.  This can be useful for finding the root of a bug.

* What is a branch and why would you use one?

A branch is a duplicate of a master directory or file.  A branch contains the same items as the master does.  By splitting a directory into a branch and a master, the user can modify the branch directory without any risk of damaging the original directory.  Branches are useful for building features or experimenting with code.  If the user would like to keep and implement the code, the branch can be merged into the master directory.

* What is a commit? What makes a good commit message?

A commit is a save point for a project.  After files have been modified they are added to the staging area.  Once in the staging area, a commit will create a save point and, in effect, add a point on the project's timeline.  Even as the project continues to be modified, the user can return to this commit point and return the project to its state at this point.  A good commit message is concise (less than 50 characters), written in the present tense, and tells what was done.


* What is a merge conflict?

A merge conflict occurs when the user attempts to merge a branch into a master file that has been altered since the splitting of the master and branch.  Because the master includes changes that are not found within the branch, a merge conflict occurs.  The user must resolve the conflict by choosing to keep either the changes found in the master and the changes found in the branch.


