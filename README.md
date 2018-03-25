# Mobile Security Vagrant

Vagrant build for testing Android and iOS applications. Designed to run in headless mode, all configured tools use the cli.

## Getting Started

These instructions can be used to install and launch the box.

### Prerequisites

Install latest Vagrant from https://www.vagrantup.com/downloads.html

Install virtualbox and extension pack from https://www.virtualbox.org/

### Installing

Clone Github repository

```
git clone https://github.com/henryhoggard/mobile-security-vagrant
```

## Usage

Start the VM using the following 

```
cd mobile-security-vagrant
vagrant up
```

SSH to the VM using the following

```
vagrant ssh
```

Tools can be found in the following location

```
/home/vagrant
```

To share data between host and VM write files to the following location in the VM:

```
/home/vagrant/shared
```

The files will be stored within the `mobile-security-vagrant` folder


## Tools used

* [drozer](https://github.com/mwrlabs/drozer) - Android Dynamic Security Testing Framework
* [frida](https://github.com/frida/frida) - Cross platform hooking framework
* [apktool](https://github.com/iBotPeaches/Apktool) - Decompiling/Patching Android apps
* [jadx](https://github.com/skylot/jadx) - Decompiling Android apps
* [dex2jar](https://github.com/pxb1988/dex2jar) - Decompiling Android apps
* [needle](https://github.com/mwrlabs/needle) - All in one iOS Security Assessment Framework
* [jtool](http://www.newosxbook.com/tools/jtool.html) - ELF/Mach-O Binary analysis and disassembler
* [gdb](https://www.gnu.org/software/gdb/) - Debugger
* [adb](https://developer.android.com/studio/command-line/adb.html) - Android Debug Bridge
* [qark](https://github.com/linkedin/qark/) - Android source code review
* [androbugs](https://github.com/AndroBugs/AndroBugs_Framework) - Android source code review
* [radare2](https://github.com/radare/radare2) - Debugger 
* [owasp-mstg](https://github.com/OWASP/owasp-mstg) - OWASP Mobile Testing Guide
* [owasp-masvs](https://github.com/OWASP/owasp-masvs) - OWASP Mobile Application Security Verification Standard




## Contributing

Changes are welcome, please create a PR explaining the purpose of the change in detail, avoid submitting commercial tools.

## License

This Vagrant configuration is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
