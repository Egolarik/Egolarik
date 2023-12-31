-- �������� ��� ������, ����� �� ������ ��� ���������.
------------------------����������------------------------------

local encoding = require("encoding")
local sampev = require("lib.samp.events")
local request = require("requests")
local imgui = require("mimgui")
local inicfg = require("inicfg")
local faicons = require("fAwesome6")
local ffi = require("ffi")
local json = require("cjson")
------------------------------------------

function sampev.onSendSpawn()
sampSendChat("/stats")
sampAddChatMessage("[UxyOy AutoSchool Helper]: {FFFFFF}������ ������� ����������", 9109759)
sampAddChatMessage("[UxyOy AutoSchool Helper]: {FFFFFF}������:t.me/UxyOy", 9109759)
sampAddChatMessage("[UxyOy AutoSchool Helper]: {FFFFFF}����� ���������� ��������,������� /helper and /helpers", 9109759)
end

function sampev.onShowDialog(id, style, title, button1, button2, text)
    if id == 235 and title == '{BFBBBA}�������� ����������' then
        for line in text:gmatch("[^\r\n]+") do
            if line:find('{FFFFFF}���������: {B83434}(.+)%((%d+)%)') then
                rank = line:match('{FFFFFF}���������: {B83434}(.+)%((%d+)%)')
                print(rank)
            end
        end
    end
end

--����������--
local gta = ffi.load("GTASA")
local CurrentTab = 0
local fa = faicons
local new, str, sizeof = imgui.new, ffi.string, ffi.sizeof
encoding.default = "cp1251"
local toggled = false
local u8 = encoding.UTF8
name = sampGetPlayerNickname(select(2, sampGetPlayerIdByCharHandle(playerPed)))
local inputField = imgui.new.char[256]()
local WinState, menu = new.bool(), new.bool()
------------------------------------------------------------------------

------------------------API SCRIPT MANAGER-------------------------
EXPORTS = {
  canToggle = function() return true end,
  getToggle = function() return WinState[0] end,
  toggle = function() WinState[0] = not WinState[0] end
}
-------------------------------------------------------------------------------------

--���������� ����--
local ini = inicfg.load({
  cfg =
  {
    theme = 1,
    server = "Arizona Role Play | Phoenix"
  }}, "AutoSchool.ini")
-------------------------------------

--����������� ���� � ��������--
function sampev.onInitGame(id, server)
ini.cfg.server = server
cfg_save()
end
--------------------------------------------------------------

--����������--
if not imgui.update then
imgui.update = {
  needupdate = false, updateText = u8"������� �� \"��������� ����������\"", version = "1.4.0"
}
end
---------------------------

