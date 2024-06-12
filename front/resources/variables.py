from selenium import webdriver

chrome_options = webdriver.ChromeOptions()

# Emulate random device
device_type = ["iPhone 4", "iPhone XR", "Nexus 4", "Galaxy S5", "Nokia N9" ,"Surface Duo", None]

chrome_options = webdriver.ChromeOptions()

mobile_emulation = {"deviceName": device_type[1]}
chrome_options.add_experimental_option("mobileEmulation", mobile_emulation)

OPTIONS = chrome_options