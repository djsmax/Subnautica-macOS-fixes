## Subnautica macOS Fixes Collection
### A compilation of bug fixes for Subnautica & SN:BZ for (modern) macOS. Things devs are yet to fix :)

---

### Fixes and improvements:
- **Fix gamepad support:**
  - Gamepad axis and button mappings are all over the place in this game. This has been well documented over the years (most recent: [here](https://steamcommunity.com/app/264710/discussions/3/1658943116242610940/)). Now play with a controller as usual!
    > Tested on Game version: march 2023 build 71288
- **Fix random crashes on Apple Silicon Macs**:
  - Unity can crash while allocating memory due to a race condition. Weirdly seems to affect only Rosetta 2. It crashes Subnautica seldom at init or right before saving the game (lol). Mem mgmnt for Mono was refactored upstream (2020.2 and up), so a rather ugly patch was made to make it care less.
- **un-DRM (Epic builds):**
  - Removes the need for Epic Launcher to be in the background for the game to launch (as it would instantly quit otherwise). Also allows running the game directly for those that couldn't do it before. Technically, the game becomes DRM-free.

### How to install these fixes?

**TLDR: you have to be experienced with patching to install these. If you're not a dev, pm me or something, and I'll patch it for you.** 

For _game code_ fixes, they are applied to game's Assembly code. Annoyingly, macOS itself lacks proper software for IL patching (apart from [this WIP](https://github.com/djsmax/sharply)), so for that we resort to using Windows.

**Devs territory only!** If you are not familiar with terms "C#, disassembling, patching" - sorry, you can't have it. Re-read TLDR. 

```
0. Prepare your Windows machine. Parallels, CrossOver or Wine will do just fine. 
1. Download and run DnSpyEx.
2. Open `$(GAMEDIR)/Resources/Data/Managed/Assembly-CSharp.dll` in DnSpyEx.
3. From the list of patches, choose one. Patch file names follow assembly namespace. Use .il for IL asm code, or .cs for C# code.
4. Navigate to the required method or field (ex. for gamepad support fix, get to GameInput class, UpdateAxisValues method)
5. Right-click inside the method or fileld, choose "Edit IL instructions" and paste the text from the patch you chose. Click OK. For .cs files, use "Edit method (C#)" and then hit Compile.
6. If you encounter runtime/compilation problems, make sure you have opened the DLL inside of game's directory. If you did - open an issue.
7. Repeat steps 3-6 for every patch you want to apply. Some patches contain more than one file, all are mandatory to apply.
8. Save the assembly (Ctrl+Shift+S). Don't forget to backup!
```

For _engine_ patches, I use `jptch` and `jdiff`. Patch filenames indicate a framework/executable name. Ex.: applying fix random crashes patch: `cd Frameworks && cp UnityPlayer.dylib UnityPlayer.dylib.bak && jptch UnityPlayer.dylib UnityPlayer.dylib.patch.bin patch-mono-realloc/UnityPlayer.dylib`.

If you can't have it that way, a text file with offsets is also there. Ida Pro format is used (`addr:length:original:replaced`).

### FAQ, I guess

**Q: What are these hardcore install instructions? I just want to play my game!**

Leave a PM, I'll get you the patched files.

**Q: I connect my gamepad via USB, and it doesn't work!** 

Your gamepad is probably not supported by macOS. This is true for Xbox controllers, as they require an XInput driver, which as of now has not been resurrected for modern macOS versions.
Check macOS Settings, there is a tab that lets you see connected controllers. If it's not there - bad luck. Use Bluetooth! Bluetooth controller support on macOS is generally universal. 

**Q: My XYZ controller is connected via Bluetooth, but it doesn't work / mappings are incorrect!**

I can only vouch for Xbox One and Series Controllers, as those are the only ones I own. If you are desperate about it - open an issue, we'll make it work.

**Q: Why so difficult to patch? Things like Patchwork or Harmony do exist, you know.**

Sure, but I'm working on my own C# & Unity patcher specifically for macOS; Mono-independent to a degree. Until then things stay this way. If you wish to make it simpler - PRs are welcome :) Also, they patch on runtime, and that introduces overhead, which is especially unnecessary for things like gamepad input.

**Anything specific for Subnautica: BZ?**

Absolutely! No deadline though.

Gamepad fix and un-DRM (Epic) also work with Below Zero.

Contributors:
- <a href="https://github.com/x-0D">&lt;x0D&gt; Nikita Bragin</a>: gamepad compatability update and testing on build 71288
