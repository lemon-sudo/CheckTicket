import yagmail
import sys
import time
import datetime

smtpserver='smtp.qq.com'
senderaddr='8888@foxmail.com'
senderpassword='8888'
AdminEmail='8888@qq.com'

recieveemail='8888@qq.com'

number=sys.argv[1]

nowTime = datetime.datetime.now().strftime('%Y-%m-%d')

mail=yagmail.SMTP(senderaddr, senderpassword,smtpserver)

mail.send(recieveemail, "图书馆余票检测",nowTime+':'+number)

time.sleep(10)
