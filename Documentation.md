# UI Documentation

## "Fetch" the Fullyz.xyz library
```lua
local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Cripzs/Fullyz.xyz/main/UI%20Library.lua'))()
```

## Creating the Window
```lua
local Box = Library.Render({
    SavePosition = true;
})
```

## Creating a Section
```lua
local Section = Example:Section({
    Title = 'Section'
})
```

## Creating a dropdown
```lua
local Dropdown = Section:Dropdown({
    Title = "Dropdown #1",
    List = {"One","Two","Three"},
    Callback = function(v)
        warn(v)
    end
})
```

## Creating a datalist ~Multi dropdown
```lua
local Datalist = Section:Datalist({
    Title = 'Datalist #1',
    Items = {'1','2','3','4'},
    Callback = function(values)
        for i,v in pairs(values) do
            print(v)
        end
    end
})
``` 

## Creating a button
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

## Creating a toggle
```lua
Section:Toggle({
    Title = "Toggle",
    Callback = function(v)
        warn(v)
    end
})
```

## Creating a slider
```lua
Section:Slider({
    Title = "asd",
    Min = 0,
    Max = 500,
    Default = 250,
    Callback = function(v)
        warn(v)
    end
})
```

## Creating a label
```lua
Section:Label({
    Title = "asd",
})
```

## Creating a Text Field
```lua
Section:TextField({
    Title = "Text",
    Placeholder = "Holder",
    Callback = function(v)
    end
})
```

## Creating a Keybind
```lua
Section:Keybind({
    Title = "asd",
    Key = Enum.KeyCode.F,
    Callback = function(v)

    end
})
```
