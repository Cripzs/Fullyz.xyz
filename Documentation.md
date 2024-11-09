# UI Library Integration Guide

## Step 1: Fetch the Fullyz.xyz Library
To begin, load the Fullyz.xyz UI library using the following code snippet. This will allow you to access the library's functionalities.

```lua
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Cripzs/Fullyz.xyz/main/UI%20Library.lua'))()
```

## Step 2: Creating Windows, Tabs, and Sections

```lua
local Box = Library.Render({
    SavePosition = true;
})

local Example = Box:Tab({
    Title = 'Home';
})

local Section = Example:Section({
    Title = 'Section'
})
```

## Step 3: Adding UI Elements

### Dropdown
```lua
local Dropdown = Section:Dropdown({
    Title = "Dropdown #1",
    List = {"One","Two","Three"},
    Callback = function(selectedValue)
        warn(selectedValue)
    end
})
```

### Datalist (Multi Dropdown)
```lua
local Datalist = Section:Datalist({
    Title = 'Datalist #1',
    Items = {'1','2','3','4'},
    Callback = function(selectedValues)
        for _, value in pairs(selectedValues) do
            print(value)
        end
    end
})
```

### Button
```lua
Section:Button({
    Title = "Refresh",
    Callback = function()
        Dropdown:Refresh({
            List = {"1","2","3"}
        })
    end
})
```

### Toggle
```lua
Section:Toggle({
    Title = "Toggle",
    Callback = function(isToggled)
        warn(isToggled)
    end
})
```

### Slider
```lua
Section:Slider({
    Title = "Slider",
    Min = 0,
    Max = 500,
    Default = 250,
    Callback = function(sliderValue)
        warn(sliderValue)
    end
})
```

### Label
```lua
Section:Label({
    Title = "Label Text",
})
```

### Text Field
```lua
Section:TextField({
    Title = "Text",
    Placeholder = "Enter text...",
    Callback = function(inputText)
        -- Process the inputText
    end
})
```

### Keybind
```lua
Section:Keybind({
    Title = "Keybind",
    Key = Enum.KeyCode.F,
    Callback = function(isPressed)
        -- Handle keybind activation
    end
})
```

With these steps and examples, you can effectively utilize the Fullyz.xyz UI library to create interactive and user-friendly interfaces for your Lua applications.
