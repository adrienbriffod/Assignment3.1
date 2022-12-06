% Developed by Adrien Briffod
% Estimating the Macro fundamental diagram using volume and occupancy of a
% city 
% EPFL, Lausanne, Switzerland
% Created: 20/11/2021
% Last Update: 01/12/2022


%% What is the goal of this matlab script 

% Our goal is to optain one graphe with a Macro fundamental diagram of
% the volume vs the occupancy. 
% In our project we have data from a city. The data we have are the links
% in the city, the region of the city, the flow of each link and the
% occupancy of each link. 

%% Initialize

% This part is to remove items from workspace, freeing up system memory,
% close all the figure and clear all the command window
clear;
close all;
clc;

%% The first step, we need to collect the data from the csv file 

% The links file need to have the link number in the first column, then     
% the coordinates of the link in the column 2 and 3 and then the region of 
% the link in the last column 
load links.csv

% The occupancy file need to have in the first line the link number, and
% then the first column correspond to the time of the obersvation and each 
% next column is the occupancy of the link of the column 
load occupancy.csv

% The flow file need to have in the first line the link number, and
% then the first column correspond to the time of the obersvation and each 
% next column is the flow of the link of the column 
load flow.csv

%% The code

% We want to have the volume so we need to convert flow into volume 
% [veh/hour]
volume = flow(2:end,2:end)/(90/3600);                                      % We don't take the first row because that the link number

% We need to have the occupancy of each link without the first row of the 
% file because we don't need to have the link number 
occupancy = occupancy(2:end,2:end); 

% We creat a figure with the MFD of the volume vs the occupancy of all the 
% region together in the same graphics
figure

% We do a lop that will searh for each region which link are in this region
% then do the MFD  of this region 
for i = 1:4
    index = find(links (:,6)==i);                                            % We find the all the link from region i 
    mean_volume_link = mean(volume (:,index),2);                             % We want to have the mean volume of each link
    mean_occupancy_link = mean(occupancy (:,index),2);                  % We want to have the mean occupancy of each link
    plot(mean_occupancy_link,mean_volume_link,'o');
    hold on
end

% We need to add the title, the legend and the label of the graphique. We
% also set the size of the window
ylabel('Volume [veh/h]')                                                   
xlabel('Occupancy [%]')
title('Volume function of occupancy for all 4 regions','FontSize',16);
legend({'Region 1','Region 2','Region 3','Region 4'});
set(gcf,'position',get (0,"screensize"));
hold off
