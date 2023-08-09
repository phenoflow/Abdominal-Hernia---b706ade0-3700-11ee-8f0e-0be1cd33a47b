# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"10139","system":"med"},{"code":"101576","system":"med"},{"code":"102624","system":"med"},{"code":"102649","system":"med"},{"code":"10301","system":"med"},{"code":"103310","system":"med"},{"code":"103974","system":"med"},{"code":"105998","system":"med"},{"code":"108628","system":"med"},{"code":"11206","system":"med"},{"code":"12246","system":"med"},{"code":"12842","system":"med"},{"code":"14670","system":"med"},{"code":"15050","system":"med"},{"code":"15680","system":"med"},{"code":"17191","system":"med"},{"code":"17898","system":"med"},{"code":"19219","system":"med"},{"code":"19397","system":"med"},{"code":"21284","system":"med"},{"code":"244","system":"med"},{"code":"24628","system":"med"},{"code":"24982","system":"med"},{"code":"268","system":"med"},{"code":"28558","system":"med"},{"code":"28944","system":"med"},{"code":"29442","system":"med"},{"code":"31396","system":"med"},{"code":"3200","system":"med"},{"code":"33485","system":"med"},{"code":"3367","system":"med"},{"code":"33696","system":"med"},{"code":"33743","system":"med"},{"code":"34915","system":"med"},{"code":"34987","system":"med"},{"code":"35236","system":"med"},{"code":"3534","system":"med"},{"code":"36963","system":"med"},{"code":"3742","system":"med"},{"code":"37796","system":"med"},{"code":"38101","system":"med"},{"code":"40679","system":"med"},{"code":"41509","system":"med"},{"code":"41524","system":"med"},{"code":"41790","system":"med"},{"code":"42143","system":"med"},{"code":"42716","system":"med"},{"code":"42741","system":"med"},{"code":"44246","system":"med"},{"code":"45678","system":"med"},{"code":"45687","system":"med"},{"code":"45772","system":"med"},{"code":"47125","system":"med"},{"code":"48101","system":"med"},{"code":"48823","system":"med"},{"code":"50547","system":"med"},{"code":"52472","system":"med"},{"code":"53447","system":"med"},{"code":"53794","system":"med"},{"code":"56506","system":"med"},{"code":"56519","system":"med"},{"code":"56522","system":"med"},{"code":"57942","system":"med"},{"code":"5870","system":"med"},{"code":"59850","system":"med"},{"code":"59925","system":"med"},{"code":"60614","system":"med"},{"code":"611","system":"med"},{"code":"62486","system":"med"},{"code":"63506","system":"med"},{"code":"64067","system":"med"},{"code":"64977","system":"med"},{"code":"652","system":"med"},{"code":"67276","system":"med"},{"code":"67309","system":"med"},{"code":"68045","system":"med"},{"code":"68086","system":"med"},{"code":"69455","system":"med"},{"code":"70402","system":"med"},{"code":"70611","system":"med"},{"code":"71835","system":"med"},{"code":"72057","system":"med"},{"code":"7679","system":"med"},{"code":"90489","system":"med"},{"code":"90490","system":"med"},{"code":"91771","system":"med"},{"code":"93769","system":"med"},{"code":"94016","system":"med"},{"code":"94065","system":"med"},{"code":"94802","system":"med"},{"code":"94896","system":"med"},{"code":"95704","system":"med"},{"code":"96040","system":"med"},{"code":"96844","system":"med"},{"code":"99143","system":"med"},{"code":"9949","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('abdominal-hernia-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["abdominal-hernia-procedure---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["abdominal-hernia-procedure---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["abdominal-hernia-procedure---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
