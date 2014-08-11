# Models

The directory `models` here is added to `.gitignore` because those files most often are property of the manufacturers.

Currently required:

* [1n4007.mod](http://www.datasheetarchive.com/files/fairchild/pdfs/models%20actual/1n4007.mod), a model for an 1N4007 diode

## Simulation

With `330nF` per capacitor at the `230V` (`678.82Vpp`) , `1mF` for the big capacitor after the bridge, and a load of `1kOhm`, the voltage characteristic is like this:

<p align="center">
<img src="pictures/crownstone.png?raw=true" alt="Crownstone circuit" height="500px"/>
</p>


