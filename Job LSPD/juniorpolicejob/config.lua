Config                            = {}

Config.DrawDistance               = 25.0
Config.Type = 25

Config.EnablePlayerManagement     = true 
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- laisser "true" si vous utilisez esx_identity
Config.EnableNonFreemodePeds      = true -- laisser "true" si vous voulez des peds custom (https://docs.fivem.net/docs/game-references/ped-models/)
Config.EnableLicenses             = true -- laisser "true" si vous utilisez esx_license

Config.EnableHandcuffTimer        = true -- Activer la minuterie des menottes?
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- Afficher un point blanc pour les autres policiers

Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.WhitelistedCops = {
	'police'
}
-- Arme à configurer selon votre serveur (https://wiki.rage.mp/index.php?title=Weapons)
Config.armurerie = {
	{nom = "Pistolet", arme = "weapon_pistol"},
}

Config.arm = {
	{nom = "Pistolet", arme = "weapon_pistol"},
	{nom = "Fusil à pompe", arme = "weapon_pumpshotgun_mk2"},
}


Config.armi = {
	{nom = "Pistolet", arme = "weapon_pistol"},
	{nom = "Fusil à pompe", arme = "weapon_pumpshotgun_mk2"},
	{nom = "M4", arme = "weapon_carbinerifle"},
}

-- Point de selectio de véhicule, hélico et armurerie
Config.pos = {
	garagevoiture = {
		position = {x = 456.85, y = -1017.27, z = 28.39}
	},
	garageheli = {
		position = {x = 448.69, y = -981.65, z = 43.69}
	},
	armurerie = {
		position = {x = 452.32, y = -979.94, z = 30.68} 
	}
}
-- Point de spawn de véhicule
Config.spawn = {

	spawnvoiture = {
		position = {x = 448.55, y = -1018.01, z = 28.62, h = 87.916}
	},
	spawnheli = {
		position = {x = 448.69, y = -981.65, z = 43.69, h = 87.916}
	},
}
