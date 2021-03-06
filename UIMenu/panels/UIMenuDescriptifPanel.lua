---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dylan Malandain.
--- DateTime: 04/02/2019 10:58
---
UIMenuDescriptifPanel = setmetatable({}, UIMenuDescriptifPanel)
UIMenuDescriptifPanel.__index = UIMenuDescriptifPanel
UIMenuDescriptifPanel.__call = function()
    return "UIMenuPanel", "UIMenuDescriptifPanel"
end

local LoremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

function UIMenuDescriptifPanel.New()
    _UIMenuDescriptifPanel = {
        Background = Sprite.New("commonmenu", "gradient_bgd", 0, 0, 431, 100),
        Description = UIResText.New(Text or LoremIpsum, 0, 0, 0.35, 255, 255, 255, 255, 0, "Right"),
        ParentItem = nil,
    }
    return setmetatable(_UIMenuDescriptifPanel, UIMenuDescriptifPanel)
end

function UIMenuDescriptifPanel:SetParentItem(Item)
    if Item() == "UIMenuItem" then
        self.ParentItem = Item
    else
        return self.ParentItem
    end
end

function UIMenuDescriptifPanel:Position(Y)
    if tonumber(Y) then
        local ParentOffsetX, ParentOffsetWidth = self.ParentItem:Offset().X, self.ParentItem:SetParentMenu().WidthOffset

        self.Background:Position(ParentOffsetX, Y)

        self.Description:Position(ParentOffsetX, Y)
    end
end

function UIMenuDescriptifPanel:Draw()

    self.Background:Draw()

    self.Description:Draw()

end