pdb2fasta
==========

Current version 0.2

Take a PDB file and spit out protein sequence in 3 or 1 letter format.

Usage
---------

    pdb2fasta -f <pdbfile> [-c <chain>] [-t] 
 
**Arguments**

`-f`  PDB file (required argument)

`-c`  [optional] Defines the chain in PDB file to print (useful if a PDB file contains several proteins

`-t`  [optional] Print three letter code instead of 1 letter code

`-a`  [optional] Print the output in the CAMPARI sequence file format

Examples
----------

Print all amino acid residues in the file with their one letter code

    pdb2fasta -f file.pdb  

Print the number and names of the chains in the PDB file
  
    pdb2fasta -c file.pdb 

Prints the amino acid residues in chain A in the PDB file

    pdb2fasta -f file.pdb -c A 

Print the amino acid sequence, ignoring non-standard amino acids (DANGEROUS)

    pdb2fasta -f file.pdb 2>/dev/null
    
    
About
------

This code was written by Alex Holehouse as part of the [Pappu Lab](http://pappulab.wustl.edu/). For more information contact alex.holehouse@wustl.edu. For bug fixes please file a pull request.


