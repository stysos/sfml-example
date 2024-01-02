#include <iostream>
#include "player.hpp"

Player::Player(std::string imagePath)
{

    if (!playerTexture.loadFromFile(imagePath))
    {
        std::cout << "ERROR: Could not load player texture";
    }

    playerSprite.setTexture(playerTexture);
}

Player::~Player() {}

void Player::drawPlayer(sf::RenderWindow *window)
{
    window->draw(Player::playerSprite);
}

void Player::movePlayer(char direction, float moveSpeed)
{
    std::cout << "Moving " << direction << moveSpeed << std::endl;
    if (direction == 'u')
    {
        playerSprite.move(0, -moveSpeed);
    }
    else if (direction == 'd')
    {
        playerSprite.move(0, moveSpeed);
    }
    else if (direction == 'l')
    {
        playerSprite.move(-moveSpeed, 0);
    }
    else if (direction == 'r')
    {
        playerSprite.move(moveSpeed, 0);
    }
}