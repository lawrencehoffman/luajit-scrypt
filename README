# SCRYPT
A luajit wrapper around libscrypt

## Stability
This project should not be considered stable or feature complete at this time.

### Usage
```lua
-- Include check and hash functions
local hash = require('scrypt').hash
local check = require('scrypt').check

-- ... get the user passphrase ...

-- Create the MCF
local mcf = hash(passphrase) 

-- ... checking that a hash matches ...
if check(mcf, passphrase) then
-- /snip/
end
```
