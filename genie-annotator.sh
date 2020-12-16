#!/usr/bin/env bash

#TOKEN = 

python MafAnnotator.py -i data/data_mutations_extended_9.5-consortium.txt -o data/results/output_maf.txt -c data/data_clinical_sample_9.5-consortium.txt -b $TOKEN
python FusionAnnotator.py -i data/data_fusions_9.5-consortium.txt -o data/results/output_fusion.txt -c data/data_clinical_sample_9.5-consortium.txt -b $TOKEN
python CnaAnnotator.py -i data/data_CNA_9.5-consortium.txt -o data/results/output_cna.txt -c data/data_clinical_sample_9.5-consortium.txt -b $TOKEN
python ClinicalDataAnnotator.py -i data/data_clinical_sample_9.5-consortium.txt -o data/results/output_clinicaldata.txt -a data/results/output_maf.txt
python OncoKBPlots.py -i data/results/output_clinicaldata.txt -o data/results/output.pdf -c ONCOTREE_CODE #-n 10
python GenerateReadMe.py -o data/results/README.txt
