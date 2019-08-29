#ifndef SRC_MENU_H_
#define SRC_MENU_H_

#include "Scene.h"
#include "xil_types.h"

class Menu : public Scene
{
public:
	Menu(uint8_t id, Keyboard *input);
    void Init();
    void HandleInput();
    void Update(float dt);
    void Draw();
};

#endif /* SRC_MENU_H_ */
