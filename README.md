# Estimating the Macro fundamental diagram using volume and occupancy of a city 

The code will show a graphics with MFD of each region of a city 

## Description

The goal of the code is to optain one graphe with a Macro fundamental diagram of the volume vs the occupancy
of each region of a city. The code need to have data from trafic of a city. The data the code need are 3 csv file.
A links file, a flow file and a occupancy file.
The code will first collect the data from the file, then convert the flow into volume. The code will do the 
following for each region of the city. Calculate the mean volume and occupancy of each link. Then creat a MFD with
all the link.  
At the end, on the graphics, there are a MFD for each region.



## Getting Started

### Dependencies

The code need to be run with Matlab.
The 3 csv file (links , flow and occupancy) need to be in the same folder as the code when you run it.
The data in the file need to be like this:
* The links file need have the link number in the first column, then the coordinates of the link in the column 2 
and 3 and then the region of the link in the last column.
* The occupancy file need to have in the first line the link number, and then the first column correspond to the 
time of the obersvation and each next column is the occupancy of the link of the column.
* The flow file need to have in the first line the link number, and then the first column correspond to the time
of the obersvation and each next column is the flow of the link of the column 


## Help

The code need to run with 3 csv file as explainbefore 

## Authors

Developed by Adrien Briffod 
EPFL, Lausanne, Switzerland
adrien.briffod@epfl.ch

## Version History

* 0.1 
	01/12/2022
