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
        {
            title = "Brew更新",
            fn = function ()

                hs.task.new("/usr/local/bin/brew", function (code, stdout, stderr)
                    hs.notify.new({title="brew update"}):send()
                    print("#1/3. brew update", stdout)

                    hs.task.new("/usr/local/bin/brew", function (code, stdout, stderr)
                        hs.notify.new({title="brew upgrade"}):send()
                        print("#2/3. brew upgrade", stdout)

                        hs.task.new("/usr/local/bin/brew", function (code, stdout, stderr)
                            hs.notify.new({title="brew cask upgrade"}):send()
                            print("#3/3. brew cask upgrade", stdout)
        
                        end,{"cask", "upgrade"}):start()
                    end,{"upgrade"}):start()

                end,{"update"}):start()
   
            end
        },
    }
)