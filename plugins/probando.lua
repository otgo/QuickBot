local action = function(msg, matches)
  local url = matches[1]
  local receiver = api.sendPhoto(msg)
  send_photo_from_url(receiver, url)
end

return {
  action = action,
  triggers = {
    "(https?://[%w-_%.%?%.:/%+=&]+%.png)$",
    "(https?://[%w-_%.%?%.:/%+=&]+%.jpg)$",
    "(https?://[%w-_%.%?%.:/%+=&]+%.jpeg)$",
}
}