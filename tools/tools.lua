local tools = hs.menubar.new()
tools:setTitle("🔰")
tools:setIcon("")
tools:setMenu(
    {
        { title = "my menu item", fn = function() print("you clicked my menu item!") end },
        { 
            title = "沪江小d", 
            fn = function ()
                print("aaaa")
                os.execute("open https://dict.hjenglish.com/")
            end 
        },
    }
)