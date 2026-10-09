# 适用于 Ragecraft IV: Underworld 的数据包修改
# Data Pack Modification for Ragecraft IV: Underworld

[简体中文](#简体中文) | [English](#english)

---

## 简体中文

### 使用方法

1. 下载本项目源码，按照项目目录结构替换整合包中对应的数据包文件。建议替换前进行备份。
2. 代码会检测以下两个位置的按钮：
   - **存储经验：** `(18, 175, 229)`，存储当前玩家的全部经验。
   - **提取经验：** `(26, 175, 229)`，取出当前玩家已存储的全部经验。

   两个按钮均需要自行放置。

### 注意事项

每个玩家的存储数据相互独立，不会共享。

### 实机截图

<img width="2560" height="1494" alt="经验存储功能实机截图" src="https://github.com/user-attachments/assets/5e43f673-d4d0-44bb-8a00-31694e16af5a" />

### 关于额外数据包警告

由于本项目引入了额外的数据包，每次加载数据包时都会出现相关警告。

如果希望关闭该警告，可以修改以下文件：

`world/datapacks/suso.mod_warn/data/suso.mv/functions/load.mcfunction`

将第 9 行修改为：

```mcfunction
scoreboard players set $d_extrapack suso.mw 0
```

即将原本的 `1` 改为 `0`，即可关闭该警告。

---

## English

### Usage

1. Download the source code and replace the corresponding data pack files in the modpack, following the original directory structure. **It is recommended to back up the original files before replacing them.**
2. The script detects buttons at the following coordinates:
   - **Store XP:** `(18, 175, 229)` — Stores all XP of the current player.
   - **Retrieve XP:** `(26, 175, 229)` — Retrieves all XP previously stored by the current player.

   Both buttons must be placed manually.

### Notes

Each player's stored XP is independent and is not shared with other players.

### In-Game Screenshot

<img width="2560" height="1494" alt="In-game screenshot of the XP storage feature" src="https://github.com/user-attachments/assets/5e43f673-d4d0-44bb-8a00-31694e16af5a" />

### About the Extra Data Pack Warning

Since this project introduces an additional data pack, a warning will appear each time the data packs are loaded.

To disable this warning, edit the following file:

`world/datapacks/suso.mod_warn/data/suso.mv/functions/load.mcfunction`

Change line 9 to:

```mcfunction
scoreboard players set $d_extrapack suso.mw 0
```

In other words, change the original value from `1` to `0` to disable the warning.
