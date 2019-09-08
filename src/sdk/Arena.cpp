#include "Arena.h"
#include "PRNG.h"

const uint8_t PATH_CODE = 0,
              BOX_CODE  = 1,
              WALL_CODE = 2,
              BOMB_CODE = 3,
              FIRE_CODE = 4,
              PLR1_CODE = 5,
              PLR2_CODE = 6;

Arena::Arena(uint8_t *input0, uint8_t *input1)
{
    uint16_t i;
    for (i = 0; i < PATHS_NUMBER; i++)
    {
        paths[i].SetCode(PATH_CODE);
        elements[i] = &paths[i];
    }
    for (i = 0; i < WALLS_NUMBER; i++)
    {
        walls[i].SetCode(WALL_CODE);
        elements[PATHS_NUMBER+i] = &walls[i];
    }
    for (i = 0; i < BOXES_NUMBER; i++)
    {
        boxes[i].SetCode(BOX_CODE);
        elements[PATHS_NUMBER+WALLS_NUMBER+i] = &boxes[i];
    }
    for (i = 0; i < BOMBS_NUMBER; i++)
    {
        bombs[i].SetCode(BOMB_CODE);
        elements[PATHS_NUMBER+WALLS_NUMBER+BOXES_NUMBER+i] = &bombs[i];
    }
    for (i = 0; i < BOMBERS_NUMBER; i++)
    {
        elements[PATHS_NUMBER+WALLS_NUMBER+BOXES_NUMBER+BOMBS_NUMBER+i] = &bombers[i];
    }
    for (i = 0; i < FIRES_NUMBER; i++)
    {
        fires[i].SetCode(FIRE_CODE);
        elements[PATHS_NUMBER+WALLS_NUMBER+BOXES_NUMBER+BOMBS_NUMBER+BOMBERS_NUMBER+i] = &fires[i];
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
    for (auto &e : elements)
    {
        e->Init();
    }
    const Position respawns[][BOMBERS_NUMBER] =
    {
        { Position(1, 1), Position(14, 14) },
        { Position(5, 3), Position(10, 12) }
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
        }
    };
    uint8_t select = PRNG::PRN(0, 1);
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
    const auto *respawn = respawns[select];
    bombers[0].SetPosition(respawn[0]);
    bombers[0].SetRespawnPosition(respawn[0]);
    bombers[0].Activate();
    bombers[1].SetPosition(respawn[1]);
    bombers[1].SetRespawnPosition(respawn[1]);
    bombers[1].Activate();
}

void Arena::Update(float dt)
{
	for (auto &e : elements)
	{
        e->Update(dt);
	}
}

void Arena::Draw(uint32_t *drawer)
{
	Element *visible[WIDTH*HEIGHT];
	for (auto &e : elements)
	{
		if (e->IsActive())
		{
			visible[e->GetNormalizedPosition()] = e;
		}
	}
	for (auto &ve : visible)
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
    uint8_t finish_checking = 0;
    for (auto &e : elements)
    {
        if (e->IsActive() && e->GetPosition() == position && e->IsFireCollidable())
        {
            e->OnFireCollision();
            finish_checking = 1;
        }
    }
    InitFire(position);
    if (finish_checking)
    {
        return;
    }

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
