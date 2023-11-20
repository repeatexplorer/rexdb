# REXdb: Reference Database of Transposable Element Protein Domains
[![DOI](https://zenodo.org/badge/721142949.svg)](https://zenodo.org/doi/10.5281/zenodo.10160279)


REXdb is a comprehensive reference database specifically designed for the study of transposable element protein domains. It plays a crucial role in the analysis of repetitive sequences in genomic data.

Key Publication
The database is detailed in the article: "Systematic survey of plant 
LTR-retrotransposons elucidates phylogenetic relationships of their polyprotein domains and provides a reference for element classification," Mobile DNA 2019, 10:1. https://doi.org/10.1186/s13100-018-0144-1

REXdb is integrated with several repeat analysis tools: [RepeatExplorer2](http://repeatexplorer.org/?page_id=818),
[DANTE](http://repeatexplorer.org/?page_id=832) and [DANTE_LTR](http://repeatexplorer.org/?page_id=1395) which 
are available on Galaxy server: https://repeatexplorer-elixir.cerit-sc.cz/galaxy

## Database Content
REXdb consists of two primary databases:

- Viridiplantae Database (current version: 3.0)
- Metazoa Database (current version: 3.1)

Each database contains:

- A FASTA file with protein sequences.
- A classification table for sequence categorization.

## Sequence Format
Sequences in REXdb follow this syntax:

```txt
>Protein-domain-name__REXdb_IDnumber
AA sequence
```

Example:

```txt
>Ty1-RT__REXdb_ID1442
WRQAMVDEMAALHSNGSWDLVVLPSGKSTVGCRWVYAVKVGPDGQVDRLKARLVAKGYTQ
VYGSDYGDTFSPVAKIASVRLLLSMAAMCSWPLYQLDIKNAFLHGDLAEEVYMEQPPGFV
AQGESGLVCRLRRSLYGLKQSPRAWFSRFSSVVQEFGMLRSTADHSVFYHHNSLGQCIYL
VVYVDDIVITGSDQDGIQ
```

Classification of mobile elements is provided in tab-delimited classification table 
which is referencing protein sequences via their REXdb_IDnumbers :
```tsv 
REXdbIDNumber  ClassLevel1  ClassLevel2 ClassLevel3 ...
Numbers of classification levels are different for different types of mobile elements. Below are examples of records from the classification table:
```

```tsv
REXdb_ID1 Class_I LTR Ty1/copia Ale 
REXdb_ID2256 Class_I LTR Ty1/copia Angela
REXdb_ID6786 Class_I LTR Ty3/gypsy non-chromovirus OTA Tat TatII
```

The classification of mobile elements is based the following hierarchical classification 
scheme:

```txt
   --mobile_element                             
          ¦--Class_I                                
          ¦   ¦--SINE                               
          ¦   ¦--LTR                                
          ¦   ¦   ¦--Ty1/copia                      
          ¦   ¦   ¦       ¦--Ale                    
          ¦   ¦   ¦       ¦--Alesia                 
          ¦   ¦   ¦       ¦--Angela                 
          ¦   ¦   ¦       ¦--Bianca                 
          ¦   ¦   ¦       ¦--Bryco                  
          ¦   ¦   ¦       ¦--Lyco                   
          ¦   ¦   ¦       ¦--Gymco-III              
          ¦   ¦   ¦       ¦--Gymco-I                
          ¦   ¦   ¦       ¦--Gymco-II               
          ¦   ¦   ¦       ¦--Ikeros                 
          ¦   ¦   ¦       ¦--Ivana                  
          ¦   ¦   ¦       ¦--Gymco-IV               
          ¦   ¦   ¦       ¦--Osser                  
          ¦   ¦   ¦       ¦--SIRE                   
          ¦   ¦   ¦       ¦--TAR                    
          ¦   ¦   ¦       ¦--Tork                   
          ¦   ¦   ¦       °--Ty1-outgroup           
          ¦   ¦   °--Ty3/gypsy                      
          ¦   ¦           ¦--non-chromovirus        
          ¦   ¦           ¦   ¦--non-chromo-outgroup
          ¦   ¦           ¦   ¦--Phygy              
          ¦   ¦           ¦   ¦--Selgy              
          ¦   ¦           ¦   °--OTA                
          ¦   ¦           ¦       ¦--Athila         
          ¦   ¦           ¦       °--Tat            
          ¦   ¦           ¦           ¦--TatI       
          ¦   ¦           ¦           ¦--TatII      
          ¦   ¦           ¦           ¦--TatIII     
          ¦   ¦           ¦           ¦--Ogre       
          ¦   ¦           ¦           °--Retand     
          ¦   ¦           °--chromovirus            
          ¦   ¦               ¦--Chlamyvir          
          ¦   ¦               ¦--Tcn1               
          ¦   ¦               ¦--chromo-outgroup    
          ¦   ¦               ¦--CRM                
          ¦   ¦               ¦--Galadriel          
          ¦   ¦               ¦--Tekay              
          ¦   ¦               ¦--Reina              
          ¦   ¦               °--chromo-unclass     
          ¦   ¦--pararetrovirus                     
          ¦   ¦--DIRS                               
          ¦   ¦--Penelope                           
          ¦   °--LINE                               
          °--Class_II                               
              ¦--Subclass_1                         
              ¦   °--TIR                            
              ¦       ¦--MITE                       
              ¦       ¦--EnSpm/CACTA                  
              ¦       ¦--hAT                        
              ¦       ¦--Kolobok                    
              ¦       ¦--Merlin                     
              ¦       ¦--MuDR/Mutator                
              ¦       ¦--Novosib                    
              ¦       ¦--P                          
              ¦       ¦--PIF/Harbinger              
              ¦       ¦--PiggyBac                   
              ¦       ¦--Sola1                      
              ¦       ¦--Sola2                      
              ¦       °--Tc1                        
              ¦           °--Mariner                
              °--Subclass_2                         
                  °--Helitron   
```
