# Gram-Cracker
## _Determine if words or phrases are anagrams or antigrams of each other_
### by: Micah L. Olson
### created: 2/26/2021
* * * 

## Description
This application will check two individual words, or two phrases made up of multiple words, to see if they are anagrams (sharing all the same letters) or antigrams (for the purposes of this program, having no common letters). It also verifies that the words, either individual or in phrases, are actual words. Follow the steps below to run the program and get further in-app instructions.
* * *

## Technologies
* Ruby 2.6.5
* Bundler 1.17.2
* Rspec 3.10
* pry 0.14.0
* git 2.30.1
* GitHub
* * *

## Requirements
* You will need to use your system's **terminal emulator** to setup and use this program.
* You **must** have `Ruby 2.6.5` installed to be able to run this program ([how to install Ruby 2.6.5](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-ruby)).
* `Bundler` is also **required**. *After you install `Ruby`*, it can be installed with the following command.
  ```bash
  $ gem install bundler
  ```
***

## Installation and Setup
* **Clone this repository** to a local directory using the command-line tool `git` ([how to install git](https://www.learnhowtoprogram.com/introduction-to-programming/getting-started-with-intro-to-programming/git-and-github)).  
  ```bash
  $ cd ~/<directory>/<path>/<of>/<choice>/
  $ git clone https://github.com/MicahOlson/gram_cracker.git
  ```

* **Navigate into the project** using `cd` to move to the top level of the project directory.  
  ```bash
  $ cd gram_cracker/
  ``` 

* **Install all application dependencies** using `Bundler`. This will install all packages (also known as *Gems*) listed in the project's `Gemfile`.
  ```bash
  $ bundle install
  ```

* **Run the program** in your terminal emulator and follow the on-screen directions to use.
  ```bash
  $ ruby gram_cracker.rb
  ```
***

## Testing
* This project was created using **test-driven development** (TDD).

* To **see the test suite**, use `cat` to view the content of this project's spec file (or open it in a code editor; see below).
  ```bash
  $ cat spec/cracker_spec.rb
  ```

* To **run the test suite** yourself and verify program functionality use `RSpec`, one of the *Gems* installed by `Bundler` in the instructions above.
  ```bash
  $ rspec
  ```
***

## Graphic User Interface
* This program does not have a *graphic user interface* (GUI) and must be run in your system's terminal emulator
* If you would like to utilize a GUI for opening or editing this project's files, here are some **recommended code editors**:
  * [Visual Studio Code](https://code.visualstudio.com) - "Code editing. Redefined."
  * [Atom](https://atom.io) - "A hackable text editor for the 21st Century"
  * [SublimeText](https://www.sublimetext.com) - "A sophisticated text editor for code, markup and prose"
***

## Bugs, Fixes and Future Improvements
* This program has no known bugs. If you find a bug, please report it to me at the email address below.
* There is no additional development scheduled for this program.
***

## License
[GPLv3](https://choosealicense.com/licenses/gpl-3.0/)\
Copyright &copy; 2021 Micah L. Olson
* * *

## Contact Information
Micah L. Olson: at <a href="https://www.linkedin.com/in/micah-lewis-olson/" target="_blank">LinkedIn</a> or by <a href="mailto:micah.olson@protonmail.com" target="_blank">email</a>