//find;

ACMD(do_stat_minus)

//add above;

ACMD(do_licycitsystem)
{
	if (!ch->IsPC())
	{
		return;
	}
	ch->ChatPacket(CHAT_TYPE_COMMAND, "citsystem");
}