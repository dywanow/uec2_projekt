#include "Arena.h"

uint8_t Arena::select = 0;

const uint8_t PLR1_CODE = 5,
              PLR2_CODE = 6;

Arena::Arena(uint8_t *input0, uint8_t *input1)
{
    uint16_t i;
    for (i = 0; i < PATHS_NUMBER; i++)
    {
        elements[i] = &paths[i];
    }
    for (i = 0; i < WALLS_NUMBER; i++)
    {
        elements[PATHS_NUMBER+i] = &walls[i];
    }
    for (i = 0; i < BONUS_BOMBS_NUMBER; i++)
    {
        elements[PATHS_NUMBER+WALLS_NUMBER+i] = &bonus_bombs[i];
    }
    for (i = 0; i < BONUS_LIVES_NUMBER; i++)
    {
        elements[PATHS_NUMBER+WALLS_NUMBER+BONUS_BOMBS_NUMBER+i] = &bonus_lives[i];
    }
    for (i = 0; i < BOXES_NUMBER; i++)
    {
        elements[PATHS_NUMBER+WALLS_NUMBER+BONUS_BOMBS_NUMBER+BONUS_LIVES_NUMBER+i] = &boxes[i];
    }
    for (i = 0; i < BOMBS_NUMBER; i++)
    {
        elements[PATHS_NUMBER+WALLS_NUMBER+BONUS_BOMBS_NUMBER+BONUS_LIVES_NUMBER+BOXES_NUMBER+i] = &bombs[i];
    }
    for (i = 0; i < BOMBERS_NUMBER; i++)
    {
        elements[PATHS_NUMBER+WALLS_NUMBER+BONUS_BOMBS_NUMBER+BONUS_LIVES_NUMBER+BOXES_NUMBER+BOMBS_NUMBER+i] = &bombers[i];
    }
    for (i = 0; i < FIRES_NUMBER; i++)
    {
        elements[PATHS_NUMBER+WALLS_NUMBER+BONUS_BOMBS_NUMBER+BONUS_LIVES_NUMBER+BOXES_NUMBER+BOMBS_NUMBER+BOMBERS_NUMBER+i] = &fires[i];
    }
    for (auto &e : elements)
    {
    	e->SetArena(this);
    }
    bombers[0].SetInput(input0);
    bombers[0].SetID(0);
    bombers[0].SetCode(PLR1_CODE);
    bombers[1].SetInput(input1);
    bombers[1].SetID(1);
    bombers[1].SetCode(PLR2_CODE);
}

