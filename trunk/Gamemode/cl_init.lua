include( 'shared.lua' )
include( 'cl_weather.lua' )
include( 'cl_hud.lua' )
include( 'login.lua' )
function sw_menu() 

local DermaPanel = vgui.Create( "DFrame" )
DermaPanel:SetPos( 50,50 )
DermaPanel:SetSize( 150, 200 )
DermaPanel:SetTitle( "Menu" )
DermaPanel:SetVisible( true )
DermaPanel:SetDraggable( true )
DermaPanel:ShowCloseButton( true )
DermaPanel:SetMouseInputEnabled(true)
DermaPanel:SetKeyboardInputEnabled(true)
DermaPanel:MakePopup()
end
 
local MenuButton = vgui.Create("DButton")
MenuButton:SetParent( DermaPanel )
MenuButton:SetText( "Menu >" )
MenuButton:SetPos(25, 50)
MenuButton:SetSize( 100, 125 )
MenuButton.DoClick = function ( btn )
    local MenuButtonOptions = DermaMenu() -- Creates the menu
    MenuButtonOptions:AddOption("Quit", function() RunConsoleCommand("disconnect") end ) -- Add options to the menu
    MenuButtonOptions:AddOption("Skills", function() RunConsoleCommand("Skills") end )
    MenuButtonOptions:AddOption("Attributes", function() RunConsoleCommand("Attributes") end )
    MenuButtonOptions:AddOption("Check Force Sensitivity", function() RunConsoleCommand("Check") end )
    MenuButtonOptions:AddOption("Bug Report", function() RunConsoleCommand("Reportbug") end )
    MenuButtonOptions:Open() -- Open the menu AFTER adding your options
end

function GM:SWAttributes( ply )
end

function GM:SWSkills( ply )
local DermaPanel = vgui.Create( "DFrame" )
DermaPanel:SetPos( 50, 50 )
DermaPanel:SetSize( 200, 250 )
DermaPanel:SetTitle( "Skills" )
DermaPanel:SetVisible( true )
DermaPanel:SetDraggable( true )
DermaPanel:ShowCloseButton( true )
DermaPanel:MakePopup()

local PropertySheet = vgui.Create( "DPropertySheet" )         // console command does not work for some reason
PropertySheet:SetParent( DermaPanel )
PropertySheet:SetPos( 5, 30 )
PropertySheet:SetSize( 340, 315 )

local SheetItemOne = vgui.Create( "DListView" )
SheetItemOne:SetParent (DermaPanel)
SheetItemOne:AddColumn( "Current Rifle XP" )
SheetItemOne:AddColumn( "Rifle XP To Go Till Skill Point" )
end

function force( ply )
end

function bug( ply )
end

concommand.Add("sw_menu", sw_menu)
concommand.Add("sw_skills", GM.SWSkills)
















