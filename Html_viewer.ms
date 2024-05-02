try(destroyDialog ::htmlFilePicker)catch()

rollout htmlFilePicker "HTML File Picker" width:400 height:200
(
    button browseButton "Browse" width:100 height:30 align:#top offset:[10,10]
    label filePathLabel "Selected File: " align:#left offset:[10,45] width:380
    
    -- Define the WebBrowser control
    dotNetControl webBrowser "System.Windows.Forms.WebBrowser" pos:[10,80] width:380 height:110
    
    -- Event handler for the Browse button
    on browseButton pressed do
    (
        -- Open a file browser window
        htmlFile = getOpenFileName caption:"Select an HTML file" types:"HTML Files (*.html;*.htm)|*.html;*.htm|All Files (*.*)|*.*|"
        
        -- Check if a file was selected
        if htmlFile != undefined then
        (
            -- Display the selected file path
            filePathLabel.text = "Selected File: " + htmlFile
            
            -- Load the selected HTML file into the WebBrowser control
            webBrowser.navigate htmlFile
        )
        else
        (
            -- Inform the user if no file is selected
            filePathLabel.text = "No file selected."
        )
    )
)

createDialog htmlFilePicker
