-- Define the rotation function
fn randRotate obj = 
(
    -- Loop through frames 0 to 100
    for i = 0 to 100 do
    (
        -- Set rotation angles for this frame
        rot_x = random 0 360
        rot_y = random 0 360
        rot_z = random 0 360
        
        -- Set rotation keys
        at time i (
            obj.rotation = eulerAngles rot_x rot_y rot_z
        )
    )
    
    -- Set initial rotation to 0
    obj.rotation = eulerAngles 0 0 0
)

-- Define the GUI
rollout randomRotateCube "Random Rotate Cube"
(
    button btn_create "Create Cube" width:150 toolTip:"Click to create a randomly rotating cube"
    
    on btn_create pressed do
    (
        -- Create a cube
        cube = box lengthsegs:1 widthsegs:1 lengthsegs:1 length:100 width:100 height:100
        
        -- Call the rotation function
        randRotate cube
    )
)

-- Create the GUI
createdialog randomRotateCube
