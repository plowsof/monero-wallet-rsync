# monero-wallet-rsync
proof of concept using monerujo installed with fdroid and a termux widget. 

Same can be done for your desktop with a simple .desktop launcher 

This is for people who:
- Are running a full node on a low powered device which is on 24/7
- Who also have a restricted rpc-wallet running on it which is autosaved (e.g. every 10 minutes)
- That wish to access the wallet on a mobile device

##issues

Data will be lost such as recipient address after making a payment on the mobile device when you rsync the files 
