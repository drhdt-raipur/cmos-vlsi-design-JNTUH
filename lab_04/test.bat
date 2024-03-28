@echo off
setlocal enabledelayedexpansion

REM Define the project name
set PROJECT_NAME=ModelSim_Project

REM Navigate to the modelsim directory
cd modelsim

REM Create a new ModelSim library called "work"
vlib work

REM Map the "work" library to the current directory
vmap work ./work

REM Create or overwrite the project file
echo // ModelSim Project File > %PROJECT_NAME%.mpf
echo vlib work >> %PROJECT_NAME%.mpf
echo vmap work work >> %PROJECT_NAME%.mpf

REM Compile VHDL and Verilog files and add them to the project file
cd ..

REM Add VHDL files from rtl directory
for %%f in (rtl\*.vhd rtl\*.vhdl) do (
    vcom -work modelsim\work %%f
    echo vcom -work work %%f >> modelsim\%PROJECT_NAME%.mpf
)

REM Add Verilog files from rtl directory
for %%f in (rtl\*.v) do (
    vlog -work modelsim\work %%f
    echo vlog -work work %%f >> modelsim\%PROJECT_NAME%.mpf
)

REM Add VHDL files from tb directory
for %%f in (tb\*.vhd tb\*.vhdl) do (
    vcom -work modelsim\work %%f
    echo vcom -work work %%f >> modelsim\%PROJECT_NAME%.mpf
)

REM Add Verilog files from tb directory
for %%f in (tb\*.v) do (
    vlog -work modelsim\work %%f
    echo vlog -work work %%f >> modelsim\%PROJECT_NAME%.mpf
)

echo Project and ModelSim project file created successfully.
