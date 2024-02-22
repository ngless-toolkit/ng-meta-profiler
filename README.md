# NGLESS-PROFILER

[https://ngless.embl.de](https://ngless.embl.de)

This is a collection of predefined [ngless](https://ngless.embl.de) pipelines
for processing shotgun metagenomes.

1. `human-gut.ngl` for human gut samples

2. `marine.ngl` for marine samples

3. `mouse-gut.ngl` for mouse gut samples

4. `dog-gut.ngl` for dog gut samples

5. `pig-gut.ngl` for pig gut samples

These are predefined, but users are encouraged to adapt them to their specific
needs.

## Citation

If you are using NG-meta-profiler (or any NGLess-based pipeline), please cite:

> _NG-meta-profiler: fast processing of metagenomes using NGLess, a
> domain-specific language_ by Luis Pedro Coelho, Renato Alves, Paulo Monteiro,
> Jaime Huerta-Cepas, Ana Teresa Freitas, Peer Bork, Microbiome (2019)
> [https://doi.org/10.1186/s40168-019-0684-8](https://doi.org/10.1186/s40168-019-0684-8)


## INSTALL

You need to

1. install [ngless](https://github.com/ngless-toolkit/ngless). The recommended
   way is through bioconda:

    conda install -c bioconda ngless

Alternatively, see the [ngless documentation on how to install
it](https://ngless.embl.de/install.html).

2. copy the profiling scripts to next to where your data lives


## USAGE

To use the profiler, select the appropriate script (e.g., `human-gut.ngl` for
human gut samples), put all the FastQ files from the same sample in the same
directory (`INPUT-DIRECTORY`) with the extension `.fq.gz` or `fastq.gz` and
run:

    ngless human-gut.ngl INPUT-DIRECTORY OUTPUT-DIRECTORY

You can use all the [ngless command line
options](https://ngless.embl.de/command-line-options.html) to set options. For
example, to use 8 cores, use:

    ngless --threads=8 human-gut.ngl INPUT-DIRECTORY OUTPUT-DIRECTORY

If you want very verbose output:

    ngless --threads=8 --trace human-gut.ngl INPUT-DIRECTORY OUTPUT-DIRECTORY

### USAGE WITH DOCKER

We now also provide docker containers containing all required databases on
[docker hub](https://cloud.docker.com/u/nglesstoolkit/).

These images can be used directly or through the convenience script
[ng-meta-profiler.sh](https://github.com/ngless-toolkit/ng-meta-profiler/blob/master/ng-meta-profiler.sh).
To use `ng-meta-profiler.sh` simply download the script, decide which profiler
to use (`human-gut:1.0.0` in the example) and run:

    ng-meta-profiler.sh human-gut:1.0.0 INPUT-DIRECTORY OUTPUT-DIRECTORY

which will download and analyse the specified data with the `human-gut:1.0.0` profiler.

`INPUT` and `OUTPUT` should be absolute paths and `INPUT` should be a directory
containing a metagenome as a set of files named according to the [MOCAT
format](https://ngless.embl.de/stdlib.html#mocat-module).

## RESOURCE REQUIREMENTS

| Profiler | Memory | Disk space |
|----------|--------|------------|
| Human    |  14.7G |       18G  |
| Mouse    |   5.1G |      6.3G  |
| Dog      |   4.5G |      3.5G  |
| Pig      |  10.1G |       17G  |

Note too that _the first time_ you run a particular profiler, NGLess will
download and index the respective databases. This is likely to take several
hours (and this process does not benefit from using multiple threads). This is
only necessary once. Afterwards, the index will be reused (this is what is
responsible for disk space usage in the table above).

## GETTING HELP

- [NGLess webpage](https://ngless.embl.de) includes a section on [ngless-profiler]()
- For questions, you can use the [ngless mailing
  list](https://groups.google.com/forum/#!forum/ngless).


