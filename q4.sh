#!/bin/bash
function productOf() 
{    
        fNum=$1
        sNum=$2
        tNum=$3
        var=$(( fNum * sNum * tNum ))     
        echo "$var"         
}
productOf
