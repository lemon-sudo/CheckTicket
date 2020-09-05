import yagmail
import sys
import time
import datetime

smtpserver='smtp.qq.com'
senderaddr='lemonsprite@foxmail.com'
senderpassword='qrdkbwslwoahdjdc'
AdminEmail='3279294856@qq.com'

recieveemail='3279294856@qq.com'

number=sys.argv[1]

nowTime = datetime.datetime.now().strftime('%Y-%m-%d')

mail=yagmail.SMTP(senderaddr, senderpassword,smtpserver)

mail.send(recieveemail, "图书馆余票检测",nowTime+':'+number)

time.sleep(10)
