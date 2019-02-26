# Comments for reviewers

Dear reviewers, please note that all the CSV files have been uploaded before the deadline. This is just a text to better understand the CSV files.

The files are organized into the Spinglass (spinglass) and Network reliability (netrel) sets. Network reliability is further cut into SAT and UNSAT instances. For "netrel", UNSAT instances contain enough XOR clauses to make them UNSAT, whereas the SAT instances don't.

Please note that timeouts are marked as:
    * "Z" for "orig time" which is MaxHS with top-level Gaussian elimination.
    * "X" for "new time" which is MaxHS with Gaussian elimination at all levels.
This is such that it's easy to grep and count with (in Unix-like environments):

```
grep "Z" netrel-sat.csv | wc -l
```

which gives the number of timeouts for MaxHS using top-level-only Gaussian elimination. Similarly:

```
grep "X" netrel-sat.csv | wc -l
```

gives the number of timeouts for MaxHS with Gaussian elimination that runs at all levels. The latter will give a much lower number, as with Gaussian elimination running at all levels the system is significantly faster.

For further analysis or in Windows-based environments, the files can be imported into Excel, LibreOffice or Google Sheets and filtered/summarized/plotted/etc there.
