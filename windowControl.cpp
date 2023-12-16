#include "windowControl.hpp"
#include <iostream>
// #include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

WindowWrapper::WindowWrapper(int height, int width) {
    WindowWrapper::windowSettings.height = height;
    WindowWrapper::windowSettings.width = width;
}

WindowWrapper::~WindowWrapper() {}

void WindowWrapper::createWindow() { 
    // May be better to just return unique ptr to window ?
    WindowWrapper::window = std::make_unique<sf::RenderWindow>();

}

void WindowWrapper::createText(std::string textToRender) {
    sf::Font font;

    if (!font.loadFromFile("sans.TTF")) {
        std::cout << "ERROR: Cannot load font" << std::endl;
        
    }

    sf::Text text;

    text.setFont(font);

    text.setString(textToRender);

    text.setCharacterSize(34);

    text.setFillColor(sf::Color::Green);

    text.setStyle(sf::Text::Bold);

    float height = (WindowWrapper::windowSettings.height/2);

    float width = (WindowWrapper::windowSettings.width/2);

    text.setPosition(height, width);

    WindowWrapper::window->draw(text);

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

        WindowWrapper::window->clear(sf::Color::Black);

        WindowWrapper::createText(std::string("Balls"));

        WindowWrapper::window->display();
    }
}