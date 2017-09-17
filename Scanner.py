import sys
filename = open("dump.txt", "r")
dump = filename.read()
filename.close()
out = open("codes.txt", "w")


s2 = "New"
index = dump.find("CHAT NAME")

while dump[index] != '{':
    index = index - 1
    
dump = dump[index:]
last = dump.find(',{"id"')
#print dump[0:last]
group = dump.find('"group_id":"')
group = group + 12
groupid = ""
while dump[group] != '"':
    groupid = groupid + dump[group]
    group = group +1
out.write(groupid + "\n") #writes group id of the chat
print(groupid + "\n")
members = dump[dump.find("[")+1:dump.find("]")]
members = members.split(",")

itera = len(members)
names = []
ids = []
for i in range(0, itera):
    if members[i].find("nickname") != -1:
        names.append(members[i])
    if members[i].find('"id":') != -1:
        ids.append(members[i])
roll = len(names)
##for q in range(0, roll):
##    if names[q].find("Abrar") != -1:
##        transfer1 = names[q]
##        transfer2 = ids[q]
##        del names[q]
##        del ids[q]
##        names.append(transfer1)
##        ids.append(transfer2)
c = 1
for b in range(0, roll):
    g = ""
    out.write(ids[b][6:-1] + "\n")
    print(ids[b][6:-1] + "\n")
    print(names[b][6:-1] + "\n")
out.close()
exit()
#print names
#print ids


