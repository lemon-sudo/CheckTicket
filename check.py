from selenium import webdriver
from selenium.webdriver.support.ui import Select
import time
import datetime
import sys
import os


BasicsPath='/root/CheckTicket'
chromedriverpath='/usr/bin/chromedriver'

Check_URL='http://ticket.zkjxsoft.com/?appid=wxc6471c39ea0a884b#/booking'

nowTime = datetime.datetime.now().strftime('%Y-%m-%d')

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument('--headless')
chrome_options.add_argument('--disable-gpu')
chrome_options.add_argument('--no-sandbox')
# chrome_options.add_argument('--disable-dev-shm-usage')
driver=webdriver.Chrome(options=chrome_options, executable_path=chromedriverpath)
driver.set_window_size(500,800)

driver.get(Check_URL)
time.sleep(2)

while 1:
    driver.refresh()
    time.sleep(2)
    data=open("./cache/list.html",'w+')
    print (driver.page_source,file=data)
    data.close()
    os.system("bash ./check.sh")
    os.system("bash ./SendMail.sh")
    time.sleep(1)
driver.quit()



