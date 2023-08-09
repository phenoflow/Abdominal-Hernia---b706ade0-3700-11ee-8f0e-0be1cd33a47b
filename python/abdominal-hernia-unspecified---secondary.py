# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"T20.8","system":"opcs4"},{"code":"T20.9","system":"opcs4"},{"code":"T21.8","system":"opcs4"},{"code":"T21.9","system":"opcs4"},{"code":"T22.8","system":"opcs4"},{"code":"T22.9","system":"opcs4"},{"code":"T23.8","system":"opcs4"},{"code":"T23.9","system":"opcs4"},{"code":"T24.8","system":"opcs4"},{"code":"T24.9","system":"opcs4"},{"code":"T25.8","system":"opcs4"},{"code":"T25.9","system":"opcs4"},{"code":"T26.8","system":"opcs4"},{"code":"T26.9","system":"opcs4"},{"code":"T27.8","system":"opcs4"},{"code":"T27.9","system":"opcs4"},{"code":"T97.8","system":"opcs4"},{"code":"T97.9","system":"opcs4"},{"code":"T98.8","system":"opcs4"},{"code":"T98.9","system":"opcs4"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('abdominal-hernia-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["abdominal-hernia-unspecified---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["abdominal-hernia-unspecified---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["abdominal-hernia-unspecified---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