void Arena::Init()
{
    time = 0;
    for (auto &e : elements)
    {
        e->Init();
    }
    const Position bonus_bombs_respawns[][BONUS_BOMBS_NUMBER] = 
    {
        { Position(6, 6), Position(9, 9) },
        { Position(6, 9), Position(9, 6) },
        { Position(7, 6), Position(8, 9) }
    };
    const Position bonus_lives_respawns[][BONUS_BOMBS_NUMBER] = 
    {
        { Position(1, 14), Position(14, 1) },
        { Position(7, 7), Position(8, 8) },
        { Position(7, 8), Position(8, 7) }
    };
    const Position bomber_respawns[][BOMBERS_NUMBER] =
    {
        { Position(1, 1), Position(14, 14) },
        { Position(5, 3), Position(10, 12) },
        { Position(1, 14), Position(14, 1) }
    };
    const uint8_t maps[][HEIGHT][WIDTH] =
    {
        {
            {2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2},
            {2, 0, 2, 1, 1, 2, 1, 2, 1, 0, 1, 2, 1, 1, 1, 2},
            {2, 0, 0, 1, 0, 0, 0, 0, 0, 1, 2, 0, 1, 0, 1, 2},
            {2, 1, 0, 2, 1, 2, 1, 1, 1, 0, 0, 1, 2, 1, 2, 2},
            {2, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 0, 1, 2},
            {2, 1, 2, 1, 1, 0, 2, 1, 0, 1, 2, 0, 2, 2, 0, 2},
            {2, 0, 1, 2, 0, 1, 0, 0, 0, 0, 2, 1, 1, 1, 0, 2},
            {2, 1, 1, 0, 2, 2, 0, 2, 2, 0, 1, 1, 0, 0, 2, 2},
            {2, 2, 0, 0, 1, 1, 0, 2, 2, 0, 2, 2, 0, 1, 1, 2},
            {2, 0, 1, 1, 1, 2, 0, 0, 0, 0, 1, 0, 2, 1, 0, 2},
            {2, 0, 2, 2, 0, 2, 1, 0, 1, 2, 0, 1, 1, 2, 1, 2},
            {2, 1, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 0, 2},
            {2, 2, 1, 2, 1, 0, 0, 1, 1, 1, 2, 1, 2, 0, 1, 2},
            {2, 1, 0, 1, 0, 2, 1, 0, 0, 0, 0, 0, 1, 0, 0, 2},
            {2, 1, 1, 1, 2, 1, 0, 1, 2, 1, 2, 1, 1, 2, 0, 2},
            {2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}
        },
        {
            {2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2},
            {2, 2, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 2, 2},
            {2, 2, 0, 2, 1, 2, 2, 0, 2, 0, 0, 2, 0, 0, 0, 2},
            {2, 0, 0, 2, 0, 0, 2, 0, 1, 0, 2, 2, 1, 2, 1, 2},
            {2, 0, 1, 1, 0, 2, 2, 2, 1, 1, 0, 1, 0, 0, 0, 2},
            {2, 0, 2, 1, 2, 2, 0, 0, 2, 0, 2, 2, 2, 1, 1, 2},
            {2, 1, 0, 0, 1, 0, 1, 0, 2, 1, 2, 0, 0, 0, 0, 2},
            {2, 2, 0, 2, 1, 2, 2, 1, 1, 0, 2, 1, 2, 1, 2, 2},
            {2, 2, 1, 2, 1, 2, 0, 1, 1, 2, 2, 1, 2, 0, 2, 2},
            {2, 0, 0, 0, 0, 2, 1, 2, 0, 1, 0, 1, 0, 0, 1, 2},
            {2, 1, 1, 2, 2, 2, 0, 2, 0, 0, 2, 2, 1, 2, 0, 2},
            {2, 0, 0, 0, 1, 0, 1, 1, 2, 2, 2, 0, 1, 1, 0, 2},
            {2, 1, 2, 1, 2, 2, 0, 1, 0, 2, 0, 0, 2, 0, 0, 2},
            {2, 0, 0, 0, 2, 0, 0, 2, 0, 2, 2, 1, 2, 0, 2, 2},
            {2, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 2, 2},
            {2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}
        },
        {
            {2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2},
            {2, 2, 2, 0, 1, 0, 0, 0, 1, 1, 2, 2, 0, 0, 0, 2},
            {2, 2, 2, 0, 2, 2, 2, 2, 1, 0, 0, 1, 1, 2, 0, 2},
            {2, 0, 0, 1, 1, 0, 0, 0, 1, 1, 2, 0, 2, 1, 1, 2},
            {2, 0, 2, 2, 2, 1, 2, 0, 2, 2, 2, 0, 0, 0, 2, 2},
            {2, 0, 1, 1, 0, 1, 2, 1, 0, 1, 1, 1, 0, 1, 2, 2},
            {2, 2, 1, 0, 2, 2, 2, 0, 2, 0, 2, 2, 2, 0, 0, 2},
            {2, 2, 2, 0, 0, 1, 0, 1, 1, 1, 2, 1, 1, 0, 2, 2},
            {2, 2, 0, 1, 1, 2, 1, 1, 1, 0, 1, 0, 0, 2, 2, 2},
            {2, 0, 0, 2, 2, 2, 0, 2, 0, 2, 2, 2, 0, 1, 2, 2},
            {2, 2, 1, 0, 1, 1, 1, 0, 1, 2, 1, 0, 1, 1, 0, 2},
            {2, 2, 0, 0, 0, 2, 2, 2, 0, 2, 1, 2, 2, 2, 0, 2},
            {2, 1, 1, 2, 0, 2, 1, 1, 0, 0, 0, 1, 1, 0, 0, 2},
            {2, 0, 2, 1, 1, 0, 0, 1, 2, 2, 2, 2, 0, 2, 2, 2},
            {2, 0, 0, 0, 2, 2, 1, 1, 0, 0, 0, 1, 0, 2, 2, 2},
            {2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}
        }
    };
    const auto *map = maps[select];
    uint16_t paths_nr, walls_nr, boxes_nr;
    paths_nr = walls_nr = boxes_nr = 0;
    for (uint8_t y = 0; y < HEIGHT; y++)
    {
        for (uint8_t x = 0; x < WIDTH; x++)
        {
			if (map[y][x] == 1)
			{
				boxes[boxes_nr].SetPosition(x, y);
				boxes[boxes_nr].Activate();
				boxes_nr++;
			}
			else if (map[y][x] == 2)
			{
				walls[walls_nr].SetPosition(x, y);
				walls[walls_nr].Activate();
				walls_nr++;
			}
            paths[paths_nr].SetPosition(x, y);
            paths_nr++;
        }
    }
    const auto *respawn_position = bomber_respawns[select];
    bombers[0].SetPosition(respawn_position[0]);
    bombers[0].SetRespawnPosition(respawn_position[0]);
    bombers[0].Activate();
    bombers[1].SetPosition(respawn_position[1]);
    bombers[1].SetRespawnPosition(respawn_position[1]);
    bombers[1].Activate();

    const auto *bonus_bomb_positions = bonus_bombs_respawns[select];
    bonus_bombs[0].SetPosition(bonus_bomb_positions[0]);
    bonus_bombs[1].SetPosition(bonus_bomb_positions[1]);

    const auto *bonus_life_positions = bonus_lives_respawns[select];
    bonus_lives[0].SetPosition(bonus_life_positions[0]);
    bonus_lives[1].SetPosition(bonus_life_positions[1]);
    select = (select + 1) % 3;
}

