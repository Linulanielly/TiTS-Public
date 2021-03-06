package classes.ShittyShips.ShittyShipGear.GunTurrets
{
	import classes.ItemSlotClass;
	import classes.GLOBAL;
	import classes.GameData.TooltipManager;
	import classes.StringUtil;
	import classes.Engine.Combat.DamageTypes.TypeCollection;
	import classes.Engine.Combat.DamageTypes.DamageFlag;
	
	public class EMTurret extends ItemSlotClass
	{
		//Level 1 (Common) ship weapon
		//constructor
		public function EMTurret()
		{
			this._latestVersion = 1;

			this.quantity = 1;
			this.stackSize = 1;
			this.type = GLOBAL.RANGED_WEAPON;
			
			//Used on inventory buttons
			this.shortName = "EMTurret";
			
			//Regular name
			this.longName = "EM turret"
			
			TooltipManager.addFullName(this.shortName, StringUtil.toTitleCase(this.longName));
			
			//Longass shit, not sure what used for yet.
			this.description = "an EM turret";
			
			//Displayed on tooltips during mouseovers
			this.tooltip = "As a turret, this requires a crew member to fire it.\n\nDespite its name, the EM Cannon does not fire bolts of electromagnetic energy across the nonconductive void of space. It relies on the same types of primitive chemical propulsion that have flung lead across battlefields for generations. The difference is in the payloads: EM shells are always fired in pairs, one containing a positive charge and the other negative. Contact with anything, even a shield, is sufficient to create damaging electrical surges.";
			this.attackVerb = "shoot";
			attackNoun = "bullet";
			
			TooltipManager.addTooltip(this.shortName, this.tooltip);
			
			//Information
			this.basePrice = 2250;
					
			baseDamage.electric.damageValue = 150;
			baseDamage.addFlag(DamageFlag.BULLET);
			//baseDamage.addFlag(DamageFlag.NO_CRIT);
			//baseDamage.addFlag(DamageFlag.LASER);
			baseDamage.addFlag(DamageFlag.ENERGY_WEAPON);
			addFlag(GLOBAL.ITEM_FLAG_TURRET);
			addFlag(GLOBAL.ITEM_FLAG_QUADSHOT);
			addFlag(GLOBAL.ITEM_FLAG_ENERGY_WEAPON);
			addFlag(GLOBAL.ITEM_FLAG_SHIP_EQUIPMENT);
			
			//addFlag(GLOBAL.ITEM_FLAG_POWER_ARMOR);
			//addFlag(GLOBAL.ITEM_FLAG_EFFECT_FLURRYBONUS);
			
			//this.addFlag(GLOBAL.ITEM_FLAG_SHOTGUN_WEAPON);
			this.attack = 0;
			this.defense = 0;
			this.shieldDefense = 92;
			this.shields = 0;
			this.sexiness = 0;
			this.critBonus = 0;
			this.evasion = 0;
			this.fortification = 0;

			this.version = _latestVersion;
		}
	}
}
