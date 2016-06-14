FROM ubuntu:14.04

# Script to choose Python version
COPY choose_python.sh /usr/bin/
# Installer script for Pythons 2.7 3.4 3.5
COPY build_install_pythons.sh /

# Install Pythons 2.7 3.4 3.5 and matching pips
RUN bash build_install_pythons.sh && rm build_install_pythons.sh
