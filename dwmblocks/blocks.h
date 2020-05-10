//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", 	"~/.config/dwmblocks/wifi.sh",	30},
	
	{"", "~/.config/dwmblocks/memory.sh",	30,		0},

	{"", "~/.config/dwmblocks/volume.sh",						60,		10},

	{"", "~/.config/dwmblocks/brightness.sh",					120,		11},
	
	{"", "~/.config/dwmblocks/battery.sh",					600,		0},

	{"", "~/.config/dwmblocks/date.sh",						3,		1},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = ' ';
