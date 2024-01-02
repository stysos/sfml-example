#include "windowControl.hpp"
#include <iostream>
// #include <SFML/Window.hpp>
#include <SFML/Graphics.hpp>

#include "player.hpp"

WindowWrapper::WindowWrapper(int height, int width)
{
    WindowWrapper::windowSettings.height = height;
    WindowWrapper::windowSettings.width = width;
}

WindowWrapper::~WindowWrapper() {}

void WindowWrapper::createTexture(std::string imagePath)
{

    sf::Texture texture;
    if (!texture.loadFromFile(imagePath))
    {
        std::cout << "ERROR: Cannot find image" << std::endl;
        return;
    }

    std::cout << "Loaded texture from " << imagePath << std::endl;
    WindowWrapper::textureVector.push_back(texture);
}

void WindowWrapper::testSprite(const sf::Texture &texture)
{
    sf::Sprite sprite;

    sprite.setPosition(0, 0);

    std::cout << "Set position" << std::endl;

    // sprite.scale(1, 1);

    sprite.setTexture(texture);

    WindowWrapper::spriteVector.push_back(sprite);
}

void WindowWrapper::setTexture(int spriteId, int textureId)
{
    WindowWrapper::spriteVector[spriteId].setTexture(WindowWrapper::textureVector[textureId]);
}

void WindowWrapper::initialTest()
{

    WindowWrapper::createTexture(std::string("textures/grass.jpg"));
    WindowWrapper::testSprite(WindowWrapper::textureVector[0]);

    // WindowWrapper::setTexture(0, 0);

    if (WindowWrapper::textureVector.empty())
    {
        std::cout << "ERROR: Texture vector is empty!" << std::endl;
    }
}

void WindowWrapper::runningLoop()
{
    // Todo: Temporary texture setting
    int count = 0;

    for (auto &sprite : WindowWrapper::spriteVector)
    {
        WindowWrapper::window->draw(sprite);
    }
}

void WindowWrapper::createWindow()
{
    // May be better to just return unique ptr to window ?
    WindowWrapper::window = std::make_unique<sf::RenderWindow>();
}

void WindowWrapper::createText(std::string textToRender)
{
    sf::Font font;

    if (!font.loadFromFile("sans.TTF"))
    {
        std::cout << "ERROR: Cannot load font" << std::endl;
    }

    sf::Text text;

    text.setFont(font);

    text.setString(textToRender);

    text.setCharacterSize(34);

    text.setFillColor(sf::Color::Green);

    text.setStyle(sf::Text::Bold);

    float height = (WindowWrapper::windowSettings.height / 2);

    float width = (WindowWrapper::windowSettings.width / 2);

    text.setPosition(height, width);

    WindowWrapper::window->draw(text);
}

void WindowWrapper::run()
{

    WindowWrapper::createWindow();

    WindowWrapper::window->create(sf::VideoMode(667, 360), "SFML Example");
    WindowWrapper::window->setFramerateLimit(60);

    WindowWrapper::initialTest();

    WindowWrapper::window->setKeyRepeatEnabled(true);

    Player myPlayer(std::string("textures/peng.jpg"));

    while (WindowWrapper::window->isOpen())
    {
        sf::Event event;
        while (WindowWrapper::window->pollEvent(event))
        {
            // "close requested" event: we close the window
            if (event.type == sf::Event::Closed)
                WindowWrapper::window->close();

            if (sf::Keyboard::isKeyPressed(sf::Keyboard::W))
            {
                myPlayer.movePlayer('u', 6.0);
            }
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::S))
            {
                myPlayer.movePlayer('d', 6.0);
            }
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::D))
            {
                myPlayer.movePlayer('r', 6.0);
            }
            else if (sf::Keyboard::isKeyPressed(sf::Keyboard::A))
            {
                myPlayer.movePlayer('l', 6.0);
            }
        }

        WindowWrapper::window->clear(sf::Color::Black);

        // WindowWrapper::createBackground(std::string("textures/ground.png"));

        WindowWrapper::runningLoop();

        myPlayer.drawPlayer(WindowWrapper::window.get());

        // WindowWrapper::createText(std::string("Balls"));

        WindowWrapper::window->display();
    }
}
