@0xb414e779dd33e5df;

struct Item {
    quantity @0 :Int64;
    level @1 :Int64;
    levelKnown @2 :Bool;
    cursed @3 :Bool;
    cursedKnown @4 :Bool;
    quickslot @5 :Bool;
    union {
        amulet @6 :Void;
        ankh @32 :Ankh;
        armorKit @8 :Void;
        armor @9:Armor;
        bag @10 :Bag;
        bomb @34 :Void;
        corpseDust @11 :Void;
        darkGold @12 :Void;
        dewdrop @13 :Void;
        dewVial @14 :DewVial;
        dwarfToken @16 :Void;
        food @17 :Food;
        gold @18 :Gold;
        heap @19 :Heap;
        honeypot @35 :Honeypot;
        key @20 :Key;
        potion @22 :Potion;
        ratSkull @23 :Void;
        ring @24 :Ring;
        seed @25 :Seed;
        scroll @26 :Scroll;
        stylus @27 :Void;
        tomeOfMastery @28 :Void;
        torch @29 :Void;
        wand @30 :Wand;
        weapon @31 :Weapon;
        weighstone @33 :Void;

        deprecatedAnkh @7 :Void; # Promoted - [v0.1.0, v0.1.1a)
        deprecatedDriedRose @15 :Void; # Reworked into artifact - v0.2.3f
        deprecatedLloydsBeacon @21 :DeprecatedLloydsBeacon; # Made into an artifact - v0.2.4d
    }

    struct Ankh {
        blessed @0 :Bool;
    }

    struct Artifact {
        image @0 :Int64;
        exp @1 :Int64;
        charge @2 :Int64;
        partialCharge @3 :Float64;
        union {
            alchemistsToolkit @11 :AlchemistsToolkit;
            capeOfThorns @4 :Void;
            chaliceOfBlood @5 :Void;
            cloakOfShadows @6 :CloakOfShadows;
            driedRose @12 :DriedRose;
            hornOfPlenty @7 :Void;
            lloydsBeacon @15 :LloydsBeacon;
            masterThievesArmband @8 :Void;
            sandalsOfNature @9 :SandalsOfNature;
            talismanOfForesight @10 :Void;
            timekeepersHourglass @13 :TimekeepersHourglass;
            unstableSpellbook @14 :UnstableSpellbook;
        }

        struct AlchemistsToolkit {
            numWrongPlace @0 :Int64;
            numRight @1 :Int64;
            seedsToPotion @2 :Int64;
            combination @3 :List(Item); # These should be potions
            currentGuess @4 :List(Item);
            bestGuess @5 :List(Item);
        }

        struct DriedRose {
            talkedTo @0 :Bool;
            firstSummon @1 :Bool;
            spawned @2 :Bool;
            droppedPetals @3 :Int64;
        }

        struct CloakOfShadows {
            chargeCap @0 :Int64;
            stealthed @1 :Bool;
            cooldown @2 :Int64;
        }

        struct LloydsBeacon {
            returnDepth @0 :Int64;
            returnPosition @1 :Int64;
        }

        struct SandalsOfNature {
            name @0 :Text;
            seeds @1 :List(Item);
        }

        struct TimekeepersHourglass {
            chargeCap @0 :Int64;
            sandBags @1 :Int64;
        }

        struct UnstableSpellbook {
            chargeCap @0 :Int64;
            scrolls @1 :List(Item); # Items should be scrolls
        }
    }
    
    struct Armor {
        glyph :union {
            none @0 :Void;
            some @1 :Glyph;
        }
        union {
            cloth @2 :Void;
            leather @3 :Void;
            mail @4 :Void;
            scale @5 :Void;
            plate @6 :Void;
            heroic @7 :Heroic;
        }

        struct Glyph {
            union {
                affection @0 :Void;
                antiEntropy @1 :Void;
                bounce @2 :Void;
                displacement @3 :Void;
                entanglement @4 :Void;
                metabolism @5 :Void;
                multiplicity @6 :Void;
                potential @7 :Void;
                stench @8 :Void;
                viscosity @9 :Void;
            }
        }

        struct Heroic {
            union {
                warrior @0 :Void;
                mage @1 :Void;
                rogue @2 :Void;
                huntress @3 :Void;
            }
        }
    }

    struct Bag {
        items @0 :List(Item);
        kind :union {
            potionBandolier @4 :Void;
            scrollHolder @1 :Void;
            seedPouch @2 :Void;
            wandHolster @3 :Void;
        }
    }

    struct DewVial {
        volume @0 :Int64;
    }

    struct Food {
        union {
            blandfruit @6 :Blandfruit;
            chargrilledMeat @0 :Void;
            frozenCarpaccio @1 :Void;
            mysteryMeat @2 :Void;
            pasty @3 :Void;
            ration @4 :Void;
            overpricedRation @5 :Void;
        }

        struct Blandfruit {
            union {
                health @0 :Void;
                power @1 :Void;
                paralyze @2 :Void;
                invisi @3 :Void;
                flame @4 :Void;
                frost @5 :Void;
                vision @6 :Void;
                toxic @7 :Void;
            }
        }
    }

    struct Gold {
        quantity @0 :Int64;
        # Quantity is already a item property. Why is this one necessary?
    }

