# Getting Software

## Package Managers

A package manager in Linux is a tool or a set of tools designed to simplify the process of installing, updating, configuring, and removing software packages on a Linux system. Linux distributions use different package managers, and the choice of package manager often depends on the distribution's specific package management system.

## What is a Package?

A package refers to a compressed archive file containing software, an application, or a set of related files along with metadata. These packages are used for easy distribution, installation, and management of software on Linux-based systems. Different Linux distributions have their own package management systems, and the package format may vary among them.

The two most common package management systems are:

* **RPM (Red Hat Package Manager)**: RPM is used by Red Hat-based distributions such as Red Hat Enterprise Linux (RHEL), Fedora, CentOS, and others.

* **DPKG (Debian Package)**: DPKG is used by Debian-based distributions such as Debian, Ubuntu, and their derivatives.

In addition to these package management systems, many Linux distributions also use package managers such as `YUM`, `APT`, `Zypper`, and others to handle dependencies, updates, and installations.

### Package Contents

The contents of an `RPM` package and `DPKG` package typically include:

* **Binary executables:** Precompiled program files that can be run on the target system.
* **Libraries:** Shared libraries required by the software.
* **Configuration files:** Settings and configurations specific to the installed software.
* **Documentation:** Information and manuals related to the software.
* **License information:** Details about the software's licensing terms.
* **pre-installation, post-installation scripts:** Custom scripts executed before and after installation to perform additional tasks.

## Inner Workings Overview

The general working principles of a package manager can vary slightly depending on the specific operating system, but the core concepts are similar. Here's a general overview of how a package manager works:

* **Package Repository:**
  * A package manager relies on a centralized repository or multiple repositories where software packages are stored.
  * Each package in the repository contains the application or library, along with metadata like version information, dependencies, and configuration files.

* **Package Metadata:**
  * Metadata provides information about the software package, including its name, version number, dependencies, and a brief description.
  * Dependencies are other software packages that must be installed for the current package to work properly.

## Commands

The `apt`, and 'dnf' commands are package management tools used in Debian-based, and Red Hat-based Linux distributions respectively, such as Ubuntu, Fedora, and CentOS.

The two previous commands allow users to install, update, upgrade, and manage software packages on their system.

Here are some commonly used `dnf` and `apt` commands:

| Description | Debian | RPM |
|-------------|--------|-----|
| Search for package | `apt search PACKAGE...` | `dnf search PACKAGE...` |
| View package details | `apt show PACKAGE...` | `dnf info PACKAGE...` |
| Install a package | `apt install PACKAGE...` | `dnf install PACKAGE...` |
| Reinstall packages | `apt reinstall PACKAGE...` | `dnf reinstall PACKAGE...` |
| Remove packages | `apt remove PACKAGE...` | `dnf remove PACKAGE...` |
| Upgrade a package | `apt upgrade PACKAGE...` | `dnf upgrade PACKAGE...` |
| List installed packages | `apt list --installed` | `dnf list installed` |
| Upgrade system packages | `apt upgrade`| `dnf upgrade` |
