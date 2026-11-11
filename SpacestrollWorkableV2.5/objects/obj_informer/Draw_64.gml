if reading == 0
{
draw_set_font(bold_font);
draw_set_halign(fa_left);
text_x = x - 375;
text_y = y - 400;
draw_text_ext_transformed_colour(text_x, text_y, "The following is a chart displaying what defense type each attack type is effective against and ineffective against:", 20, 405, 1.35, 1.35, 0, c_black, c_black, c_black, c_black, 1);

draw_set_font(norm_font);
text_x = x - 350;
text_y = y - 300;
draw_text_transformed_colour(text_x, text_y, "Attack Type:             Effective Agnst.           Ineffective Agnst.", 1.15, 1.15, 0, c_black, c_black, c_black, c_black, 1);
text_x = x - 335;
text_y = y - 300;
for (var i = 1; i < 9; i++)
{
	switch(i)
	{
		case 1:
		d_text = "Lasers";
		break;
		case 2:
		d_text = "Missiles";
		break;
		case 3:
		d_text = "Beams";
		break;
		case 4:
		d_text = "Jolts";
		break;
		case 5:
		d_text = "Blazes";
		break;
		case 6:
		d_text = "Frost";
		break;
		case 7:
		d_text = "Ram";
		break;
		case 8:
		d_text = "Acid Flash";
		break;
	}
	draw_text_transformed_colour(text_x, text_y + (i * 35), d_text, 1.15, 1.15, 0, c_black, c_black, c_black, c_black, 1);
}
text_x = x - 175;
text_y = y - 300;
for (var i = 1; i < 9; i++)
{
	switch(i)
	{
		case 1:
		d_text = "Energy Shield";
		break;
		case 2:
		d_text = "Evasion";
		break;
		case 3:
		d_text = "Armor";
		break;
		case 4:
		d_text = "Deflectors";
		break;
		case 5:
		d_text = "Absorb. Plates";
		break;
		case 6:
		d_text = "Plasma Wall";
		break;
		case 7:
		d_text = "Chem. Barrier";
		break;
		case 8:
		d_text = "Decoys";
		break;
	}
	draw_text_transformed_colour(text_x, text_y + (i * 35), d_text, 1.15, 1.15, 0, c_black, c_black, c_black, c_black, 1);
}

text_x = x + 25;
text_y = y - 300;
for (var i = 1; i < 9; i++)
{
	switch(i)
	{
		case 1:
		d_text = "Evasion";
		break;
		case 2:
		d_text = "Decoys";
		break;
		case 3:
		d_text = "Energy Shield";
		break;
		case 4:
		d_text = "Absorb. Plates";
		break;
		case 5:
		d_text = "Plasma Wall";
		break;
		case 6:
		d_text = "Deflectors";
		break;
		case 7:
		d_text = "Armor";
		break;
		case 8:
		d_text = "Chem. Barrier";
		break;
	}
	draw_text_transformed_colour(text_x, text_y + (i * 35), d_text, 1.15, 1.15, 0, c_black, c_black, c_black, c_black, 1);
}

draw_set_font(bold_font);
text_x = x - 375;
text_y = y + 25;
draw_text_ext_transformed_colour(text_x, text_y, "The following describes how each of the 4 defense types performs:", 20, 405, 1.35, 1.35, 0, c_black, c_black, c_black, c_black, 1);


text_x = x - 390;
text_y = y + 45;
for (var i = 1; i < 16; i++)
{
	switch(i)
	{
		case 1:
		draw_set_font(bold_font);
		d_text = "All or Nothing      [Evasion & Decoys]";
		i += 1;
		break;
		case 3:
		draw_set_font(norm_font);
		d_text = "If the incoming damage is less than the total defense, damage is avoided, otherwise it is reduced by 1, down to 0.";
		break;
		case 4:
		draw_set_font(bold_font);
		d_text = "Damage Resistance      [Armor & Absorbtion Plates]";
		i += 2;
		break;
		case 7:
		draw_set_font(norm_font);
		d_text = "The incoming damage is reduced by the total defense stat, but cannot be reduced bellow 1.";
		break;
		case 8:
		draw_set_font(bold_font);
		d_text = "Non-Resilent Protection      [Energy Shield & Deflectors]";
		i += 2;
		break;
		case 11:
		draw_set_font(norm_font);
		d_text = "A regenerating pool of 'health' that provides no additional protection against statuses.";
		break;
		case 12:
		draw_set_font(bold_font);
		d_text = "Resilient Protection      [Plasma Wall & Chemical Barrier]";
		i += 2;
		break;
		case 15:
		draw_set_font(norm_font);
		d_text = "A regenerating pool of 'health' that provides protection against statuses when it fully blocks damage. Tends to be less plentiful.";
		break;
	}
	draw_text_ext_transformed_colour(text_x, text_y + (i * 20), d_text, 20, 500, 1.15, 1.15, 0, c_black, c_black, c_black, c_black, 1);
}
draw_set_font(norm_font);
}
if reading == 1 {
draw_set_font(bold_font);
draw_set_halign(fa_left);
text_x = x - 375;
text_y = y - 400;
draw_text_ext_transformed_colour(text_x, text_y, "The following describes how each of the 8 attack types performs:", 20, 405, 1.35, 1.35, 0, c_black, c_black, c_black, c_black, 1);
draw_set_font(bold_font);
text_x = x - 385;
text_y = y - 400;
for (var i = 1; i < 9; i++)
{
	switch(i)
	{
		case 1:
		d_text = "Lasers";
		break;
		case 2:
		d_text = "Missiles";
		break;
		case 3:
		d_text = "Beams";
		break;
		case 4:
		d_text = "Jolts";
		break;
		case 5:
		d_text = "Blazes";
		break;
		case 6:
		d_text = "Frost";
		break;
		case 7:
		d_text = "Ram";
		break;
		case 8:
		d_text = "Acid Flash";
		break;
	}
	draw_text_transformed_colour(text_x, text_y + (i * 85), d_text, 1.25, 1.25, 0, c_black, c_black, c_black, c_black, 1);
}
draw_set_font(norm_font);
text_x = x - 385;
text_y = y - 375;
d_text = "Range: ";
for (var i = 1; i < 9; i++)
{
	d_text = "Range: ";
	switch(i)
	{
		case 1:
		d_text += "4";
		break;
		case 2:
		d_text += "2 [x3]";
		break;
		case 3:
		d_text += "Infinity";
		break;
		case 4:
		d_text += "4";
		break;
		case 5:
		d_text += "4";
		break;
		case 6:
		d_text += "4";
		break;
		case 7:
		d_text += "*Variable* [2 - 4]";
		break;
		case 8:
		d_text += "4";
		break;
	}
	draw_text_transformed_colour(text_x, text_y + (i * 85), d_text, 1.15, 1.15, 0, c_black, c_black, c_black, c_black, 1);
}
draw_set_font(norm_font);
text_x = x - 385;
text_y = y - 355;
d_text = "Special: ";
for (var i = 1; i < 9; i++)
{
	d_text = "Special: ";
	switch(i)
	{
		case 1:
		d_text += "Only costs 1 Ship Action to attack.";
		break;
		case 2:
		d_text += "Limited range, but can target ships adjacent lanes.";
		break;
		case 3:
		d_text += "Stretches to whole board, hitting all ships in the lane, including your own.";
		break;
		case 4:
		d_text += "Inflicts Stun, which reduces available actions next turn. It is removed after activation.";
		break;
		case 5:
		d_text += "Inflicts Burn, which deals damage equal to its total. Reduced by 1 at turn end.";
		break;
		case 6:
		d_text += "Inflicts Freeze, which reduces the ability to move. Differs between player and enemy ships.";
		break;
		case 7:
		d_text += "Variable Attack Distance; Moves attacking ship forward, and knocksback defending ship.";
		break;
		case 8:
		d_text += "Inflicts Corrode, which permanently reduces defense/defense regen.";
		break;
	}
	draw_text_ext_transformed_colour(text_x, text_y + (i * 85), d_text, 15, 450, 1.15, 1.15, 0, c_black, c_black, c_black, c_black, 1);
}
}
if reading == 2 {
draw_set_font(norm_font);
draw_set_halign(fa_left);
text_x = x - 375;
text_y = y - 400;
draw_text_ext_transformed_colour(text_x, text_y, "The goal of the game is to get your ships to the opposite end of the board, and prevent the enemy ships from doing the same.", 20, 405, 1.25, 1.25, 0, c_black, c_black, c_black, c_black, 1);

text_x = x - 375;
text_y = y - 320;
draw_text_ext_transformed_colour(text_x, text_y, "To play ships, you have to select a ship you can afford, and select an available pilot for said ship. 3 of your immediately available pilots are 'elite' pilots, who are more capable than your standard pilot.", 20, 405, 1.25, 1.25, 0, c_black, c_black, c_black, c_black, 1);

text_x = x - 375;
text_y = y - 215;
draw_text_ext_transformed_colour(text_x, text_y, "There are 4 ways to earn points (to play ships and buy upgrdes): Scoring Ships by bringing them to the end of the board (4 per, max 20 a round), destroying enemy ships (2 per, max 10 a round), having inactive but available pilots (1 per reserve, 2 per elite), and having left over actions (3* per leftover actions). You gain more actions after every turn, up to a maximum.", 20, 405, 1.25, 1.25, 0, c_black, c_black, c_black, c_black, 1);

text_x = x - 350;
text_y = y - 50;
draw_s = spr_upgrade_1_temp;

for (var i = 0; i < 5; i++)
{
	switch(i)
	{
		case 0:
		draw_s = spr_upgrade_1_temp;
		draw_sprite_ext(draw_s, 0, text_x, text_y + 55, 0.85, 0.85, 0, c_white, 1);
		break;
		case 1:
		draw_s = spr_upgrade_2_temp;
		draw_sprite_ext(draw_s, 0, text_x, text_y + 140, 0.85, 0.85, 0, c_white, 1);
		break;
		case 2:
		draw_s = spr_upgrade_3_temp;
		draw_sprite_ext(draw_s, 0, text_x, text_y + 225, 0.85, 0.85, 0, c_white, 1);
		break;
		case 3:
		draw_s = spr_powerup_1_temp;
		draw_sprite_ext(draw_s, 0, text_x, text_y + 310, 0.85, 0.85, 0, c_white, 1);
		break;
		case 4:
		draw_s = spr_powerup_2_temp;
		draw_sprite_ext(draw_s, 0, text_x, text_y + 395, 0.85, 0.85, 0, c_white, 1);
		break;
	}
	//draw_sprite_ext(draw_s, 0, text_x, text_y + (165), 0.85, 0.85, 0, c_white, 1);
}
text_x = x - 300;
text_y = y - 35;
d_text = ""
for (var i = 0; i < 5; i++)
{
	switch(i)
	{
		case 0:
		d_text = "This upgrade provides you with the ability to earn points passively at the end of each round, and improves point sometimes improves point earnings in discussed categories. [LVL1 - 25, LVL2 - 40, LVL3 - 55, LVL4 - 70, LVL5 - 85]";
		break;
		case 1:
		d_text = "This upgrade increases your maximum (per turn) actions to 12, 15, 17, 20, and 25, respectively.                                          [LVL1 - 20, LVL2 - 30, LVL3 - 20, LVL4 - 30, LVL5 - 50]";
		break;
		case 2:
		d_text = "This upgrade always immediately decreases wait time for unavailable pilots, and flips between permanently decreasing future wait time and improve certain bonuses. [LVL1 - 15, LVL2 - 35, LVL3 - 45, LVL4 - 65, LVL5 - 75]";
		break;
		case 3:
		d_text = "This is a powerup, which can be repeatedly bought, at an increasing price, starting at 10 points, and increasing by 15 each time. This is a railshell powerup that deals 5 damage to any 1 enemy ship you target.";
		break;
		case 4:
		d_text = "This is a powerup, which can be repeatedly bought, at an increasing price, starting at 15 points, and increasing by 10 each time. This is a repair drone powerup that heals 3 hp to any 1 ship of yours you target.";
		break;
	}
	draw_text_ext_transformed_colour(text_x, text_y + (i * 85), d_text, 15, 450, 1, 1, 0, c_black, c_black, c_black, c_black, 1);
}
}

