local tools = hs.menubar.new()
tools:setTitle("🔰")
tools:setIcon("")
tools:setMenu(
    {
        { 
            title = "百度翻译", 
            fn = function() 
                os.execute("open https://fanyi.baidu.com/")
            end 
        },
        { 
            title = "沪江小d", 
            fn = function ()
                os.execute("open https://dict.hjenglish.com/")
            end 
        },
    }
)