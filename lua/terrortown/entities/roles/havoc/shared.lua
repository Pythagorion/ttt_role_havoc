-- Icon Materials

if SERVER then
	AddCSLuaFile()

	resource.AddFile("materials/vgui/ttt/dynamic/roles/icon_havoc.vmt")
	resource.AddFile("materials/vgui/ttt/icon_havoc.vmt")
end

-- General settings

function ROLE:PreInitialize()
	self.color = Color(346, 087, 064, 255) -- rolecolour

	self.abbr = "havoc" -- Abbreviation
	self.unknownTeam = false -- No teamchat
	self.defaultTeam = TEAM_TRAITOR -- the starting team of this role.
	self.preventFindCredits = true
	self.preventKillCredits = true
	self.preventTraitorAloneCredits = true
	self.preventWin = false -- cannot win unless he switches roles
	self.scoreKillsMultiplier       = 5
	self.scoreTeamKillsMultiplier   = -16

	-- ULX convars
	self.conVarData = {
		pct = 0.17, -- necessary: percentage of getting this role selected (per player)
		maximum = 1, -- maximum amount of roles in a round
		minPlayers = 7, -- minimum amount of players until this role is able to get selected
        credits = 0, -- the starting credits of a specific role
        traitorButton = 1, -- can use traitor buttons
		shopFallback = SHOP_DISABLED,
		togglable = true, -- option to toggle a role for a client if possible (F1 menu)
		random = 33
	}
end

-- Role specific code

-- todo --
-- Roadmap sorta thing --
-- Add "cleaned" mechanic
    -- Cleaned mechanic includes| TBA
        -- Erase information when opening the body search. | TBA
            -- This includes stuff like "last seen player", "time passed till death", "Killed by weapon [weapon]", "Playername", "Playerrole" etc. | TBA
            -- add a new information panel saying "This player was cleaned by a Janitor, no information about them could be recovered." | TBA
        -- New confirmation message | TBA
            -- Do not show who the body found belonged to | TBA
            -- Do not show what role the found body had | TBA
            -- In the scoreboard, the player will show as alive//MIA(for T's) even if confirmed as cleaned.
            -- Instead show a message saying something like "[Player confirming] found a dead body. However, they were cleaned." Message in Jani color? | TBA
-- Add Cleaned mechanic triggers | TBA
    -- First trigger -> The Janitor kills a player | TBA
    -- Second trigger -> The Janitor searches an unconfirmed dead body. | TBA
    -- Add an exception for covert search [ALt+UseKey] (Should be a convar after discussing it. Can be added at a later date.)  | TBA
-- More Stuff about the Janitor | TBA
    -- The Janitor can confirm bodies that were cleaned. *showing them as cleaned, obviously*. So the first "confirm" cleans it, the second one confirms it. | TBA
    -- Add a HUD element to track how many cleaned bodies have been found | TBA
-- MISC stuff that can be added WAY later. | TBA
    -- Disable any form of revival on a cleaned corpse. (Marker//Necro and regular defis) | TBA
    -- The Amnesiac can/cannot (convar) remember a cleaned bodies role | TBA
    -- The DNA Scanner cannot take DNA from a cleaned body. | TBA
 

