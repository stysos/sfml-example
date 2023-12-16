#include <iostream>
#include "SFML/Main.hpp"
#include "SFML/Window.hpp"

#include "windowControl.hpp"



int main(int, char**){
    std::cout << "Hello, from sfml-example!\n";

    WindowWrapper windowWrapper(800, 600);

    

    windowWrapper.run();

}
