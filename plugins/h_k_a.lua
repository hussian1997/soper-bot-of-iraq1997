local function tomp3(msg, success, result)
  local receiver = get_receiver(msg)
  if success then
    local file = 'MR VICTOR.mp3'
    print('File downloaded to:', result)
    os.rename(result, file) --@h_k_a
    print('File moved to:', file)
    send_document(get_receiver(msg), file, ok_cb, false)
	send_large_msg(receiver, 'تم -_-', ok_cb, false)
    redis:del("audio:mp3")
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'فشل .. اعد المحاوله', ok_cb, false)
  end
end
--@h_k_a
local function h_k_a(msg,matches)
    local receiver = get_receiver(msg)
    local group = msg.to.id
    if msg.media then
       if msg.media.type == 'audio' and redis:get("audio:mp3") then
        if redis:get("audio:mp3") == 'waiting' then
          load_audio(msg.id, tomp3, msg)
        end
       end
    end
    if matches[1] == "حول الصوت" and is_owner(msg) then
     redis:set("audio:mp3", "waiting")
     return 'قم ب عمل اعاده توجيه للصوت او ارسل مقطع صوتي ليتم تحويله الى mp3 .. انتظر قليلا بعد ارسال المقطع الصوتي'
    end
	if matches[1]:lower() == 'عرض الصوت' then 
	send_document(get_receiver(msg), "MR VICTOR.mp3", ok_cb, false)
end
end
return { --@h_k_a
  patterns = {
 "^(حول الصوت)$",
 "^(عرض الصوت)$",
 "%[(audio)%]",
  },
  run = h_k_a,
}

-- تم الكتابه بواسطه @h_k_a

-- لا تصير مطي و تغير الحقوق
