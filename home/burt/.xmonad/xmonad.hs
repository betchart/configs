import XMonad
import XMonad.Layout.Spiral
import XMonad.Layout.Accordion

mylayoutHook = Full ||| tiled ||| spiral (6/7) ||| Mirror tiled ||| Accordion
               where tiled = Tall 1 0.03 0.5 


main = xmonad defaultConfig
       { terminal = "konsole"
       , layoutHook = mylayoutHook
       , borderWidth = 0
       , startupHook = do spawn ". /home/burt/.xmodmap" 
                       >> spawn "hsetroot -full /home/burt/.background"
                       >> spawn "xcompmgr &"
       }
