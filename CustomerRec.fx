.LOGTABLE pdp_tmp.customerr_log; 

 
.LOGON your_ip/acc_name,acc_pwd; 

 
DATABASE pdp_tmp;
.BEGIN EXPORT SESSIONS 2; 
 
.EXPORT OUTFILE D:\PTCL\FASTEXPORT\Customerdata.txt 
 
MODE RECORD FORMAT TEXT;

SELECT CAST(customer_name AS VARCHAR(30)), 
CAST(broadband_quantity AS VARCHAR(15)), 
CAST(charji_quantity AS VARCHAR(15)), 
CAST(Year_Month AS VARCHAR(30))   
 FROM
pdp_tmp.NewCustomer_By_Arfa;

.END EXPORT;
.LOGOFF;
3:52 PM 11/5/2021
