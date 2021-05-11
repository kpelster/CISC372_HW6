CFLAGS=
cudablur: obj/cudablur.o
	nvcc $(CFLAGS) obj/cudablur.o -g -o cudablur -lm


obj/cudablur.o: cudablur.cu
	nvcc -c $(CFLAGS) cudablur.cu -g -o obj/cudablur.o 


clean:
	rm -f obj/* cudablur output.png