--������ ��� ��� ���� �������--
local colorList = {
  u8"�������", u8"������",u8"�����", u8"������", u8"����������", u8"���������� #2", u8"������� #2"
}
local colorListNumber = new.int(ini.cfg.theme - 1)
local colorListBuffer = new["const char*"][#colorList](colorList)
--------------------------------------------------------------
--������--
result = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Phoenix.txt")
result1 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Tucson.txt")
result2 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Scottdale.txt")
result3 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Chandler.txt")
result4 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Brainburg.txt")
result5 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Saintrose.txt")
result6 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Mesa.txt")
result7 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Red-Rock.txt")
result8 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Yuma.txt")
result9 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Surprise.txt")
result10 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Prescott.txt")
result11 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Glendale.txt")
result12 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Kingman.txt")
result13 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Winslow.txt")
result14 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Payson.txt")
result15 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Show%20Low.txt")
result16 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Casa-Grande.txt")
result17 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Page.txt")
result18 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Sun-City.txt")
result19 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Queen-Creek.txt")
result20 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Gilbert.txt")
result21 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Sedona.txt")
result22 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Holiday.txt")
result23 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Wednesday.txt")
result24 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Yava.txt")
result25 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Bumble%20Bee.txt")
result26 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Mobile%201.txt")
result27 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Mobile%202.txt")
result28 = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/Mobile%203.txt")
------------------

--����������� ������--
function main()
while not isSampAvailable() do wait(100) end
sampAddChatMessage(rank, -1)
sampRegisterChatCommand("lic", cmd_givelicense)
sampRegisterChatCommand("om", cmd_om)
sampRegisterChatCommand("expel", cmd_expel)
sampRegisterChatCommand("bug", openC)
sampRegisterChatCommand("helper", function()
  WinState[0] = not WinState[0]
  end)
end
------------------------------------

--������������� ������ � �����--
imgui.OnInitialize(function()
  imgui.GetIO().IniFilename = nil
  local config = imgui.ImFontConfig()
  config.MergeMode = true
  config.PixelSnapH = true
  iconRanges = imgui.new.ImWchar[3](faicons.min_range, faicons.max_range, 0)
  imgui.GetIO().Fonts:AddFontFromMemoryCompressedBase85TTF(faicons.get_font_data_base85("regular"), 17, config, iconRanges)
  decor()
  theme[ini.cfg.theme].change()
  end)
------------------------------------------------------

--���������� ���--
function cfg_save()
inicfg.save(ini, "AutoSchool.ini")
end
-----------------------------

--�����--
function decor()
-- == ����� ����� == --
imgui.SwitchContext()
local ImVec4 = imgui.ImVec4
imgui.GetStyle().WindowPadding = imgui.ImVec2(5, 5)
imgui.GetStyle().FramePadding = imgui.ImVec2(5, 5)
imgui.GetStyle().ItemSpacing = imgui.ImVec2(5, 5)
imgui.GetStyle().ItemInnerSpacing = imgui.ImVec2(2, 2)
imgui.GetStyle().TouchExtraPadding = imgui.ImVec2(0, 0)
imgui.GetStyle().IndentSpacing = 0
imgui.GetStyle().ScrollbarSize = 10
imgui.GetStyle().GrabMinSize = 10
imgui.GetStyle().WindowBorderSize = 1
imgui.GetStyle().ChildBorderSize = 1
imgui.GetStyle().PopupBorderSize = 1
imgui.GetStyle().FrameBorderSize = 1
imgui.GetStyle().TabBorderSize = 1
imgui.GetStyle().WindowRounding = 8
imgui.GetStyle().ChildRounding = 8
imgui.GetStyle().FrameRounding = 8
imgui.GetStyle().PopupRounding = 8
imgui.GetStyle().ScrollbarRounding = 8
imgui.GetStyle().GrabRounding = 8
imgui.GetStyle().TabRounding = 8
end
--------------

--��������� ������
local newframe = (
imgui.OnFrame(function() return WinState[0] end, function(player)
  imgui.SetNextWindowSize(imgui.ImVec2(490, 275))
  imgui.Begin(u8"AutoSchool Helper", WinState)
--���������� ������ �� ���--
  decor()
  ini.cfg.theme = colorListNumber[0]+1
  cfg_save()
------------------------------------------------
  
imgui.BeginChild('Button', imgui.ImVec2(120, -1))
--�������� ������--
  if imgui.Button(fa("graduation_cap") ..u8 "������", imgui.ImVec2(118, 28)) then
  CurrentTab = 1
  end
  if imgui.Button(fa("file") ..u8 "�����", imgui.ImVec2(118, 28)) then
  CurrentTab = 2
  end
  if imgui.Button(fa("gears") ..u8 "���������", imgui.ImVec2(118, 28)) then
  CurrentTab = 3
  end
  if imgui.Button(fa("user") ..u8 "�������������", imgui.ImVec2(118, 28)) then
  currentTab = 4
  end
  imgui.EndChild()
---------------------------------
imgui.SameLine()
imgui.BeginChild('Tabs', imgui.ImVec2(-1, -1))
  if CurrentTab == 1 then
  imgui.TextWrapped(u8"������� ������ ������� ������")
  if imgui.Button(u8"������ � ������� ���") then
  lua_thread.create(function()
    sampSendChat("����������� ���� �� ������ � ������� ���.")
    wait(1500)
    sampSendChat("���������� � ������� ����� ������� ���������� � ����� ��� � �����.")
    wait(1500)
    sampSendChat("�� ������ �������� ��� ��������� ������� ������� ��� ����������.")
    wait(1500)
    sampSendChat("� ������������ �� ������� ������� ���� ��� � 10:00 �� 20:00.")
    wait(1500)
    sampSendChat("� �������� ��� � 10:00 �� 19:00.")
    wait(1500)
    sampSendChat("� ��������� ����� ��� ������������ ��������� ����� �������� ���� ���.")
    wait(1500)
    sampSendChat("�� ����� ���� ����������� ����� ����� �����.")
    wait(1500)
    sampSendChat("�� ���� � ���� ���, ������� �� ��������.")
    wait(1500)
    sampSendChat("���� �� ������, ���� �������� ���.")
    end)
  end
  if imgui.Button(u8"������ � ������������") then
  lua_thread.create(function()
    sampSendChat("����������� ���� �� ������ � ������������.")
    wait(1500)
    sampSendChat("������������ - ������� ���������� ������� �� ������ � ������� �� ������, ��������, ��������� � ���.")
    wait(1500)
    sampSendChat("�� ����, ������� ���������� ������ ��������� ������� ����������.")
    wait(1500)
    sampSendChat("��� ���������� - ������� �������, �� ������ ������.")
    wait(1500)
    sampSendChat("�� ������ � ��������� ��������� � ���������� �� ��")
    wait(1500)
    sampSendChat("�� ��������� ������� � �� ��������� ������������, ���� �� �������� ���������.")
    wait(1500)
    sampSendChat("�� ���� � ���� ���, ������� �� ��������.")
    wait(1500)
    sampSendChat("��� �� ������, ���� �������� ���.")
    end)
  end
--------------

elseif CurrentTab == 2 then
  local servers = {
  ["Arizona RP | Phoenix | X4 Payday!"] = result.text,
  ["Arizona Role Play | Phoenix"] = result.text, 
  ["Arizona RP | Tucson | X4 Payday!"] = result1.text,
  ["Arizona Role Play | Tucson"] = result1.text,
  ["Arizona RP | Scottdale | X4 Payday!"] = result2.text,
  ["Arizona Role Play | Scottdale"] = result2.text,
  ["Arizona RP | Chandler | X4 Payday!"] = result3.text,
  ["Arizona Role Play | Chandler"] = result3.text,
  ["Arizona RP | Brainburg | X4 Payday!"] = result4.text,
  ["Arizona Role Play | Brainburg"] = result4.text,
  ["Arizona RP | Saintrose | X4 Payday!"] = result5.text,
  ["Arizona Role Play | Saintrose"] = result5.text,
  ["Arizona RP | Mesa | X4 Payday!"] = result6.text,
  ["Arizona Role Play | Mesa"] = result6.text,
  ["Arizona RP | Red-Rock | X4 Payday!"] = result7.text,
  ["Arizona Role Play | Red-Rock"] = result7.text,
  ["Arizona RP | Yuma | X4 Payday!"] = result8.text,
  ["Arizona Role Play | Yuma"] = result8.text,
  ["Arizona RP | Surprise | X4 Payday!"] = result9.text,
  ["Arizona Role Play | Surprise"] = result9.text,
  ["Arizona RP | Prescott | X4 Payday!"] = result10.text,
  ["Arizona Role Play | Prescott"] = result10.text,
  ["Arizona RP | Glendale | X4 Payday!"] = result11.text,
  ["Arizona Role Play | Glendale"] = result11.text,
  ["Arizona RP | Kingman | X4 Payday!"] = result12.text,
  ["Arizona Role Play | Kingman"] = result12.text,
  ["Arizona RP | Winslow | X4 Payday!"] = result13.text,
  ["Arizona Role Play | Winslow"] = result13.text,
  ["Arizona RP | Payson | X4 Payday!"] = result14.text,
  ["Arizona Role Play | Payson"] = result14.text,
  ["Arizona RP | Show Low | X4 Payday!"] = result15.text,
  ["Arizona Role Play | Show Low"] = result15.text,
  ["Arizona RP | Casa-Grande | X4 Payday!"] = result16.text,
  ["Arizona Role Play | Casa-Grande"] = result16.text,
  ["Arizona RP | Page | X4 Payday!"] = result17.text,
  ["Arizona Role Play | Page"] = result17.text,
  ["Arizona RP | Sun-City | X4 Payday!"] = result18.text,
  ["Arizona Role Play | Sun-City"] = result18.text,
  ["Arizona RP | Queen-Creek | X4 Payday!"] = result19.text,
  ["Arizona Role Play | Queen-Creek"] = result19.text,
  ["Arizona RP | Gilbert | X4 Payday!"] = result20.text,
  ["Arizona Role Play | Gilbert"] = result20.text,
  ["Arizona RP | Sedona | X4 Payday!"] = result21.text,
  ["Arizona Role Play | Sedona"] = result21.text,
  ["Arizona RP | Holiday | X4 Payday!"] = result22.text,
  ["Arizona Role Play | Holiday"] = result22.text,
  ["Arizona RP | Wednesday | X4 Payday!"] = result23.text,
  ["Arizona Role Play | Wednesday"] = result23.text,
  ["Arizona RP | Yava | X4 Payday!"] = result24.text,
  ["Arizona Role Play | Yava"] = result24.text,
  ["Arizona RP | Faraway | X4 Payday!"] = result20.text,
  ["Arizona Role Play | Faraway"] = result20.text,
  ["Arizona RP | Bumble Bee | X4 Payday!"] = result25.text,
  ["Arizona Role Play | Bumble Bee"] = result25.text,
  ["Arizona RP | Mobile I | X4 Payday!"] = result26.text,
  ["Arizona Role Play | Mobile I"] = result26.text,
  ["Arizona RP | Mobile II | X4 Payday!"] = result27.text,
  ["Arizona Role Play | Mobile II"] = result27.text,
  ["Arizona RP | Mobile III | X4 Payday!"] = result28.text,
  ["Arizona Role Play | Mobile III"] = result28.text
}

  local serverText = servers[ini.cfg.server]
  if serverText then
    for line in serverText:gmatch("[^\r\n]+") do
      imgui.TextWrapped(line)
    end
  end

----------------------------------------------

--3 ������ ���������--
  elseif CurrentTab == 3 then
  imgui.TextWrapped(u8"�����: @UxyOy [Telegram]")
  imgui.TextWrapped(u8"������ �������: 1.0")
  imgui.TextWrapped(u8"������ �� ���������, ������������ ��� � [Telegram]")
  if imgui.Button(u8"����� � �������������") then
  gta._Z12AND_OpenLinkPKc("https://t.me/UxyOy")
  end
  if imgui.Button(u8"������������� ������") then
  lua_thread.create(function() wait(5) thisScript():reload() end)
  end
  imgui.ShowCursor = false
  if imgui.IsItemHovered() then imgui.SetTooltip(u8"�������� ���, ����� ������������� ������")
  end
  imgui.SameLine()
  if imgui.Button(u8"��������� ������") then
  lua_thread.create(function() wait(1) thisScript():unload() end)
  imgui.ShowCursor = false
  end
  if imgui.Combo(u8"����",colorListNumber,colorListBuffer, #colorList) then
  theme[colorListNumber[0]+1].change()
  end

  if imgui.update.needupdate then
  local centered_x = (imgui.GetWindowWidth() - imgui.CalcTextSize(u8"����������").x) / 2
  imgui.SetCursorPosX(centered_x)
  if imgui.Button(u8"����������") then
  local response = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/AutoSchool-Helper.lua")
  if response.status_code == 200 then
  local file = io.open(thisScript().filename, "wb")
  if file then
  file:write(response.text)
  file:close()
  thisScript():reload()
  else
    sampAddChatMessage("���, ��������, ������ ������ �������, ��� � ����������", -1)
  end
  end
  end
  else
  local centered_x = (imgui.GetWindowWidth() - imgui.CalcTextSize(u8"��������� ����������").x) / 2
  imgui.SetCursorPosX(centered_x)
  if imgui.Button(u8"��������� ����������") then
  local response = request.get("https://raw.githubusercontent.com/Egolarik/Egolarik/main/test.json")
  if response.status_code == 200 then
-- ������������, ��� ���� ������ � ������� JSON � �������� ���� "version"
  local data = json.decode(response.text) -- ������������, ��� ���� ���������� JSON
  if data and data.version and data.version ~= imgui.update.version then
  imgui.update.needupdate = true
  imgui.update.updateText = u8"������� ���������� �� ������ " .. data.version
  else
    imgui.update.updateText = u8"���������� �� �������"
  end
  else
    imgui.update.updateText = u8"������ " .. tostring(response.status_code)
  end
  end
  end

-- ����������� ������������ �� �����������
  if imgui.update.updateText ~= "" then
  imgui.Separator()
  local updateTextWidth = imgui.CalcTextSize(imgui.update.updateText).x
  local centered_x = (imgui.GetWindowWidth() - updateTextWidth) / 2
  imgui.SetCursorPosX(centered_x)
  imgui.Text(imgui.update.updateText)
  imgui.Separator()
  end
--------------------------
  imgui.EndChild()
  imgui.End()
  end
  end)
 )
-- == [��������] ���������� ������� �����������, ������ ����������� ������. == --


--������ ��������--
function cmd_givelicense(id)
if id == "" then
sampAddChatMessage("����� ���� ������: {FFFFFF}/lic [ID]", 0x318CE7FF)
else
  lua_thread.create(function()
  sampSendChat("/givelicense "..id)
  sampSendChat("/todo ������, ���������*�������� ��� � ���� ������� � ���-�� ������� �� ���")
  wait(1500)
  sampSendChat("/do �� ��� ������� ����� ��������, � �������� ��������������� ����.")
  wait(1500)
  sampSendChat("/me ������������ ����� ��������")
  wait(1500)
  sampSendChat("/do ��� �������� ���.")
  wait(1500)
  sampSendChat("/do ��� �����.")
  wait(1500)
  sampSendChat("/do �� ���� �������� ����� ������.")
  wait(1500)
  sampSendChat("/me ������� ��� �������� ��������")
  wait(1500)
  sampSendChat("/me ��� ������ ���������� � ���")
  wait(1500)
  sampSendChat("/do ������ ������� �����.")
  wait(1500)
  sampSendChat("����� ��������, ��������� ���!")
  end)
end
end
--------------

--������� ����������
function cmd_expel(id)
if id == "" then
sampAddChatMessage("����� ���� ������: {FFFFFF}/expel [ID] [REASON]", 0x318CE7FF)
else
  lua_thread.create(function()
  sampSendChat("/me ������� ���������� ��� ������� ���� ��������, ���� ��� �� ����� � ������")
  wait(1500)
  sampSendChat("/me ������ ����� ������, ����� ���� ����� ���������� �� �����")
  sampSendChat("/expel "..id.." ")
  end)
end
end
------------------------------------

function onScriptTerminate(slot0, slot1)
if slot0 == thisScript() and not slot1 then
thisScript():reload()
end
end

--�����������--
function cmd_om()
  lua_thread.create(function()
  sampSendChat("������� ������� �����, ���� ����� ".. name ..". ��� ���� ��� ������?")
  wait(1500)
  sampSendChat("/do �� ����� ����� �����, �� ������� ��������: " .. rank .. " - " .. name ..".")
  end)
end
-------------------------

ffi.cdef[[
    void _Z12AND_OpenLinkPKc(const char* link);
]]


--����--
theme = {
  {
    change = function()
    local ImVec4 = imgui.ImVec4
    imgui.SwitchContext()
    imgui.GetStyle().Colors[imgui.Col.Text] = ImVec4(1.00, 1.00, 1.00, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TextDisabled] = ImVec4(0.50, 0.50, 0.50, 1.00)
    imgui.GetStyle().Colors[imgui.Col.WindowBg] = ImVec4(0.06, 0.06, 0.06, 0.94)
    imgui.GetStyle().Colors[imgui.Col.ChildBg] = ImVec4(1.00, 1.00, 1.00, 0.00)
    imgui.GetStyle().Colors[imgui.Col.PopupBg] = ImVec4(0.08, 0.08, 0.08, 0.94)
    imgui.GetStyle().Colors[imgui.Col.Border] = ImVec4(0.43, 0.43, 0.50, 0.50)
    imgui.GetStyle().Colors[imgui.Col.BorderShadow] = ImVec4(0.00, 0.00, 0.00, 0.00)
    imgui.GetStyle().Colors[imgui.Col.FrameBg] = ImVec4(0.48, 0.16, 0.16, 0.54)
    imgui.GetStyle().Colors[imgui.Col.FrameBgHovered] = ImVec4(0.98, 0.26, 0.26, 0.40)
    imgui.GetStyle().Colors[imgui.Col.FrameBgActive] = ImVec4(0.98, 0.26, 0.26, 0.67)
    imgui.GetStyle().Colors[imgui.Col.TitleBg] = ImVec4(0.04, 0.04, 0.04, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TitleBgActive] = ImVec4(0.48, 0.16, 0.16, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TitleBgCollapsed] = ImVec4(0.00, 0.00, 0.00, 0.51)
    imgui.GetStyle().Colors[imgui.Col.MenuBarBg] = ImVec4(0.14, 0.14, 0.14, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarBg] = ImVec4(0.02, 0.02, 0.02, 0.53)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrab] = ImVec4(0.31, 0.31, 0.31, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabHovered] = ImVec4(0.41, 0.41, 0.41, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabActive] = ImVec4(0.51, 0.51, 0.51, 1.00)
    imgui.GetStyle().Colors[imgui.Col.CheckMark] = ImVec4(0.98, 0.26, 0.26, 1.00)
    imgui.GetStyle().Colors[imgui.Col.SliderGrab] = ImVec4(0.88, 0.26, 0.24, 1.00)
    imgui.GetStyle().Colors[imgui.Col.SliderGrabActive] = ImVec4(0.98, 0.26, 0.26, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Button] = ImVec4(0.98, 0.26, 0.26, 0.40)
    imgui.GetStyle().Colors[imgui.Col.ButtonHovered] = ImVec4(0.98, 0.26, 0.26, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ButtonActive] = ImVec4(0.98, 0.06, 0.06, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Header] = ImVec4(0.98, 0.26, 0.26, 0.31)
    imgui.GetStyle().Colors[imgui.Col.HeaderHovered] = ImVec4(0.98, 0.26, 0.26, 0.80)
    imgui.GetStyle().Colors[imgui.Col.HeaderActive] = ImVec4(0.98, 0.26, 0.26, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Separator] = ImVec4(0.43, 0.43, 0.50, 0.50)
    imgui.GetStyle().Colors[imgui.Col.SeparatorHovered] = ImVec4(0.75, 0.10, 0.10, 0.78)
    imgui.GetStyle().Colors[imgui.Col.SeparatorActive] = ImVec4(0.75, 0.10, 0.10, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ResizeGrip] = ImVec4(0.98, 0.26, 0.26, 0.25)
    imgui.GetStyle().Colors[imgui.Col.ResizeGripHovered] = ImVec4(0.98, 0.26, 0.26, 0.67)
    imgui.GetStyle().Colors[imgui.Col.ResizeGripActive] = ImVec4(0.98, 0.26, 0.26, 0.95)
    imgui.GetStyle().Colors[imgui.Col.Tab] = ImVec4(0.98, 0.26, 0.26, 0.40)
    imgui.GetStyle().Colors[imgui.Col.TabHovered] = ImVec4(0.98, 0.26, 0.26, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TabActive] = ImVec4(0.98, 0.06, 0.06, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TabUnfocused] = ImVec4(0.98, 0.26, 0.26, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TabUnfocusedActive] = ImVec4(0.98, 0.26, 0.26, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotLines] = ImVec4(0.61, 0.61, 0.61, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotLinesHovered] = ImVec4(1.00, 0.43, 0.35, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotHistogram] = ImVec4(0.90, 0.70, 0.00, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotHistogramHovered] = ImVec4(1.00, 0.60, 0.00, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TextSelectedBg] = ImVec4(0.98, 0.26, 0.26, 0.35)
    end
  },
  {
    change = function()
    local ImVec4 = imgui.ImVec4
    imgui.SwitchContext()
    imgui.GetStyle().Colors[imgui.Col.Text] = ImVec4(0.90, 0.90, 0.90, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TextDisabled] = ImVec4(0.60, 0.60, 0.60, 1.00)
    imgui.GetStyle().Colors[imgui.Col.WindowBg] = ImVec4(0.08, 0.08, 0.08, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ChildBg] = ImVec4(0.10, 0.10, 0.10, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PopupBg] = ImVec4(0.08, 0.08, 0.08, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Border] = ImVec4(0.70, 0.70, 0.70, 0.40)
    imgui.GetStyle().Colors[imgui.Col.BorderShadow] = ImVec4(0.00, 0.00, 0.00, 0.00)
    imgui.GetStyle().Colors[imgui.Col.FrameBg] = ImVec4(0.15, 0.15, 0.15, 1.00)
    imgui.GetStyle().Colors[imgui.Col.FrameBgHovered] = ImVec4(0.19, 0.19, 0.19, 0.71)
    imgui.GetStyle().Colors[imgui.Col.FrameBgActive] = ImVec4(0.34, 0.34, 0.34, 0.79)
    imgui.GetStyle().Colors[imgui.Col.TitleBg] = ImVec4(0.00, 0.69, 0.33, 0.80)
    imgui.GetStyle().Colors[imgui.Col.TitleBgActive] = ImVec4(0.00, 0.74, 0.36, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TitleBgCollapsed] = ImVec4(0.00, 0.69, 0.33, 0.50)
    imgui.GetStyle().Colors[imgui.Col.MenuBarBg] = ImVec4(0.00, 0.80, 0.38, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarBg] = ImVec4(0.16, 0.16, 0.16, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrab] = ImVec4(0.00, 0.69, 0.33, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabHovered] = ImVec4(0.00, 0.82, 0.39, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabActive] = ImVec4(0.00, 1.00, 0.48, 1.00)
    imgui.GetStyle().Colors[imgui.Col.CheckMark] = ImVec4(0.00, 0.69, 0.33, 1.00)
    imgui.GetStyle().Colors[imgui.Col.SliderGrab] = ImVec4(0.00, 0.69, 0.33, 1.00)
    imgui.GetStyle().Colors[imgui.Col.SliderGrabActive] = ImVec4(0.00, 0.77, 0.37, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Button] = ImVec4(0.00, 0.69, 0.33, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ButtonHovered] = ImVec4(0.00, 0.82, 0.39, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ButtonActive] = ImVec4(0.00, 0.87, 0.42, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Header] = ImVec4(0.00, 0.69, 0.33, 1.00)
    imgui.GetStyle().Colors[imgui.Col.HeaderHovered] = ImVec4(0.00, 0.76, 0.37, 0.57)
    imgui.GetStyle().Colors[imgui.Col.HeaderActive] = ImVec4(0.00, 0.88, 0.42, 0.89)
    imgui.GetStyle().Colors[imgui.Col.Separator] = ImVec4(1.00, 1.00, 1.00, 0.40)
    imgui.GetStyle().Colors[imgui.Col.SeparatorHovered] = ImVec4(1.00, 1.00, 1.00, 0.60)
    imgui.GetStyle().Colors[imgui.Col.SeparatorActive] = ImVec4(1.00, 1.00, 1.00, 0.80)
    imgui.GetStyle().Colors[imgui.Col.ResizeGrip] = ImVec4(0.00, 0.69, 0.33, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ResizeGripHovered] = ImVec4(0.00, 0.76, 0.37, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ResizeGripActive] = ImVec4(0.00, 0.86, 0.41, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotLines] = ImVec4(0.00, 0.69, 0.33, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotLinesHovered] = ImVec4(0.00, 0.74, 0.36, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotHistogram] = ImVec4(0.00, 0.69, 0.33, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotHistogramHovered] = ImVec4(0.00, 0.80, 0.38, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TextSelectedBg] = ImVec4(0.00, 0.69, 0.33, 0.72)
    end
  },
  {
    change = function()
    local ImVec4 = imgui.ImVec4
    imgui.SwitchContext()
    imgui.GetStyle().Colors[imgui.Col.WindowBg] = ImVec4(0.08, 0.08, 0.08, 1.00)
    imgui.GetStyle().Colors[imgui.Col.FrameBg] = ImVec4(0.16, 0.29, 0.48, 0.54)
    imgui.GetStyle().Colors[imgui.Col.FrameBgHovered] = ImVec4(0.26, 0.59, 0.98, 0.40)
    imgui.GetStyle().Colors[imgui.Col.FrameBgActive] = ImVec4(0.26, 0.59, 0.98, 0.67)
    imgui.GetStyle().Colors[imgui.Col.TitleBg] = ImVec4(0.04, 0.04, 0.04, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TitleBgActive] = ImVec4(0.16, 0.29, 0.48, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TitleBgCollapsed] = ImVec4(0.00, 0.00, 0.00, 0.51)
    imgui.GetStyle().Colors[imgui.Col.CheckMark] = ImVec4(0.26, 0.59, 0.98, 1.00)
    imgui.GetStyle().Colors[imgui.Col.SliderGrab] = ImVec4(0.24, 0.52, 0.88, 1.00)
    imgui.GetStyle().Colors[imgui.Col.SliderGrabActive] = ImVec4(0.26, 0.59, 0.98, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Button] = ImVec4(0.26, 0.59, 0.98, 0.40)
    imgui.GetStyle().Colors[imgui.Col.ButtonHovered] = ImVec4(0.26, 0.59, 0.98, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ButtonActive] = ImVec4(0.06, 0.53, 0.98, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Header] = ImVec4(0.26, 0.59, 0.98, 0.31)
    imgui.GetStyle().Colors[imgui.Col.HeaderHovered] = ImVec4(0.26, 0.59, 0.98, 0.80)
    imgui.GetStyle().Colors[imgui.Col.HeaderActive] = ImVec4(0.26, 0.59, 0.98, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Separator] = ImVec4(0.43, 0.43, 0.50, 0.50)
    imgui.GetStyle().Colors[imgui.Col.SeparatorHovered] = ImVec4(0.26, 0.59, 0.98, 0.78)
    imgui.GetStyle().Colors[imgui.Col.SeparatorActive] = ImVec4(0.26, 0.59, 0.98, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ResizeGrip] = ImVec4(0.26, 0.59, 0.98, 0.25)
    imgui.GetStyle().Colors[imgui.Col.ResizeGripHovered] = ImVec4(0.26, 0.59, 0.98, 0.67)
    imgui.GetStyle().Colors[imgui.Col.ResizeGripActive] = ImVec4(0.26, 0.59, 0.98, 0.95)
    imgui.GetStyle().Colors[imgui.Col.TextSelectedBg] = ImVec4(0.26, 0.59, 0.98, 0.35)
    imgui.GetStyle().Colors[imgui.Col.Text] = ImVec4(1.00, 1.00, 1.00, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TextDisabled] = ImVec4(0.50, 0.50, 0.50, 1.00)
    imgui.GetStyle().Colors[imgui.Col.WindowBg] = ImVec4(0.06, 0.53, 0.98, 0.70)
    imgui.GetStyle().Colors[imgui.Col.ChildBg] = ImVec4(0.10, 0.10, 0.10, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PopupBg] = ImVec4(0.06, 0.53, 0.98, 0.70)
    imgui.GetStyle().Colors[imgui.Col.Border] = ImVec4(0.43, 0.43, 0.50, 0.50)
    imgui.GetStyle().Colors[imgui.Col.BorderShadow] = ImVec4(0.00, 0.00, 0.00, 0.00)
    imgui.GetStyle().Colors[imgui.Col.MenuBarBg] = ImVec4(0.14, 0.14, 0.14, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarBg] = ImVec4(0.02, 0.02, 0.02, 0.53)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrab] = ImVec4(0.31, 0.31, 0.31, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabHovered] = ImVec4(0.41, 0.41, 0.41, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabActive] = ImVec4(0.51, 0.51, 0.51, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotLines] = ImVec4(0.61, 0.61, 0.61, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotLinesHovered] = ImVec4(1.00, 0.43, 0.35, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotHistogram] = ImVec4(0.90, 0.70, 0.00, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotHistogramHovered] = ImVec4(1.00, 0.60, 0.00, 1.00)
    end
  },
  {
    change = function()
    imgui.GetStyle().WindowPadding = imgui.ImVec2(5, 5)
    imgui.GetStyle().FramePadding = imgui.ImVec2(5, 5)
    imgui.GetStyle().ItemSpacing = imgui.ImVec2(5, 5)
    imgui.GetStyle().ItemInnerSpacing = imgui.ImVec2(2, 2)
    imgui.GetStyle().TouchExtraPadding = imgui.ImVec2(0, 0)
    imgui.GetStyle().IndentSpacing = 0
    imgui.GetStyle().ScrollbarSize = 10
    imgui.GetStyle().GrabMinSize = 10

--==[ BORDER ]==--
    imgui.GetStyle().WindowBorderSize = 1
    imgui.GetStyle().ChildBorderSize = 1
    imgui.GetStyle().PopupBorderSize = 1
    imgui.GetStyle().FrameBorderSize = 1
    imgui.GetStyle().TabBorderSize = 1

--==[ ROUNDING ]==--
    imgui.GetStyle().WindowRounding = 5
    imgui.GetStyle().ChildRounding = 5
    imgui.GetStyle().FrameRounding = 5
    imgui.GetStyle().PopupRounding = 5
    imgui.GetStyle().ScrollbarRounding = 5
    imgui.GetStyle().GrabRounding = 5
    imgui.GetStyle().TabRounding = 5

--==[ ALIGN ]==--
    imgui.GetStyle().WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
    imgui.GetStyle().ButtonTextAlign = imgui.ImVec2(0.5, 0.5)
    imgui.GetStyle().SelectableTextAlign = imgui.ImVec2(0.5, 0.5)

--==[ COLORS ]==--
    imgui.GetStyle().Colors[imgui.Col.Text] = imgui.ImVec4(1.00, 1.00, 1.00, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TextDisabled] = imgui.ImVec4(0.50, 0.50, 0.50, 1.00)
    imgui.GetStyle().Colors[imgui.Col.WindowBg] = imgui.ImVec4(0.07, 0.07, 0.07, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ChildBg] = imgui.ImVec4(0.07, 0.07, 0.07, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PopupBg] = imgui.ImVec4(0.07, 0.07, 0.07, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Border] = imgui.ImVec4(0.25, 0.25, 0.26, 0.54)
    imgui.GetStyle().Colors[imgui.Col.BorderShadow] = imgui.ImVec4(0.00, 0.00, 0.00, 0.00)
    imgui.GetStyle().Colors[imgui.Col.FrameBg] = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
    imgui.GetStyle().Colors[imgui.Col.FrameBgHovered] = imgui.ImVec4(0.25, 0.25, 0.26, 1.00)
    imgui.GetStyle().Colors[imgui.Col.FrameBgActive] = imgui.ImVec4(0.25, 0.25, 0.26, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TitleBg] = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TitleBgActive] = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TitleBgCollapsed] = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
    imgui.GetStyle().Colors[imgui.Col.MenuBarBg] = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarBg] = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrab] = imgui.ImVec4(0.00, 0.00, 0.00, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabHovered] = imgui.ImVec4(0.41, 0.41, 0.41, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabActive] = imgui.ImVec4(0.51, 0.51, 0.51, 1.00)
    imgui.GetStyle().Colors[imgui.Col.CheckMark] = imgui.ImVec4(1.00, 1.00, 1.00, 1.00)
    imgui.GetStyle().Colors[imgui.Col.SliderGrab] = imgui.ImVec4(0.21, 0.20, 0.20, 1.00)
    imgui.GetStyle().Colors[imgui.Col.SliderGrabActive] = imgui.ImVec4(0.21, 0.20, 0.20, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Button] = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ButtonHovered] = imgui.ImVec4(0.21, 0.20, 0.20, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ButtonActive] = imgui.ImVec4(0.41, 0.41, 0.41, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Header] = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
    imgui.GetStyle().Colors[imgui.Col.HeaderHovered] = imgui.ImVec4(0.20, 0.20, 0.20, 1.00)
    imgui.GetStyle().Colors[imgui.Col.HeaderActive] = imgui.ImVec4(0.47, 0.47, 0.47, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Separator] = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
    imgui.GetStyle().Colors[imgui.Col.SeparatorHovered] = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
    imgui.GetStyle().Colors[imgui.Col.SeparatorActive] = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ResizeGrip] = imgui.ImVec4(1.00, 1.00, 1.00, 0.25)
    imgui.GetStyle().Colors[imgui.Col.ResizeGripHovered] = imgui.ImVec4(1.00, 1.00, 1.00, 0.67)
    imgui.GetStyle().Colors[imgui.Col.ResizeGripActive] = imgui.ImVec4(1.00, 1.00, 1.00, 0.95)
    imgui.GetStyle().Colors[imgui.Col.Tab] = imgui.ImVec4(0.12, 0.12, 0.12, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TabHovered] = imgui.ImVec4(0.28, 0.28, 0.28, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TabActive] = imgui.ImVec4(0.30, 0.30, 0.30, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TabUnfocused] = imgui.ImVec4(0.07, 0.10, 0.15, 0.97)
    imgui.GetStyle().Colors[imgui.Col.TabUnfocusedActive] = imgui.ImVec4(0.14, 0.26, 0.42, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotLines] = imgui.ImVec4(0.61, 0.61, 0.61, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotLinesHovered] = imgui.ImVec4(1.00, 0.43, 0.35, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotHistogram] = imgui.ImVec4(0.90, 0.70, 0.00, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotHistogramHovered] = imgui.ImVec4(1.00, 0.60, 0.00, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TextSelectedBg] = imgui.ImVec4(1.00, 0.00, 0.00, 0.35)
    imgui.GetStyle().Colors[imgui.Col.DragDropTarget] = imgui.ImVec4(1.00, 1.00, 0.00, 0.90)
    imgui.GetStyle().Colors[imgui.Col.NavHighlight] = imgui.ImVec4(0.26, 0.59, 0.98, 1.00)
    imgui.GetStyle().Colors[imgui.Col.NavWindowingHighlight] = imgui.ImVec4(1.00, 1.00, 1.00, 0.70)
    imgui.GetStyle().Colors[imgui.Col.NavWindowingDimBg] = imgui.ImVec4(0.80, 0.80, 0.80, 0.20)
    imgui.GetStyle().Colors[imgui.Col.ModalWindowDimBg] = imgui.ImVec4(0.00, 0.00, 0.00, 0.70)
    end
  },

  {
    change = function()
    local ImVec4 = imgui.ImVec4
    imgui.GetStyle().FramePadding = imgui.ImVec2(3.5, 3.5)
    imgui.GetStyle().FrameRounding = 3
    imgui.GetStyle().ChildRounding = 2
    imgui.GetStyle().WindowTitleAlign = imgui.ImVec2(0.5, 0.5)
    imgui.GetStyle().WindowRounding = 2
    imgui.GetStyle().ItemSpacing = imgui.ImVec2(5.0, 4.0)
    imgui.GetStyle().ScrollbarSize = 13.0
    imgui.GetStyle().ScrollbarRounding = 0
    imgui.GetStyle().GrabMinSize = 8.0
    imgui.GetStyle().GrabRounding = 1.0
    imgui.GetStyle().WindowPadding = imgui.ImVec2(4.0, 4.0)
    imgui.GetStyle().ButtonTextAlign = imgui.ImVec2(0.0, 0.5)

    imgui.GetStyle().Colors[imgui.Col.WindowBg] = imgui.ImVec4(0.14, 0.12, 0.16, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ChildBg] = imgui.ImVec4(0.30, 0.20, 0.39, 0.00)
    imgui.GetStyle().Colors[imgui.Col.PopupBg] = imgui.ImVec4(0.05, 0.05, 0.10, 0.90)
    imgui.GetStyle().Colors[imgui.Col.Border] = imgui.ImVec4(0.89, 0.85, 0.92, 0.30)
    imgui.GetStyle().Colors[imgui.Col.BorderShadow] = imgui.ImVec4(0.00, 0.00, 0.00, 0.00)
    imgui.GetStyle().Colors[imgui.Col.FrameBg] = imgui.ImVec4(0.30, 0.20, 0.39, 1.00)
    imgui.GetStyle().Colors[imgui.Col.FrameBgHovered] = imgui.ImVec4(0.41, 0.19, 0.63, 0.68)
    imgui.GetStyle().Colors[imgui.Col.FrameBgActive] = imgui.ImVec4(0.41, 0.19, 0.63, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TitleBg] = imgui.ImVec4(0.41, 0.19, 0.63, 0.45)
    imgui.GetStyle().Colors[imgui.Col.TitleBgCollapsed] = imgui.ImVec4(0.41, 0.19, 0.63, 0.35)
    imgui.GetStyle().Colors[imgui.Col.TitleBgActive] = imgui.ImVec4(0.41, 0.19, 0.63, 0.78)
    imgui.GetStyle().Colors[imgui.Col.MenuBarBg] = imgui.ImVec4(0.30, 0.20, 0.39, 0.57)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarBg] = imgui.ImVec4(0.30, 0.20, 0.39, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrab] = imgui.ImVec4(0.41, 0.19, 0.63, 0.31)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabHovered] = imgui.ImVec4(0.41, 0.19, 0.63, 0.78)
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabActive] = imgui.ImVec4(0.41, 0.19, 0.63, 1.00)
    imgui.GetStyle().Colors[imgui.Col.CheckMark] = imgui.ImVec4(0.56, 0.61, 1.00, 1.00)
    imgui.GetStyle().Colors[imgui.Col.SliderGrab] = imgui.ImVec4(0.41, 0.19, 0.63, 0.24)
    imgui.GetStyle().Colors[imgui.Col.SliderGrabActive] = imgui.ImVec4(0.41, 0.19, 0.63, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Button] = imgui.ImVec4(0.41, 0.19, 0.63, 0.44)
    imgui.GetStyle().Colors[imgui.Col.ButtonHovered] = imgui.ImVec4(0.41, 0.19, 0.63, 0.86)
    imgui.GetStyle().Colors[imgui.Col.ButtonActive] = imgui.ImVec4(0.64, 0.33, 0.94, 1.00)
    imgui.GetStyle().Colors[imgui.Col.Header] = imgui.ImVec4(0.41, 0.19, 0.63, 0.76)
    imgui.GetStyle().Colors[imgui.Col.HeaderHovered] = imgui.ImVec4(0.41, 0.19, 0.63, 0.86)
    imgui.GetStyle().Colors[imgui.Col.HeaderActive] = imgui.ImVec4(0.41, 0.19, 0.63, 1.00)
    imgui.GetStyle().Colors[imgui.Col.ResizeGrip] = imgui.ImVec4(0.41, 0.19, 0.63, 0.20)
    imgui.GetStyle().Colors[imgui.Col.ResizeGripHovered] = imgui.ImVec4(0.41, 0.19, 0.63, 0.78)
    imgui.GetStyle().Colors[imgui.Col.ResizeGripActive] = imgui.ImVec4(0.41, 0.19, 0.63, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotLines] = imgui.ImVec4(0.89, 0.85, 0.92, 0.63)
    imgui.GetStyle().Colors[imgui.Col.PlotLinesHovered] = imgui.ImVec4(0.41, 0.19, 0.63, 1.00)
    imgui.GetStyle().Colors[imgui.Col.PlotHistogram] = imgui.ImVec4(0.89, 0.85, 0.92, 0.63)
    imgui.GetStyle().Colors[imgui.Col.PlotHistogramHovered] = imgui.ImVec4(0.41, 0.19, 0.63, 1.00)
    imgui.GetStyle().Colors[imgui.Col.TextSelectedBg] = imgui.ImVec4(0.41, 0.19, 0.63, 0.43)
    end
  },

  {
    change = function()
    local ImVec4 = imgui.ImVec4
    local style = imgui.GetStyle()
    local colors = style.Colors
    local clr = imgui.Col
    imgui.GetStyle().WindowPadding = imgui.ImVec2(4, 4)
    imgui.GetStyle().FramePadding = imgui.ImVec2(4, 3)
    imgui.GetStyle().ItemSpacing = imgui.ImVec2(8, 4)
    imgui.GetStyle().ItemInnerSpacing = imgui.ImVec2(4, 4)
    imgui.GetStyle().TouchExtraPadding = imgui.ImVec2(0, 0)

    imgui.GetStyle().IndentSpacing = 21
    imgui.GetStyle().ScrollbarSize = 14
    imgui.GetStyle().GrabMinSize = 10

    imgui.GetStyle().WindowBorderSize = 0
    imgui.GetStyle().ChildBorderSize = 1
    imgui.GetStyle().PopupBorderSize = 1
    imgui.GetStyle().FrameBorderSize = 1
    imgui.GetStyle().TabBorderSize = 0

    imgui.GetStyle().WindowRounding = 5
    imgui.GetStyle().ChildRounding = 5
    imgui.GetStyle().PopupRounding = 5
    imgui.GetStyle().FrameRounding = 5
    imgui.GetStyle().ScrollbarRounding = 2.5
    imgui.GetStyle().GrabRounding = 5
    imgui.GetStyle().TabRounding = 5

    imgui.GetStyle().WindowTitleAlign = imgui.ImVec2(0.50, 0.50)

-->> Colors
    colors[clr.Text] = ImVec4(1.00, 1.00, 1.00, 1.00)
    colors[clr.TextDisabled] = ImVec4(0.50, 0.50, 0.50, 1.00)

    colors[clr.WindowBg] = ImVec4(0.15, 0.16, 0.37, 1.00)
    colors[clr.ChildBg] = ImVec4(0.17, 0.18, 0.43, 1.00)
    colors[clr.PopupBg] = colors[clr.WindowBg]

    colors[clr.Border] = ImVec4(0.33, 0.34, 0.62, 1.00)
    colors[clr.BorderShadow] = ImVec4(0.00, 0.00, 0.00, 0.00)

    colors[clr.TitleBg] = ImVec4(0.18, 0.20, 0.46, 1.00)
    colors[clr.TitleBgActive] = ImVec4(0.18, 0.20, 0.46, 1.00)
    colors[clr.TitleBgCollapsed] = ImVec4(0.18, 0.20, 0.46, 1.00)
    colors[clr.MenuBarBg] = colors[clr.ChildBg]

    colors[clr.ScrollbarBg] = ImVec4(0.14, 0.14, 0.36, 1.00)
    colors[clr.ScrollbarGrab] = ImVec4(0.22, 0.22, 0.53, 1.00)
    colors[clr.ScrollbarGrabHovered] = ImVec4(0.20, 0.21, 0.53, 1.00)
    colors[clr.ScrollbarGrabActive] = ImVec4(0.25, 0.25, 0.58, 1.00)

    colors[clr.Button] = ImVec4(0.25, 0.25, 0.58, 1.00)
    colors[clr.ButtonHovered] = ImVec4(0.23, 0.23, 0.55, 1.00)
    colors[clr.ButtonActive] = ImVec4(0.27, 0.27, 0.62, 1.00)

    colors[clr.CheckMark] = ImVec4(0.39, 0.39, 0.83, 1.00)
    colors[clr.SliderGrab] = ImVec4(0.39, 0.39, 0.83, 1.00)
    colors[clr.SliderGrabActive] = ImVec4(0.48, 0.48, 0.96, 1.00)

    colors[clr.FrameBg] = colors[clr.Button]
    colors[clr.FrameBgHovered] = colors[clr.ButtonHovered]
    colors[clr.FrameBgActive] = colors[clr.ButtonActive]

    colors[clr.Header] = colors[clr.Button]
    colors[clr.HeaderHovered] = colors[clr.ButtonHovered]
    colors[clr.HeaderActive] = colors[clr.ButtonActive]

    colors[clr.Separator] = ImVec4(0.43, 0.43, 0.50, 0.50)
    colors[clr.SeparatorHovered] = colors[clr.SliderGrabActive]
    colors[clr.SeparatorActive] = colors[clr.SliderGrabActive]

    colors[clr.ResizeGrip] = colors[clr.Button]
    colors[clr.ResizeGripHovered] = colors[clr.ButtonHovered]
    colors[clr.ResizeGripActive] = colors[clr.ButtonActive]

    colors[clr.Tab] = colors[clr.Button]
    colors[clr.TabHovered] = colors[clr.ButtonHovered]
    colors[clr.TabActive] = colors[clr.ButtonActive]
    colors[clr.TabUnfocused] = colors[clr.Button]
    colors[clr.TabUnfocusedActive] = colors[clr.Button]

    colors[clr.PlotLines] = ImVec4(0.61, 0.61, 0.61, 1.00)
    colors[clr.PlotLinesHovered] = ImVec4(1.00, 0.43, 0.35, 1.00)
    colors[clr.PlotHistogram] = ImVec4(0.90, 0.70, 0.00, 1.00)
    colors[clr.PlotHistogramHovered] = ImVec4(1.00, 0.60, 0.00, 1.00)

    colors[clr.TextSelectedBg] = ImVec4(0.33, 0.33, 0.57, 1.00)
    colors[clr.DragDropTarget] = ImVec4(1.00, 1.00, 0.00, 0.90)

    colors[clr.NavHighlight] = ImVec4(0.26, 0.59, 0.98, 1.00)
    colors[clr.NavWindowingHighlight] = ImVec4(1.00, 1.00, 1.00, 0.70)
    colors[clr.NavWindowingDimBg] = ImVec4(0.80, 0.80, 0.80, 0.20)

    colors[clr.ModalWindowDimBg] = ImVec4(0.00, 0.00, 0.00, 0.90)
    end
  },

  {
    change = function()
    local ImVec4 = imgui.ImVec4
    imgui.GetStyle().WindowPadding = imgui.ImVec2(5, 5)
    imgui.GetStyle().FramePadding = imgui.ImVec2(5, 5)
    imgui.GetStyle().ItemSpacing = imgui.ImVec2(5, 5)
    imgui.GetStyle().ItemInnerSpacing = imgui.ImVec2(2, 2)
    imgui.GetStyle().TouchExtraPadding = imgui.ImVec2(0, 0)
    imgui.GetStyle().IndentSpacing = 0
    imgui.GetStyle().ScrollbarSize = 10
    imgui.GetStyle().GrabMinSize = 10
    imgui.GetStyle().WindowBorderSize = 1
    imgui.GetStyle().ChildBorderSize = 1

    imgui.GetStyle().PopupBorderSize = 1
    imgui.GetStyle().FrameBorderSize = 1
    imgui.GetStyle().TabBorderSize = 1
    imgui.GetStyle().WindowRounding = 8
    imgui.GetStyle().ChildRounding = 8
    imgui.GetStyle().FrameRounding = 8
    imgui.GetStyle().PopupRounding = 8
    imgui.GetStyle().ScrollbarRounding = 8
    imgui.GetStyle().GrabRounding = 8
    imgui.GetStyle().TabRounding = 8

    imgui.GetStyle().Colors[imgui.Col.Text] = ImVec4(1.00, 1.00, 1.00, 1.00);
    imgui.GetStyle().Colors[imgui.Col.TextDisabled] = ImVec4(1.00, 1.00, 1.00, 0.43);
    imgui.GetStyle().Colors[imgui.Col.WindowBg] = ImVec4(0.00, 0.00, 0.00, 0.90);
    imgui.GetStyle().Colors[imgui.Col.ChildBg] = ImVec4(1.00, 1.00, 1.00, 0.07);
    imgui.GetStyle().Colors[imgui.Col.PopupBg] = ImVec4(0.00, 0.00, 0.00, 0.94);
    imgui.GetStyle().Colors[imgui.Col.Border] = ImVec4(1.00, 1.00, 1.00, 0.00);
    imgui.GetStyle().Colors[imgui.Col.BorderShadow] = ImVec4(1.00, 0.00, 0.00, 0.32);
    imgui.GetStyle().Colors[imgui.Col.FrameBg] = ImVec4(1.00, 1.00, 1.00, 0.09);
    imgui.GetStyle().Colors[imgui.Col.FrameBgHovered] = ImVec4(1.00, 1.00, 1.00, 0.17);
    imgui.GetStyle().Colors[imgui.Col.FrameBgActive] = ImVec4(1.00, 1.00, 1.00, 0.26);
    imgui.GetStyle().Colors[imgui.Col.TitleBg] = ImVec4(0.19, 0.00, 0.00, 1.00);
    imgui.GetStyle().Colors[imgui.Col.TitleBgActive] = ImVec4(0.46, 0.00, 0.00, 1.00);
    imgui.GetStyle().Colors[imgui.Col.TitleBgCollapsed] = ImVec4(0.20, 0.00, 0.00, 1.00);
    imgui.GetStyle().Colors[imgui.Col.MenuBarBg] = ImVec4(0.14, 0.03, 0.03, 1.00);
    imgui.GetStyle().Colors[imgui.Col.ScrollbarBg] = ImVec4(0.19, 0.00, 0.00, 0.53);
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrab] = ImVec4(1.00, 1.00, 1.00, 0.11);
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabHovered] = ImVec4(1.00, 1.00, 1.00, 0.24);
    imgui.GetStyle().Colors[imgui.Col.ScrollbarGrabActive] = ImVec4(1.00, 1.00, 1.00, 0.35);
    imgui.GetStyle().Colors[imgui.Col.CheckMark] = ImVec4(1.00, 1.00, 1.00, 1.00);
    imgui.GetStyle().Colors[imgui.Col.SliderGrab] = ImVec4(1.00, 0.00, 0.00, 0.34);
    imgui.GetStyle().Colors[imgui.Col.SliderGrabActive] = ImVec4(1.00, 0.00, 0.00, 0.51);
    imgui.GetStyle().Colors[imgui.Col.Button] = ImVec4(1.00, 0.00, 0.00, 0.19);
    imgui.GetStyle().Colors[imgui.Col.ButtonHovered] = ImVec4(1.00, 0.00, 0.00, 0.31);
    imgui.GetStyle().Colors[imgui.Col.ButtonActive] = ImVec4(1.00, 0.00, 0.00, 0.46);
    imgui.GetStyle().Colors[imgui.Col.Header] = ImVec4(1.00, 0.00, 0.00, 0.19);
    imgui.GetStyle().Colors[imgui.Col.HeaderHovered] = ImVec4(1.00, 0.00, 0.00, 0.30);
    imgui.GetStyle().Colors[imgui.Col.HeaderActive] = ImVec4(1.00, 0.00, 0.00, 0.50);
    imgui.GetStyle().Colors[imgui.Col.Separator] = ImVec4(1.00, 0.00, 0.00, 0.41);
    imgui.GetStyle().Colors[imgui.Col.SeparatorHovered] = ImVec4(1.00, 1.00, 1.00, 0.78);
    imgui.GetStyle().Colors[imgui.Col.SeparatorActive] = ImVec4(1.00, 1.00, 1.00, 1.00);
    imgui.GetStyle().Colors[imgui.Col.ResizeGrip] = ImVec4(0.19, 0.00, 0.00, 0.53);
    imgui.GetStyle().Colors[imgui.Col.ResizeGripHovered] = ImVec4(0.43, 0.00, 0.00, 0.75);
    imgui.GetStyle().Colors[imgui.Col.ResizeGripActive] = ImVec4(0.53, 0.00, 0.00, 0.95);
    imgui.GetStyle().Colors[imgui.Col.Tab] = ImVec4(1.00, 0.00, 0.00, 0.27);
    imgui.GetStyle().Colors[imgui.Col.TabHovered] = ImVec4(1.00, 0.00, 0.00, 0.48);
    imgui.GetStyle().Colors[imgui.Col.TabActive] = ImVec4(1.00, 0.00, 0.00, 0.60);
    imgui.GetStyle().Colors[imgui.Col.TabUnfocused] = ImVec4(1.00, 0.00, 0.00, 0.27);
    imgui.GetStyle().Colors[imgui.Col.TabUnfocusedActive] = ImVec4(1.00, 0.00, 0.00, 0.54);
    imgui.GetStyle().Colors[imgui.Col.PlotLines] = ImVec4(0.61, 0.61, 0.61, 1.00);
    imgui.GetStyle().Colors[imgui.Col.PlotLinesHovered] = ImVec4(1.00, 0.43, 0.35, 1.00);
    imgui.GetStyle().Colors[imgui.Col.PlotHistogram] = ImVec4(0.90, 0.70, 0.00, 1.00);
    imgui.GetStyle().Colors[imgui.Col.PlotHistogramHovered] = ImVec4(1.00, 0.60, 0.00, 1.00);
    imgui.GetStyle().Colors[imgui.Col.TextSelectedBg] = ImVec4(1.00, 1.00, 1.00, 0.35);
    imgui.GetStyle().Colors[imgui.Col.DragDropTarget] = ImVec4(1.00, 1.00, 0.00, 0.90);
    imgui.GetStyle().Colors[imgui.Col.NavHighlight] = ImVec4(0.26, 0.59, 0.98, 1.00);
    imgui.GetStyle().Colors[imgui.Col.NavWindowingHighlight] = ImVec4(1.00, 1.00, 1.00, 0.70);
    imgui.GetStyle().Colors[imgui.Col.NavWindowingDimBg] = ImVec4(0.80, 0.80, 0.80, 0.20);
    imgui.GetStyle().Colors[imgui.Col.ModalWindowDimBg] = ImVec4(0.80, 0.80, 0.80, 0.35);
    end
  }


}


