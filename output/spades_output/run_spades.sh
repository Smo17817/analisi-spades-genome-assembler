set -e
true
true
/home/simonedassisi/Desktop/SPAdes-4.1.0-Linux/bin/spades-hammer /home/simonedassisi/Desktop/spades_output/corrected/configs/config.info
/usr/bin/python3 /home/simonedassisi/Desktop/SPAdes-4.1.0-Linux/share/spades/spades_pipeline/scripts/compress_all.py --input_file /home/simonedassisi/Desktop/spades_output/corrected/corrected.yaml --ext_python_modules_home /home/simonedassisi/Desktop/SPAdes-4.1.0-Linux/share/spades --max_threads 16 --output_dir /home/simonedassisi/Desktop/spades_output/corrected --gzip_output
true
true
/home/simonedassisi/Desktop/SPAdes-4.1.0-Linux/bin/spades-core /home/simonedassisi/Desktop/spades_output/K21/configs/config.info
/home/simonedassisi/Desktop/SPAdes-4.1.0-Linux/bin/spades-core /home/simonedassisi/Desktop/spades_output/K33/configs/config.info
/home/simonedassisi/Desktop/SPAdes-4.1.0-Linux/bin/spades-core /home/simonedassisi/Desktop/spades_output/K55/configs/config.info
/home/simonedassisi/Desktop/SPAdes-4.1.0-Linux/bin/spades-core /home/simonedassisi/Desktop/spades_output/K77/configs/config.info
/home/simonedassisi/Desktop/SPAdes-4.1.0-Linux/bin/spades-core /home/simonedassisi/Desktop/spades_output/K99/configs/config.info
/home/simonedassisi/Desktop/SPAdes-4.1.0-Linux/bin/spades-core /home/simonedassisi/Desktop/spades_output/K127/configs/config.info
/usr/bin/python3 /home/simonedassisi/Desktop/SPAdes-4.1.0-Linux/share/spades/spades_pipeline/scripts/copy_files.py /home/simonedassisi/Desktop/spades_output/K127/before_rr.fasta /home/simonedassisi/Desktop/spades_output/before_rr.fasta /home/simonedassisi/Desktop/spades_output/K127/assembly_graph_after_simplification.gfa /home/simonedassisi/Desktop/spades_output/assembly_graph_after_simplification.gfa /home/simonedassisi/Desktop/spades_output/K127/final_contigs.fasta /home/simonedassisi/Desktop/spades_output/contigs.fasta /home/simonedassisi/Desktop/spades_output/K127/first_pe_contigs.fasta /home/simonedassisi/Desktop/spades_output/first_pe_contigs.fasta /home/simonedassisi/Desktop/spades_output/K127/strain_graph.gfa /home/simonedassisi/Desktop/spades_output/strain_graph.gfa /home/simonedassisi/Desktop/spades_output/K127/scaffolds.fasta /home/simonedassisi/Desktop/spades_output/scaffolds.fasta /home/simonedassisi/Desktop/spades_output/K127/scaffolds.paths /home/simonedassisi/Desktop/spades_output/scaffolds.paths /home/simonedassisi/Desktop/spades_output/K127/assembly_graph_with_scaffolds.gfa /home/simonedassisi/Desktop/spades_output/assembly_graph_with_scaffolds.gfa /home/simonedassisi/Desktop/spades_output/K127/assembly_graph.fastg /home/simonedassisi/Desktop/spades_output/assembly_graph.fastg /home/simonedassisi/Desktop/spades_output/K127/final_contigs.paths /home/simonedassisi/Desktop/spades_output/contigs.paths
true
/usr/bin/python3 /home/simonedassisi/Desktop/SPAdes-4.1.0-Linux/share/spades/spades_pipeline/scripts/breaking_scaffolds_script.py --result_scaffolds_filename /home/simonedassisi/Desktop/spades_output/scaffolds.fasta --misc_dir /home/simonedassisi/Desktop/spades_output/misc --threshold_for_breaking_scaffolds 3
true
