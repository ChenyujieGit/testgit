
target:firstwork.o 
	cc -o target firstwork.o
firstwork.o:firstwork.c
	cc -c firstwork.c
clean:
	rm *.o target
