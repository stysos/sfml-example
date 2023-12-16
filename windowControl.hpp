#include <SFML/Graphics.hpp>

struct WindowSettings {
    int height;
    int width;
};

class WindowWrapper {
    private:
    std::unique_ptr<sf::RenderWindow> window;
    WindowSettings windowSettings;
    void createText(std::string textToRender); 
    void createWindow();

    public:
    WindowWrapper(int height, int width);
    ~WindowWrapper();
    void run();


};