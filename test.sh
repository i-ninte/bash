#!/bin/bash


echo "${USERNAME}"
useradd --create-home --shell "/bin/bash" --groups sudo --dry-run "${USERNAME}"
useradd --create-home --shell "/bin/bash" --groups sudo -v "${USERNAME}