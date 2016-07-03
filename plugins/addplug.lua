local function run(msg, matches)
  if is_sudo(msg) then
  local text = matches[1]
  local b = 1
  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
  local name = matches[2]
  local file = io.open("./plugins/"..name..".lua", "w")
  file:write(text)
  file:flush()
  file:close()
  return "Done ;-)" 
end
end 
return {
  description = "فقط سودو میتونه پلاگین اد کنه ;)",  
  usage = "پلاگین با موفقیت ثبت شد :)",
  patterns = {
    "^#ادپلاگ +(.+) (.*)$"
  },
  run = run
}
