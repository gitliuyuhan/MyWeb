myweb : http_conn.o main.o
	clang++ -o myweb http_conn.o main.o -lpthread 	
http_conn.o :   
	clang++ -c http_conn.cpp
main.o : main.cpp locker.h threadpool.h http_conn.h
	clang++ -c main.cpp	 
clean:
	rm myweb http_conn.o main.o	
