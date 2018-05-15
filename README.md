# NGLESS-PROFILER

[http://ngless.embl.de](http://ngless.embl.de)

This is a collection of predefined [ngless](http://ngless.embl.de) pipelines
for processing shotgun metagenomes.

1. `human-gut.ngl` for human gut samples

2. `marine.ngl` for marine samples

3. `mouse-gut.ngl` for mouse gut samples

4. `dog-gut.ngl` for dog gut samples

5. `de-novo.ngl` for de novo processing

These are predefined, but users are encouraged to adapt them to their specific
needs.

## INSTALL

You need to

1. install [ngless](http://github.com/ngless-toolkit/ngless). The recommended
   way is through bioconda:

   conda install -c bioconda ngless 

Alternatively, see the [ngless documentation on how to install
it](http://ngless.embl.de/install.html).

2. copy the appropriate profiling script (e.g., `human-gut.ngl` for human gut
   samples) to next to where your data live and run it through ngless:

   ngless human-gut.ngl INPUT-DIRECTORY OUTPUT-DIRECTORY

## USAGE



## GETTING HELP

- [NGLess webpage](http://ngless.embl.de) includes a section on [ngless-profiler]()
- For questions, you can use the [ngless mailing
  list](https://groups.google.com/forum/#!forum/ngless).


