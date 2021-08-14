# monero-wallet-rsync
proof of concept using monerujo installed with fdroid and a termux widget. 

Same can be done for your desktop with a simple .desktop launcher 

This is for people who:
- Are running a full node on a low powered device which is on 24/7
- Who also have a restricted rpc-wallet running on it which is autosaved (e.g. every 10 minutes)
- That wish to access the wallet on a mobile device

# A brief 'how to'
Node/wallet:
  - My node is running on a used 'EeeBox' which i purchased quite cheaply (better than a Pi because it has an intel cpu with crypto extensions)
  - I installed Debian using a minimal image (headless / no desktop gui only terminal)
  - Used this perfect guide to setup a node https://sethforprivacy.com/guides/run-a-monero-node-advanced/
  - Then started an rpc wallet using my wallet files (todo: more info on how this is done)
Mobile Android device:
  - Get f-droid
  - Install Monerujo, Termux and Termux Widget from fdroid (and allow Termux to display over other apps)
  - Additionally (using Termux) install sudo and rsync (todo: more info)
Widget:
  - Place the .shell script inside $HOME/.shortcuts folder
  - Drag the Termux (single) widget onto the home screen and select this shell script
Rsync setup:
  - Passwordless ssh login must be setup for your Android device to ssh into your node (todo: more info)
  - Modify the shell script with the correct wallet dir / username / hostname 
Finally:
  - Click the widget to rsync the wallet files and launch Monerujo.

# issues

Data will be lost such as recipient address after making a payment on the mobile device when you rsync the files e.g:
- Alice clicks the widget to sync the wallet files
- Who then makes a payment to Bob.
- After a long period of inactivity, Alice clicks the widget to use the wallet instantly
- Alice will see the payment to 'Unknown' instead of 'Bob'  