void Arena::Update(float dt)
{
    for (auto &bomber : bombers)
    {
        for (auto &bonus_bomb : bonus_bombs)
        {
            if (bonus_bomb.IsActive() && bonus_bomb.GetPosition() == bomber.GetPosition())
            {
                bomber.OnBonusBombCollision();
                bonus_bomb.Deactivate();
            }
        }
        for (auto &bonus_life : bonus_lives)
        {
            if (bonus_life.IsActive() && bonus_life.GetPosition() == bomber.GetPosition())
            {
                bomber.OnBonusLifeCollision();
                bonus_life.Deactivate();
            }
        }
    }
	for (auto &e : elements)
	{
        e->Update(dt);
	}
}

void Arena::Draw(uint32_t *drawer)
{
	Element *visible[WIDTH*HEIGHT];
	for (const auto &e : elements)
	{
		if (e->IsActive())
		{
			visible[e->GetNormalizedPosition()] = e;
		}
	}
	for (const auto &ve : visible)
	{
		*drawer = (ve->Code() << 8) + ve->GetNormalizedPosition();
	}
}


uint8_t Arena::CanMoveTo(uint8_t x, uint8_t y) const
{
	for (const auto &e : elements)
	{
		if (e->IsActive() && e->GetPosition() == Position(x, y) && e->IsCollidable())
		{
			return 0;
		}
	}
	return 1;
}

void Arena::InitBomb(Bomber *bomber, Position position)
{
    for (auto &bomb : bombs)
    {
        if (!bomb.IsActive())
        {
        	bomb.SetOwner(bomber);
            bomb.Activate();
            bomb.SetPosition(position);
            break;
        }
    }
}

void Arena::InitExplosion(Position position)
{
    for (auto &e : elements)
    {
        if (e->IsActive() && e->GetPosition() == position && e->IsFireCollidable())
        {
            e->OnFireCollision();
        }
    }
    InitFire(position);
    uint8_t x = position.x, y = position.y;
    Position pos_to_check[][2] = 
    {
        { Position(x, y-1), Position(x, y-2) },
        { Position(x-1, y), Position(x-2, y) },
        { Position(x, y+1), Position(x, y+2) },
        { Position(x+1, y), Position(x+2, y) }
    };
    uint8_t place_fire, direction_finished;
    for (const auto &direction_set : pos_to_check)
    {
        place_fire = 1;
        direction_finished = 0;
        for (const auto &pos : direction_set)
        {
            for (auto &e : elements)
            {
                if (e->IsActive() && e->GetPosition() == pos && e->IsFireCollidable())
                {
                    e->OnFireCollision();
                    direction_finished = 1;
                    if (!e->IsDestructible())
                    {
                        place_fire = 0;
                        break;
                    }
                }
            }
            if (place_fire)
            {
                InitFire(pos);
            }
            if (direction_finished)
            {
                break;
            }
        }
    }
}

uint8_t Arena::IsBombAt(Position position) const
{
    for (const auto &bomb : bombs)
    {
        if (bomb.IsActive() && bomb.GetPosition() == position)
        {
            return 1;
        }
    }
    return 0;
}

uint8_t Arena::IsAnyBomberDead() const
{
    return !(bombers[0].LivesCount() && bombers[1].LivesCount());
}

Bomber Arena::GetBomber(uint8_t id) const
{
    if (id == 0 || id == 1)
        return bombers[id];
    return Bomber();
}

void Arena::InitFire(Position position)
{
    for (auto &fire : fires)
    {
        if (!fire.IsActive())
        {
            fire.Activate();
            fire.SetPosition(position);
            break;
        }
    }
}
