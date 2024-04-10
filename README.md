# godot-game-optimization
Learning Godot: Game Optimization

## Level of Detail

- Level of Detail determines how detailed models are displayed (based on distance to the model)
- Can be configured in the MeshInstance3D -> Geometry -> LOD Bias, a value < 1 will turn down details faster
- Turn on 'View Information' and 'View Frame Time' in the Perspective menu to see the effect on primitive count and fps

## Mesh Merging

- Using MultiMeshInstance3D instead of a lot of MeshInstance3D can reduce objects in the world and save memory
- Limitation: the objects are identical (apart from rotation, scale etc.)

## Profiler

- Switch from 'Inclusive' to 'Self' to only measure the time the function itself takes
- Helps to identify expensive functions and optimize them

## Visual Profiler

- Start recording metrics
- Click on chart to see breakdown for specific frame
- Switch 'Measure' between 'Frame Time (ms)' and 'Frame %' to see the expensive parts of the visuals

## Monitors

- Allows to monitor fps, memory etc.

## Occlusion Culling

- Frustrum Culling: only render objects that are within camera frustrum
- Occlusion Culling: only render objects that are within camera frustrum AND are not hidden behind other objects
- OccluderInstance3D can be put into whole scene (level) or scene of an individual object (e.g. a house)
- When put into a level performance is pretty bad since it will use detailed geometry for occlusion
- When put into individual object (e.g. a house) you can simplify the geometry, e.g. a box and get better performance
