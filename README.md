# fivem-noradio
This is a very simple resource to modify vehicle radio behavior, created because so many people seem to ask for it and have problems implementing it themselves.

This resource offers three configurable options surrounding the in-car radio:
1. Completely disable the radio in all vehicles
2. Set the radio station to "Off" by default when entering a vehicle
3. Force a specific radio station when entering a vehicle

## Installation
1. [Download](https://github.com/oghelios/fivem-noradio/archive/refs/heads/main.zip) the resource from this repo
2. Unzip the file and drop fivem-noradio in your server's resources folder
3. Modify the fivem-noradio/config.lua file to meet your server's requirements
4. Add `ensure fivem-noradio` to your server.cfg file
5. Refresh & start the resource or restart your entire server if that's your kinda thing

## Configuration
The config file only has 3 options, which are fully commented. You should be able to figure it out:

```lua
Config = {

    DefaultOff = false, -- Set to TRUE to set the radio to "Off" when entering a vehicle

    DisableRadio = false, -- Set to TRUE to completely disable the radio. This setting overrides all other options

    ForcedStation = "RADIO_03_HIPHOP_NEW", -- Set a specific station name or leave empty ("") to disable. Will be overridden if either option above is set to "true"
                                           -- List of radio station names: https://docs.fivem.net/docs/game-references/radiostations/

}
```
For reference, a complete listing of all radio station names can be found [here](https://docs.fivem.net/docs/game-references/radiostations/)
