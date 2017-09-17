# ChatSwat
A GroupMe chat hijack patrol bot

Created in October 2015

Chat hijackers often add themselves to a GroupMe using a group member's phone and then leave immediately to avoid removal. These hijackers then periodically rejoin a group to post troll or spam messages in the chat before vanishing once again. The only way to regain control of a hijacked chat is to make a new chat, which ends up being vulnerable to the same attack.

### ChatSwat 
* uses GroupMe's API to continuously watch over the chat members and immediately remove any anomalies
* can be activated after a hijack has occured to remove rejoining hijackers and regain control of the chat
* can be used as a preventative measure to stop hijacking from occurring in the first place
------
# Instructions
1. Replace your token ID in kickerbot.bat
2. Replace group name in Scanner.py
3. Run kickerbot.bat once and close it
4. Run Scanner.py
5. Open codes.txt, the first line is the group ID, the other lines are member names and corresponding IDs
