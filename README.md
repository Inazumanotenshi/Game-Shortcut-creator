# Game Shortcut Creator for Unreal Engine Projects

This tool is intended for game developers working with the Unreal Engine.

Some users, especially those with AMD GPUs, may encounter a Fatal Error when launching Unreal Engine games in DirectX 12. This issue can cause the game or project to crash immediately on startup.

To help mitigate this problem, this batch script automatically creates two launch shortcuts for your game executable:

## DX11 Launch Shortcut (recommended for AMD GPUs)
Starts the game using the -dx11 argument, which can help avoid DX12-related startup crashes on affected AMD systems.

## DX12 Launch Shortcut (recommended for Nvidia GPUs)
Starts the game using the -dx12 argument, allowing users to run the game with the intended modern rendering backend.

## How to Use
1. Place the batch file in the same folder as your game's .exe file.
2. Run the batch file.
3. Two shortcuts will be created automatically in the same directory.

This allows players, testers, or developers to quickly switch between DirectX versions without manually editing launch parameters.
