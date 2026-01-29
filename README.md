# Q3DN3D_MAP
Duke Nukem 3d Hollywood Holocaust map for Quake 3 Arena
[Quick tour video](https://www.youtube.com/watch?v=ZudiGftVDiE)

## Requirements
- Quake 3 Arena
- ExcessivePlus mod (recommended)

## Installation
1. Download the PK3 from the Releases page.
2. Copy the `.pk3` file to:
   `Quake3/baseq3/`
3. Start Quake 3.
4. Load ex+ mod.
5. Load the map:
   `/map Q3DN3D`

## Notes
Keep in mind that I was a beginner at map creation and learned many things only near the end of the process, so editing the map can be quite chaotic.

* This map was made to be played with the ExcessivePlus mod.
* The focus was on preserving the original look of the map by using the same textures.
* The map is static.
* There is no lighting configuration in the map.
* There are no items in the map, except for the flags when playing CTF.
* Music is intentionally from Q3, not DN.
* You will find some clipping brushes here and there.
* This map was created using NetRadiant. You must edit scripts\shaderlist.txt and add _dnShaders.shader for the map's shaders to appear.
* Map compiled only with -vis (no light)

File AllTextures.zip contains all the TGA textures used in DN3D game.
These textures has no transparency, except some used in that map. I used Krita to change the color black to transparent.
After saving the TGA on Krita, you must convert it using XnConvert, otherwise the image wll be upsidown.

If you want to play DN3D on Windows 11 I recommend [HDuke](https://hduke.neocities.org/)