    struct Honeypot {
        union {
            standard @0 :Void;
            shattered @1 :Shattered;
        }

        struct Shattered {
            myBee @0 :Int64;
            beeDepth @1 :Int64;
        }
    }

    struct Key {
        depth @0 :Int64;
        union {
            iron @1 :Void;
            golden @2 :Void;
            skeleton @3 :Void;
        }
    }

    struct Potion {
        union {
            experience @0 :Void;
            frost @1 :Void;
            healing @2 :Void;
            invisibility @3 :Void;
            levitation @4 :Void;
            liquidFlame @5 :Void;
            might @6 :Void;
            mindVision @7 :Void;
            paralyticGas @8 :Void;
            purity @9 :Void;
            strength @10 :Void;
            toxicGas @11 :Void;
        }
    }

    struct Ring {
        union {
            accuracy @0 :Void;
            detection @1 :Void;
            elements @2 :Void;
            evasion @3 :Void;
            furor @14 :Void;
            force @15 :Void;
            haste @5 :Void;
            might @17 :Void;
            power @8 :Void;
            sharpshooting @12 :Void;
            tenacity @16 :Void;
            wealth @13 :Void;

            deprecatedHaggler @4 :Void; # Replaced by Master Thieves Armband - [v0.1.0, v0.2.0c)
            deprecatedHerbalism @6 :Void; # Replaced by Sandals of Nature - [v0.1.0, v0.2.0c)
            deprecatedMending @7 :Void; # Replaced by Chalice of Blood - [v0.1.0, v0.2.0c)
            deprecatedSatiety @9 :Void; # Replaced by Horn of Plenty - [v0.1.0, v0.2.0c)
            deprecatedShadows @10 :Void; # Replaced by Cloak of Shadows - [v0.1.0, v0.2.0c)
            deprecatedThorns @11 :Void; # Replaced by Cape of Thorns - [v0.1.0, v0.2.0c)
        }
    }

    struct Seed {
        union {
            blindweed @0 :Void;
            dreamfoil @7 :Void;
            earthroot @1 :Void;
            fadeleaf @2 :Void;
            firebloom @3 :Void;
            icecap @4 :Void;
            sorrowmoss @5 :Void;
            stormvine @8 :Void;
            sungrass @6 :Void;
        }
    }

    struct Scroll {
        union {
            identity @0 :Void;
            lullaby @1 :Void;
            magicalInfusion @11 :Void;
            magicMapping @2 :Void;
            mirrorImage @3 :Void;
            psionicBlast @4 :Void;
            rage @5 :Void;
            recharging @6 :Void;
            removeCurse @7 :Void;
            teleportation @8 :Void;
            terror @9 :Void;
            upgrade @10 :Void;
        }
    }

    struct Wand {
        maxCharges @0 :Int64;
        currentCharges @1 :Int64;
        currentChargesKnown @2 :Bool;
        union {
            amok @3 :Void;
            avalanche @4 :Void;
            blink @5 :Void;
            disintegration @6 :Void;
            firebolt @7 :Void;
            flock @8 :Void;
            lightning @9 :Void;
            magicMissile @10 :Void;
            poison @11 :Void;
            regrowth @12 :Void;
            slowness @13 :Void;
            telekineses @14 :Void;
            teleportation @15 :Void;
        }
    }

    struct Weapon {
        enchantment :union {
            none @0 :Void;
            some @1 :Enchantment;
        }
        imbue :union {
            none @4 :Void;
            some @5 :Imbue;
        }
        union {
            melee @2 :Melee;
            throwing @3 :Thrown;
        }

        struct Enchantment {
            union {
                fire @0 :Void;
                poison @1 :Void;
                death @2 :Void;
                paralysis @3 :Void;
                leech @4 :Void;
                slow @5 :Void;
                swing @6 :Void;
                piercing @7 :Void;
                instability @8 :Void;
                horror @9 :Void;
                luck @10 :Void;
            }
        }

        struct Imbue {
            union {
                light @0 :Void;
                heavy @1 :Void;
            }
        }

        struct Melee {
            union {
                battleAxe @0 :Void;
                dagger @1 :Void;
                glaive @2 :Void;
                knuckles @3 :Void;
                longsword @4 :Void;
                mace @5 :Void;
                quarterstaff @6 :Void;
                shortsword @7 :Void;
                spear @8 :Void;
                sword @9 :Void;
                warHammer @10 :Void;
            }
        }

        struct Thrown {
            union {
                boomerang @0 :Void;
                dart @1 :Dart;
                javelin @2 :Void;
                shuriken @3 :Void;
                tomahawk @4 :Void;
            }

            struct Dart {
                union {
                    curare @0 :Void;
                    incindiary @1 :Void;
                }
            }
        }
    }

    struct DeprecatedLloydsBeacon @0xf4e7255aed818c4e {
        returnDepth @0 :Int64;
        returnPosition @1 :Int64;
    }
}

struct Heap {
    position @0 :Int64;
    items @1 :List(Item);
    union {
        heap @2 :Void;
        forSale @3 :Void;
        chest @4 :Void;
        lockedChest @5 :Void;
        crystalChest @6 :Void;
        tomb @7 :Void;
        skeleton @8 :Void;
    }
}
