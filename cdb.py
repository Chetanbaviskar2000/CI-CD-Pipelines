import re

message = "Welcome to GeeksforGeeks"
GFGList1=[]
GFGList2=[]
if message[0] == message[5]:
     print(message)
else:
    print("Wrong data")
 
newwrd="Geeks"
if message[0] in message:
    GFGList1.append(message[0])
    print(GFGList1)
    if newwrd in message:
          GFGList1.append(newwrd)
          GFGList2.append(message)
    print(GFGList1 + GFGList2)
chetan = (GFGList1 + GFGList2)
test_tup = (9, 10)
chetan += test_tup
# printing result 
print("The container after addition : " + str(chetan)) 
new_lst = chetan[::-1]
print (new_lst)
count = 0 
if "Geeks" in message and chetan:
     print("yes")
 
def count_word_occurrences2(string, word):
     return len(re.findall(word, string))
string= "Welcome to GeeksforGeeks Welcome"
word = "Welcome"
count = count_word_occurrences2(string, word)
print(f"Occurrences of Word = {count} Time")

if count == 2:
    print (string + str(test_tup))

