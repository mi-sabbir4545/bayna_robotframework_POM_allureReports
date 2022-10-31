*** Settings ***
Library    SeleniumLibrary
Variables   ../Pages/locatorsPage.py


*** Keywords ***
newtab
    ${windowhandles}=  Get Window Handles
    Switch Window  ${windowhandles}[1]
    close window
    Switch Window  ${windowhandles}[0]

scroll0     #scroll to facebbok
    scroll element into view  XPATH : //a[normalize-space()='Facebook']

scroll1     #scroll to logout
    scroll element into view  XPATH : //div[@class='customer-logout-link']//a[contains(text(),'Logout')]

scroll2     #scroll to LOGOUT
    scroll element into view  XPATH : //a[contains(text(),'Logout')]

scroll3     #scroll to Shipping & Delivery
    scroll element into view  XPATH: //span[normalize-space()='Shipping & Delivery']

scroll4     #scroll to down and up
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    Sleep    4
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)
    Sleep    4

scroll5     #scroll to current password
    scroll element into view  XPATH: //input[@id='password_current']

scroll6     #scroll to Save changes
    scroll element into view  XPATH: //button[normalize-space()='Save changes']

scroll7
    scroll element into view  XPATH: //a[@href='https://bayna.store/product/green-chicken-without-skin-whole-copy/']//img[@class='attachment-woocommerce_thumbnail size-woocommerce_thumbnail']

scroll8     #scroll to view all result
    scroll element into view  XPATH: //span[normalize-space()='View all results']

scroll10
    execute javascript   window.scrollTo(0,450)

scroll11     #scroll to post comment
    scroll element into view  XPATH: //input[@id='submit']

scroll12     #scroll to RESET PASSWORD
    scroll element into view  XPATH: //button[normalize-space()='Reset password']

scroll13     #scroll to RESET PASSWORD
    scroll element into view  XPATH: //input[@name='register']