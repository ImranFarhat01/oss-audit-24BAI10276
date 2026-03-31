# oss-audit-24BAI10276

Hey, this is my OSS capstone project repo. I'm Imran Farhat (24BAI10276), slot B22. I picked **Git** as my open-source software for the audit.

The full project report is submitted separately as a PDF on the VITyarthi portal. This repo just has the five shell scripts and this README.

---

## What's in here

I wrote five bash scripts for this project. All of them were tested on Ubuntu 24.04 running in a VM. Here's what each one does:

**script1_system_identity.sh** : This one just prints out basic system info like what distro you're running, kernel version, who's logged in, uptime, stuff like that. Also mentions that Linux runs under GPL v2. Pretty straightforward, mostly just uses `uname`, `whoami`, and `echo`.

**script2_package_inspector.sh** : Checks if Git is installed using `dpkg` and shows the package details. There's a `case` block at the bottom that prints a one-liner about whatever package you're checking. I hardcoded a few common ones like apache2, mysql, vlc.

**script3_disk_permission_auditor.sh** : Goes through a bunch of system directories like `/etc`, `/var/log`, `/home` etc and shows their size and permissions. Also checks if `/etc/gitconfig` exists since Git is my chosen software. Uses a for loop and arrays.

**script4_log_analyzer.sh** : You give it a log file and a keyword and it counts how many times that keyword shows up. It reads the file line by line with a while loop. If you don't give it a keyword it defaults to "error". Also prints the last 5 matching lines at the end.

**script5_manifesto_generator.sh** : This is the fun one. It asks you three questions about open source and then puts your answers together into a little manifesto paragraph. Saves it to a text file with your username in the filename.

---

## How to run everything

You need a Linux machine (I used Ubuntu 24.04). Make sure Git is installed : if not, just do:

```
sudo apt install git
```

You'll also want `lsb-release` installed for Script 1 to work properly:

```
sudo apt install lsb-release
```

Then clone this repo and make the scripts executable:

```
git clone https://github.com/ImranFarhat01/oss-audit-24BAI10276.git
cd oss-audit-24BAI10276
chmod +x *.sh
```

Now you can run them:

```
./script1_system_identity.sh

./script2_package_inspector.sh

./script3_disk_permission_auditor.sh

./script4_log_analyzer.sh /var/log/syslog error

./script5_manifesto_generator.sh
```

For script 4, the first argument is the log file path and the second is the keyword you want to search for. If you skip the keyword it just looks for "error" by default. Some directories in script 3 might need sudo to get the size right.

Script 5 is interactive so it'll ask you questions when you run it.

---

## Dependencies

Nothing fancy. Just a standard Ubuntu setup with bash, coreutils, and `dpkg`. The only extra thing is `lsb-release` for script 1, which is usually already there on Ubuntu anyway.

---

## References

- Git docs: https://git-scm.com/docs
- GPL v2 text: https://www.gnu.org/licenses/old-licenses/gpl-2.0.html
- Git source code: https://github.com/git/git
- Free software definition: https://www.gnu.org/philosophy/free-sw.html
- The Linux Command Line (William Shotts): https://linuxcommand.org
