local composer = require( "composer" )
local scene = composer.newScene()
 
local fundo
local texto 
local botao

local function changeScene(e)
    composer.gotoScene("scene1")
end

-- create()
function scene:create( event )
    local sceneGroup = self.view
    fundo = display.newRect(0, 0, 320, 480)
    fundo.x, fundo.y = 320/2, 480/2
    fundo:setFillColor(115/255, 151/255, 209/255)
    sceneGroup:insert(fundo)

    local options = {
        text = "Tela 1",
        x = 320/2,
        y = 480/2,
        font = native.systemFontBold,
        fontSize = 50,
        align = "center"
    }

    texto = display.newText(options)
    sceneGroup:insert(texto)

    botao = display.newRect(0, 0, 100, 30)
    botao.x, botao.y = 320/2, 480/1.5
    botao:addEventListener("tap", changeScene)
end

-- show()
function scene:show( event )
    local sceneGroup = self.view
    local phase = event.phase
    if ( phase == "will" ) then
    elseif ( phase == "did" ) then
    end
end
 
-- hide()
function scene:hide( event )
    local sceneGroup = self.view
    local phase = event.phase
    if ( phase == "will" ) then
    elseif ( phase == "did" ) then
    end
end
 
 
-- destroy()
function scene:destroy( event )
    local sceneGroup = self.view
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
 
return scene