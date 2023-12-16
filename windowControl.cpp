#include "windowControl.hpp"
#include <SFML/Window.hpp>

WindowWrapper::WindowWrapper(int height, int width) {
    WindowWrapper::windowSettings.height = height;
    WindowWrapper::windowSettings.width = width;
}

WindowWrapper::~WindowWrapper() {}

void WindowWrapper::createWindow() { 
    // May be better to just return unique ptr to window ?
    WindowWrapper::window = std::make_unique<sf::Window>();

}

void WindowWrapper::run() {

    WindowWrapper::createWindow();
    
    WindowWrapper::window->create(sf::VideoMode(800, 600), "SFML Example");
    WindowWrapper::window->setFramerateLimit(60);


    while (WindowWrapper::window->isOpen()) {
        sf::Event event;
        while (WindowWrapper::window->pollEvent(event))
        {
            // "close requested" event: we close the window
            if (event.type == sf::Event::Closed)
                WindowWrapper::window->close();
        }
    }
}
