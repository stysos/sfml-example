#pragma once

#include <SFML/Graphics.hpp>

class Player
{
private:
    sf::Texture playerTexture;
    sf::Sprite playerSprite;

    void drawPlayer();
    void createSprite();

public:
    Player(std::string imagePath);
    ~Player();

    void drawPlayer(sf::RenderWindow *window);
    void movePlayer(char direction, float moveSpeed);
};