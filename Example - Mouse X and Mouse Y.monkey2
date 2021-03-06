#Import "<std>"
#Import "<mojo>"

Using std..
Using mojo..

Global instance:AppInstance



Class MyWindow Extends Window
	
	Method New()
	End Method
	
		
	Method OnRender( canvas:Canvas ) Override
		App.RequestRender() ' Loop with sync
		canvas.Clear(Color.Black)
		canvas.Color = Color.White
		canvas.DrawText("Mouse.X:"+Mouse.X,0,0)
		canvas.DrawText("Mouse.Y:"+Mouse.Y,0,15)
	End Method	
	
	Method OnKeyEvent( event:KeyEvent ) Override	
		Select event.Type
			Case EventType.KeyDown
			Select event.Key
				Case Key.Escape
			    instance.Terminate() 'exit with escape			    
			End Select
		End Select		
	End Method
	
End	Class

Function Main()
	instance = New AppInstance	
	
	New MyWindow
	
	App.Run()
	
End Function
