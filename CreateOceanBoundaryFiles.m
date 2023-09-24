% This script will read a specific file contain ocean and sea boundaries
% and save these to a set of files
%
% Written By: Stephen Forczyk
% Created: Sept 23,2023
% Revised: -----
% Classification: Unclassified/Public Domain
global ShapeFileName;

global matpath matlabpath maskpath shapefilepath;
global jpegpath tiffpath moviepath savepath;
global excelpath ascpath citypath tablepath;
global ipowerpoint PowerPointFile scaling stretching padding;

%% Set Up Fixed Paths
shapefilepath='D:\Forczyk\Map_Data\Downloaded_Shapefiles\World_Seas_IHO_v3\';
matlabpath='D:\Forczyk\Map_Data\Matlab_Maps_Oceans\';
%% Set Up Fixed Variables/Flags
ShapeFileName='World_Seas_IHO_v3.shp';

%% Call some routines that will create nice plot window sizes and locations
% Establish selected run parameters
imachine=2;
if(imachine==1)
    widd=720;
    lend=580;
    widd2=1000;
    lend2=700;
elseif(imachine==2)
    widd=1080;
    lend=812;
    widd2=1000;
    lend2=700;
elseif(imachine==3)
    widd=1296;
    lend=974;
    widd2=1200;
    lend2=840;
end
% Set a specific color order
set(0,'DefaultAxesColorOrder',[1 0 0;
    1 1 0;0 1 0;0 0 1;0.75 0.50 0.25;
    0.5 0.75 0.25; 0.25 1 0.25;0 .50 .75]);
% Set up some defaults for a PowerPoint presentationwhos
scaling='true';
stretching='false';
padding=[75 75 75 75];
igrid=1;
% Set up parameters for graphs that will center them on the screen
[hor1,vert1,Fz1,Fz2,machine]=SetScreenCoordinates(widd,lend);
[hor2,vert2,Fz1,Fz2,machine]=SetScreenCoordinates(widd2,lend2);
chart_time=5;
idirector=1;
initialtimestr=datestr(now);
%% Navigate to the location of the World Seas ShapeFile
eval(['cd ' shapefilepath(1:length(shapefilepath)-1)]);
S0 = shaperead(ShapeFileName,'UseGeoCoords',true);
numrows=length(S0);
ab=1;
for i=1:numrows
    nowName=S0(i).NAME;
    seaLat=S0(i).Lat';
    seaLon=S0(i).Lon';
    nowArea=S0(i).area;
    ab=2;
% Now take the name and replace spaces with dashes

end
