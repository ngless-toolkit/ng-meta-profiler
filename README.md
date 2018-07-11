# NGLESS-PROFILER

[http://ngless.embl.de](http://ngless.embl.de)

This is a collection of predefined [ngless](http://ngless.embl.de) pipelines
for processing shotgun metagenomes.

1. `human-gut.ngl` for human gut samples

2. `marine.ngl` for marine samples

3. `mouse-gut.ngl` for mouse gut samples

4. `dog-gut.ngl` for dog gut samples

5. `pig-gut.ngl` for pig gut samples

These are predefined, but users are encouraged to adapt them to their specific
needs.

## INSTALL

You need to

1. install [ngless](http://github.com/ngless-toolkit/ngless). The recommended
   way is through bioconda:

    conda install -c bioconda ngless 

Alternatively, see the [ngless documentation on how to install
it](http://ngless.embl.de/install.html).

2. copy the profiling scripts to next to where your data lives


## USAGE

To use the profiler, select the appropriate script (e.  (e.g., `human-gut.ngl`
for human gut samples), put all the FastQ files from the same sample in the
same directory (`INPUT-DIRECTORY`) with the extension `.fq.gz` or `fastq.gz`
and run:

    ngless human-gut.ngl INPUT-DIRECTORY OUTPUT-DIRECTORY

You can use all the [ngless command line
options](http://ngless.embl.de/command-line-options.html) to set options. For
example, to use 8 cores, use:

    ngless --threads=8 human-gut.ngl INPUT-DIRECTORY OUTPUT-DIRECTORY

If you want very verbose output:

    ngless --threads=8 --trace human-gut.ngl INPUT-DIRECTORY OUTPUT-DIRECTORY

## GETTING HELP

- [NGLess webpage](http://ngless.embl.de) includes a section on [ngless-profiler]()
- For questions, you can use the [ngless mailing
  list](https://groups.google.com/forum/#!forum/ngless).


