#include "ExplosionPart.h"
#include "Bomber.h"

ExplosionPart::ExplosionPart() : Element(0, 0, Element::Type::EXPL, Element::State::NOT_ACTIVE)
{

}

uint8_t ExplosionPart::CollidesWithElement(const Element &element) const
{
	auto el_pos = element.GetPosition();
	if (element.IsCollidable() && element.IsActive() && el_pos == position)
	{
		return 1;
	}
	return 0;
}
