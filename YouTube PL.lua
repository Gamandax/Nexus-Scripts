--[[dont use play list link]]--
--[[THIS IS EXAMPLE API]]--
--[[man dont obfuscate your fucking script,idiot lol]]--
--[[it will take about 30 seconds to load]]
local YT_URL = "https://youtu.be/MrD05HVGVIQ?si=p7FdeuRiM0Hswrxn"

local HttpService = game:GetService("HttpService")

local request = syn and syn.request or http_request or request or (http and http.request)
if not request then
    error("No supported request function found! This script requires syn.request, http_request, or similar.")
end

local function sanitizeFilename(name)
    return name:gsub('[\\/:*?"<>|]', "_")
end

local function debugPrint(label, value)
    print("DEBUG [" .. label .. "]:", typeof(value) == "string" and value:sub(1, 200) or value)
end

local function isDirectVideoUrl(str)
    return typeof(str)=="string" and str:find("^https?://") and (str:find("%.mp4") or str:find("googlevideo%.com"))
end

local function getVideoTitle(youtubeURL)
    local cmd = youtubeURL .. " --get-title"
    local api = "https://ytdlp.online/stream?command=" .. HttpService:UrlEncode(cmd)
    local res = request({Url = api, Method = "GET"})
    debugPrint("TITLE_RESPONSE", res and res.Body or "nil")
    if res and res.Body then
        local title = res.Body:match("data:%s*(.-)\n")
        if title and #title > 0 then
            return sanitizeFilename(title) .. ".mp4"
        end
    end
    return "YouTubeVideo.mp4"
end

local function getDirectLink(youtubeURL)
    local tries = {
        youtubeURL .. " -f 18 --get-url",
        youtubeURL .. ' -f "best[ext=mp4]" --get-url'
    }
    for _,cmd in ipairs(tries) do
        local api = "https://ytdlp.online/stream?command=" .. HttpService:UrlEncode(cmd)
        local res = request({Url = api, Method = "GET"})
        debugPrint("API_RESPONSE", res and res.Body or "nil")
        if res and res.Body then
            local link = res.Body:match("data:%s*(https://[^\n]+)")
            if link and isDirectVideoUrl(link) then
                return link
            end
        end
    end
    return nil, "Failed to get direct mp4 link (could not find a video URL in API response)."
end

local function downloadVideo(url, filename)
    local res = request({
        Url = url,
        Method = "GET",
        Headers = { ["User-Agent"] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" }
    })
    debugPrint("DOWNLOAD_RESPONSE", res and (res.Body and ("Body: "..#res.Body.." bytes") or "No Body") or "nil")
    if not res or not res.Body or #res.Body < 1000 then
        return nil, "Failed to download video (response too small or nil)"
    end
    if isfile and isfile(filename) then delfile(filename) end
    writefile(filename, res.Body)
    return true
end

local FILE_NAME = getVideoTitle(YT_URL)
print("Video file will be saved as:", FILE_NAME)

local directLink, err = getDirectLink(YT_URL)
if not directLink then
    warn("Failed to get direct mp4 link:", err)
    return
end
print("Direct video link:", directLink)

local ok, err2 = downloadVideo(directLink, FILE_NAME)
if not ok then
    warn("Download failed:", err2)
    return
end

local video = Instance.new("VideoFrame")
video.Parent = game:GetService("CoreGui")
video.Size = UDim2.new(0, 640, 0, 360)
video.Position = UDim2.new(0.5, -320, 0.5, -180)
video.BackgroundColor3 = Color3.new(0,0,0)
video.Video = getcustomasset(FILE_NAME)
video.Playing = true
video.Visible = true
video.Volume = 1

print("Now playing:", FILE_NAME)
