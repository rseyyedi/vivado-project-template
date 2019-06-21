# Make the vivado project 

.PHONY: run clean

run: 
	vivado -mode batch -nojournal -nolog -notrace -source scripts/recreate_prj.tcl 
	vivado ./work/*.xpr
clean:
	@ rm -rf ./work/* .Xil *.log *.jou
