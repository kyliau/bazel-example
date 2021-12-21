#include <iostream>
#include <fstream>
#include <string>

int main(int argc, char* argv[]) {
  std::cout << "Producing " << argv[1] << std::endl;

  std::ofstream outfile(argv[1]);
  outfile << "some contents for " << argv[1];
  outfile.close();

  return 0;
}
