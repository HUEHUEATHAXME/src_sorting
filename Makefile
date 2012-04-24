all: compile random sorted reversed plot_all

random:
	./bubble_random bubble_random.data
	./selection_random selection_random.data
	./insertion_random insertion_random.data
	./insertion_optimized_random insertion_optimized_random.data

sorted:
	./bubble_sorted bubble_sorted.data
	./selection_sorted selection_sorted.data
	./insertion_sorted insertion_sorted.data
	./insertion_optimized_sorted insertion_optimized_sorted.data

reversed:
	./bubble_reversed bubble_reversed.data
	./selection_reversed selection_reversed.data
	./insertion_reversed insertion_reversed.data
	./insertion_optimized_reversed insertion_optimized_reversed.data

compile:
	gcc -Wall -o bubble_random testsort.c time.c bubble.c
	gcc -Wall -o selection_random testsort.c time.c selection.c
	gcc -Wall -o insertion_random testsort.c time.c insertion.c
	gcc -Wall -o insertion_optimized_random testsort.c time.c insertion_optimized.c

	gcc -Wall -o bubble_sorted testsort_sorted.c time.c bubble.c
	gcc -Wall -o selection_sorted testsort_sorted.c time.c selection.c
	gcc -Wall -o insertion_sorted testsort_sorted.c time.c insertion.c
	gcc -Wall -o insertion_optimized_sorted testsort_sorted.c time.c insertion_optimized.c

	gcc -Wall -o bubble_reversed testsort_reversed.c time.c bubble.c
	gcc -Wall -o selection_reversed testsort_reversed.c time.c selection.c
	gcc -Wall -o insertion_reversed testsort_reversed.c time.c insertion.c
	gcc -Wall -o insertion_optimized_reversed testsort_reversed.c time.c insertion_optimized.c


plot_all:
	gnuplot sortperf_all.plot
	ps2pdf sortperf_all.ps
	xpdf sortperf_all.pdf

plot_random:
	gnuplot sortperf_random.plot
	ps2pdf sortperf_random.ps
	xpdf sortperf_random.pdf

plot_sorted:
	gnuplot sortperf_sorted.plot
	ps2pdf sortperf_sorted.ps
	xpdf sortperf_sorted.pdf

plot_reversed:
	gnuplot sortperf_reversed.plot
	ps2pdf sortperf_reversed.ps
	xpdf sortperf_reversed.pdf

plot_bubble:
	gnuplot sortperf_bubble.plot
	ps2pdf sortperf_bubble.ps
	xpdf sortperf_bubble.pdf

plot_selection:
	gnuplot sortperf_selection.plot
	ps2pdf sortperf_selection.ps
	xpdf sortperf_selection.pdf

plot_insertion:
	gnuplot sortperf_insertion.plot
	ps2pdf sortperf_insertion.ps
	xpdf sortperf_insertion.pdf

plot_insertion_optimized:
	gnuplot sortperf_insertion_optimized.plot
	ps2pdf sortperf_insertion_optimized.ps
	xpdf sortperf_insertion_optimized.pdf


clean:
	rm -f bubble_random bubble_sorted bubble_reversed
	rm -f insertion_random insertion_sorted insertion_reversed 
	rm -f insertion_optimized_random insertion_optimized_sorted insertion_optimized_reversed 
	rm -f selection_random selection_sorted selection_reversed
	rm -rf *.data
	rm -f *~
	rm -f *.ps
