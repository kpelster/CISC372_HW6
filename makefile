CFLAGS=
cudafastblur: obj/cudafastblur.o
	nvcc $(CFLAGS) obj/cudafastblur.o -g -o cudafastblur -lm


obj/cudafastblur.o: cudafastblur.cu
	nvcc -c $(CFLAGS) cudafastblur.cu -g -o obj/cudafastblur.o 

cudablur: obj/cudablur.o
	        nvcc $(CFLAGS) obj/cudablur.o -g -o cudablur -lm


obj/cudablur.o: cudablur.cu
	        nvcc -c $(CFLAGS) cudablur.cu -g -o obj/cudablur.o

fastblur: obj/fastblur.o
		gcc $(CFLAGS) obj/fastblur.o -g -o fastblur -lm


obj/fastblur.o: fastblur.c
		gcc -c $(CFLAGS) fastblur.c -g -o obj/fastblur.o 

clean:
	rm -f obj/* cudablur output.png fastblur cudafastblur
