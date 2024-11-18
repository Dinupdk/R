import datetime

print(datetime.datetime.now())

print("Date:", datetime.date.today())
print("Time:", datetime.datetime.now().time())


print(datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S"))

import time

print(time.strftime("%Y-%m-%d %H:%M:%S"))