function decor()
imgui.SwitchContext()
local ImVec4 = imgui.ImVec4
imgui.GetStyle().WindowPadding = imgui.ImVec2(5, 5)
imgui.GetStyle().FramePadding = imgui.ImVec2(5, 5)
imgui.GetStyle().ItemSpacing = imgui.ImVec2(5, 5)
imgui.GetStyle().ItemInnerSpacing = imgui.ImVec2(2, 2)
imgui.GetStyle().TouchExtraPadding = imgui.ImVec2(0, 0)
imgui.GetStyle().IndentSpacing = 0
imgui.GetStyle().ScrollbarSize = 10
imgui.GetStyle().GrabMinSize = 10
imgui.GetStyle().WindowBorderSize = 1
imgui.GetStyle().ChildBorderSize = 1
imgui.GetStyle().PopupBorderSize = 1
imgui.GetStyle().FrameBorderSize = 1
imgui.GetStyle().TabBorderSize = 1
imgui.GetStyle().WindowRounding = 8
imgui.GetStyle().ChildRounding = 8
imgui.GetStyle().FrameRounding = 8
imgui.GetStyle().PopupRounding = 8
imgui.GetStyle().ScrollbarRounding = 8
imgui.GetStyle().GrabRounding = 8
imgui.GetStyle().TabRounding = 8
end
--------