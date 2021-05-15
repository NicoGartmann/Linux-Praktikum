#include <boost/thread/thread.hpp>
#include <MyLibrary.h>
#include <iostream>

int main() {
	boost::thread t{hello};
	t.join();
	return 0;
}
