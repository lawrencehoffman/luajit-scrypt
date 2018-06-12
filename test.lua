local scrypt = require('scrypt')

local allpass = true

local passphrase = "My cats's breath smells like cat food"
local mcf = scrypt.hash(passphrase)
local bad = scrypt.check(mcf, "this should fail")
local good = scrypt.check(mcf, passphrase)

io.write("Passphrase: " .. passphrase .. "\n")
io.write("MCF: " .. mcf .. "\n")

if not bad then 
  io.write("[+] Fail check works\n") 
else
  io.write("[!] Fail check fails\n")
  os.exit(1)
end

if good then 
  io.write("[+] Pass check works\n") 
else 
  io.write("[!] Pass check fails\n")
  os.exit(1)
end

os.exit(0)
