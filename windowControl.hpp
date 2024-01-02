#include <SFML/Graphics.hpp>
#include <vector>

struct WindowSettings
{
    int height;
    int width;
};

class WindowWrapper
{
private:
    std::unique_ptr<sf::RenderWindow> window;
    WindowSettings windowSettings;
    void createText(std::string textToRender);
    void createBackground(std::string imagePath);
    void createWindow();
    void createTexture(std::string imagePath);
    void runningLoop();
    void setTexture(int spriteId, int textureId);
    void initialTest();
    void testSprite(const sf::Texture& texture); 

    std::vector<sf::Texture> textureVector;
    std::vector<sf::Sprite> spriteVector;

public:
    WindowWrapper(int height, int width);
    ~WindowWrapper();
    void run();
};