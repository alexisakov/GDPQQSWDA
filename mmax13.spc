series{
			title = "Title"
			period = 4
			file = "C:\Users\AIsakov\AppData\Local\Temp\x11reg.dat"
			format = "DATEVALUE"
			
		}
transform{function=log}
regression {
					variables = (LS2015.1, LS2020.2, LS2020.3)
				user = ("somevariable1", "somevariable2")
				usertype = (td, user)
				file = "C:\Users\AIsakov\AppData\Local\Temp\x11reg.var"

				format = "DATEVALUE"


				
				}

		pickmdl{
	    		mode = both
	     		file = "C:\Users\AIsakov\AppData\Local\Temp\pickmdl.mds"
     		}

 		outlier{}

		forecast{
			maxlead = 6
			maxback = 12}
			
		x11{
			# mode= 
			final = (user)
			appendfcst = YES
			print=none
			save=(d11)
		}