#!/bin/bash
# Example bash script to bulk download the LiDAR data from jinha.org for all
# tiles covering the Tippecanoe County, Indiana.
#
# Notes for wget:
#    (1) To save all files under one directory without preserving the online folder structures
#           wget --no-parent -e robots=off -U mozilla -A '*_dsm.tif' -r -nd -N -P "dir" "url"
#        e.g.,
#           wget --no-parent -e robots=off -U mozilla -A '*_dsm.tif' -r -nd -N -P "./DSM/QL2_3DEP_LiDAR_IN_2017_2019_l2" "https://lidar.jinha.org/QL2_3DEP_LiDAR_IN_2017_2019_l2/"
#    (2) To save files following the online folder structures
#           wget --no-parent -e robots=off -U mozilla -A '*_dsm.tif' -r -x -nH -N -P "dir" "url"
#        e.g.,
#           wget --no-parent -e robots=off -U mozilla -A '*_dsm.tif' -r -x -nH -N -P "./DSM/" "https://lidar.jinha.org/QL2_3DEP_LiDAR_IN_2017_2019_l2/"
#
# Yaguang Zhang, Purdue University, 2021/06/18

# ~~~~~~ Update this section to set the destination directory ~~~~~~
mkdir -p '/mnt/d/One Drive - Purdue/OneDrive - purdue.edu/OATS/CellCoverageMapper/Lidar_2019/Tippecanoe/'
cd '/mnt/d/One Drive - Purdue/OneDrive - purdue.edu/OATS/CellCoverageMapper/Lidar_2019/Tippecanoe/'
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
pwd
read -n 1 -s -r -p "Press any key to continue"
echo " "
echo " "
# ~~~~~~ Update this section to download other data sets ~~~~~~
echo "====== Downloading DSM Data ======"
mkdir -p "./DSM/QL2_3DEP_LiDAR_IN_2017_2019_l2"
wget --no-parent -e robots=off -U mozilla -A '*_dsm.tif' -r -nd -N -P "./DSM/QL2_3DEP_LiDAR_IN_2017_2019_l2" "https://lidar.jinha.org/QL2_3DEP_LiDAR_IN_2017_2019_l2/tippecanoe/dsm/"
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo " "
echo "====== Done ======"