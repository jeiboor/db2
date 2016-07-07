do

function run(msg, matches)
local start = [<b>Hi</b>
<code>send</code> /contact <code>to show admin phone</code> ✌️😐]
  if matches[1] == start and if is_sudo(msg) then
    send_large_msg("user#id" ..msg.from.id, start)
    return 
  end
end

  return {
    patterns = {
      "^/start$"
  }
  run = run
} 
end 
