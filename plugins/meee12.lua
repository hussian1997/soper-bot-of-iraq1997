--[[
# @hussian_9
# @AHMED_ALOBAAIDE
##
]]
do

local function oscar(msg ,matches)
        if is_sudo(msg) then
local url = "http://d.top4top.net/m_254khio1.mp4"
local mustafadev = download_to_file(url,'DeaD.jpg')
      send_video(get_receiver(msg),mustafadev,ok_cb,false)

        elseif is_owner(msg) then
        local url = "http://f.top4top.net/m_254tjlm1.mp4"
local mustafadev = download_to_file(url,'DeaD.jpg')

      send_video(get_receiver(msg),mustafadev,ok_cb,false)
        elseif is_momod(msg) then
        local url = "http://f.top4top.net/m_254z4m01.mp4"
local mustafadev = download_to_file(url,'DeaD.jpg')

   send_video(get_receiver(msg),mustafadev,ok_cb,false)
        elseif not is_momod(msg) then
        local url = "http://f.top4top.net/m_254sc7b1.mp4"
local mustafadev = download_to_file(url,'DeaD.jpg')

     send_video(get_receiver(msg),mustafadev,ok_cb,false)
        end
end

return { 
    patterns = { 
        "^(me)$"
    },
    run = oscar,
    
}
--by @AHMED_ALOBAIDE
end
