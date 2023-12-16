#include <SFML/Window.hpp>

struct WindowSettings {
    int height;
    int width;
};

class WindowWrapper {
    private:
    std::unique_ptr<sf::Window> window;
    WindowSettings windowSettings;

    public:
    WindowWrapper(int height, int width);
    ~WindowWrapper();
    void run();
    void createWindow();

};