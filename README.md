Custom LEDE Patch For TL-WR1043ND
======================================================

Dependencies
------------

* LEDE BuildRoot
* LEDE BuildRoot Dependencies

How to use
----------

* Install all the development packages required for LEDE BuildRoot
* Clone the LEDE Repository

    git clone https://github.com/lede-project/source.git
    
Clone this Repository and copy into the LEDE repository

    git clone https://github.com/enryIT/mips24k-lede-patch.git temp --depth 1; mv temp/* source/; rm -rf temp

Change directory into the LEDE Repository

    cd source

Run the script

./patch_LEDE.sh

Make Menuconfig and select the Target Profile Archer C7 v2 (all the packages and config is inside except build target

    make menuconfig

Save and make

    make V=s
