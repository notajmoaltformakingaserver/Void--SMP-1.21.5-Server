 Void SMP — Eaglercraft 1.21.10 Server Template

> Created and maintained by **Jmo_fr** | Originally based on work by **wadwdwd1** and **atypicalpotato**

---

## What This Is

This is a **fully configured Minecraft server template** for an Eaglercraft-compatible server, based on Jmo's personal server **"Void SMP"**. It is designed to run entirely inside **GitHub Codespaces** with no local setup required.

- This is **not a fresh server** — worlds, plugins, and configurations are already in place
- The server runs on **Minecraft 1.21.10** (updated from 1.21.5)
- Online mode is **OFF** to support cracked and Eaglercraft clients
- The server is primarily a **creative/SMP hybrid** server

---

## How to Start

### Requirements
- A GitHub account
- Access to GitHub Codespaces

### Steps

1. Open this repository in **GitHub Codespaces**
2. Run the startup script:
   ```bash
   bash startup.sh
   ```
3. Set **both** forwarded ports to **Public** when prompted
4. Copy the forwarded link for **port 25567**
5. Replace `https://` with `wss://` — this is your **server IP**
6. The original `https://` link can be opened in a new tab to access the web client directly

### Port Reference
| Port  | Purpose |
|-------|---------|
| 25565 | Internal Minecraft port |
| 25567 | Eaglercraft / WebSocket client port |

> If port 25567 is not set to **Public**, players will not be able to connect.

---

## Startup Time

The server takes approximately **100–120 seconds** to fully start due to the number of plugins loaded. This is normal — just wait for the console to finish before trying to connect.

---

## Server Structure

```
/
├── server/       ← Main gameplay server (Void SMP)
├── velocity/     ← Proxy / connection handler
├── limbo/        ← Limbo server for login handling
├── startup.sh    ← Run this to start everything
└── Dockerfile
```

> **Do not modify the `velocity` or `limbo` folders** unless you know what you're doing. Misconfiguring these will break player connections entirely.

---

## Plugins

All plugins are located in `server/plugins/`. Do not remove plugins without understanding their dependencies.

### Core / Essentials
| Plugin | Description |
|--------|-------------|
| EssentialsX | Core server commands and utilities |
| EssentialsXChat | Chat formatting and rank integration |
| EssentialsXGeoIP | Country-based player lookups |
| EssentialsXProtect | Basic griefing protection |
| EssentialsXSpawn | Spawn point management |
| EssentialsXSelectors | Command selectors (@s, @p, etc.) |
| Vault | Economy and permissions API bridge |
| LuckPerms | Permissions and rank management |
| ProtocolLib | Packet-level plugin support (required by many plugins) |
| PacketEvents | Networking utility library |
| PlaceholderAPI | Placeholder support across plugins |
| bStats | Plugin metrics (auto-managed, do not delete) |
| NBTAPI | NBT data API (required dependency) |
| WolfyUtilities | Utility library for CustomCrafting |

### Economy / Progression
| Plugin | Description |
|--------|-------------|
| EconomyShopGUI | GUI-based item shop system |
| mcMMO | RPG-style skill leveling system |

### World / Building / Claims
| Plugin | Description |
|--------|-------------|
| WorldEdit | World editing tools |
| FastAsyncWorldEdit (FAWE) | High-performance WorldEdit alternative |
| WorldGuard | Region protection and flags |
| Multiverse-Core | Multiple world support |
| Multiverse-Portals | Inter-world portal creation |
| PlotSquared | Player plot and land management |
| CustomCrafting | Custom crafting recipe support |

### NPCs / Interaction
| Plugin | Description |
|--------|-------------|
| Citizens | NPC framework |
| Sentinel | Combat AI traits for NPCs |
| LibsDisguises | Entity disguise system |
| InteractionVisualizer | Visualizes player interactions |
| InteractiveChat | Enhanced interactive chat features |
| GSit | Allows players to sit on blocks/chairs |
| GrapplingHook | Grappling hook item mechanic |

### Combat / Abilities
| Plugin | Description |
|--------|-------------|
| CrackShot | Gun-style custom weapon system |
| CustomEnchants | Custom enchantment framework |

### Chat / UI / Visuals
| Plugin | Description |
|--------|-------------|
| ChatFormatter | Advanced chat formatting |
| TAB | Tablist, scoreboard, and nametag formatting |
| DecentHolograms | Floating hologram text displays |

### Performance / Admin
| Plugin | Description |
|--------|-------------|
| LagAssist | Server lag reduction and monitoring |
| spark | Performance profiling tool |
| UltimateModeration (SongodaCore) | Moderation and punishment tools |
| Amend | Chat and moderation utilities |

### Version Support
| Plugin | Description |
|--------|-------------|
| ViaVersion | Allows newer client versions to connect |
| ViaBackwards | Allows older client versions to connect |
| TuffX | Allows Tuff Client 1.1+ players to build below Y=0 |

---

## Configuration Tips

### Permissions & Ranks
Managed via **LuckPerms**. Review and adjust ranks before opening the server publicly.

### Region Protection
**WorldGuard** is pre-installed. Set up regions to protect builds and prevent griefing.

### Shop Setup
Adjust **EconomyShopGUI** prices to fit your economy balance.

### MOTD / Branding
Edit `listeners.toml` (lines 70 and 82) to change the server MOTD.

### Opping Yourself
Run in the console (no `/` prefix needed):
```
op <username>
```

---

## Worlds

Multiple worlds are pre-generated for testing. You can safely delete them and create fresh ones via Multiverse:
```
mv create <worldname> normal
```

---

## Troubleshooting

**Players can't connect:**
- Make sure port 25567 is set to **Public** in Codespaces
- Make sure you're using `wss://` not `https://` in the IP

**Server takes forever to start:**
- This is normal with this many plugins — wait for the console to finish (~100s)

**Broke the login/velocity setup:**
- Restore from the original repo template — do not manually edit velocity or limbo configs unless necessary

---

## Legal & Credits

- Originally created by **wadwdwd1** and **atypicalpotato**
- Forked, updated, and maintained by **Jmo_fr**
- Licensed under **The Unlicense** — free to use, modify, and redistribute
- Please credit **Jmo_fr** if you use this as a base
- Eaglercraft was created by **lax1dude** and does not contain Mojang/Microsoft source code
- Online mode is OFF to support Eaglercraft and cracked clients

---

## Contributing

Contributions are welcome! Feel free to improve documentation, fix configs, or optimize performance. Open a pull request or fork freely.

> we updating to **1.21.11** with this next update ***🗣️ 🔥🔥🔥🔥🔥🔥🔥🔥***
