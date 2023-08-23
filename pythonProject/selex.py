from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import time


driver = webdriver.Chrome()
driver.get("https://www.leafground.com/input.xhtml")
txt=driver.find_element(By.ID,"j_idt106:auto-complete_input")
txt.send_keys("ss")
time.sleep(1)
list=driver.find_elements(By.XPATH, "//span[@id='j_idt106:auto-complete_panel']/ul/li")
print(len(list))
for x in list:
    if x.text=="ss3":
        x.click()
        print(x.text)
        break

