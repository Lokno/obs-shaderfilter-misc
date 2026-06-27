# Lokno's Misc. Shaders for obs-shaderfilter

## About

[obs-shaderfilter](https://obsproject.com/forum/resources/obs-shaderfilter.1736/) is a plugin for applying user-defined shaders to sources in OBS. This is a repository of shaders I've written. 

- [Audio Fade](#audio-fade) - Slowly fades in an OBS Source when an audio source passes a certain volume threshold

## How to use

- Install obs-shaderfilter
- Copy the `.shader` file above to your computer
- In OBS, select the source or group you wish to apply the filter
- Right-click the source and select "Filters" from the context menu
- In the effect filters panel inside the window that appears, click the plus (+) button
- You should see the option for "user-defined shader" if you installed obs-shaderfilter
- Select this option, and choose and name or leave the default name (user-defined shader)
- Now you should see more options appear on the right
- Check the box labeled "Load shader from text file"
- A new option will appear labeled "Shader text file"
- Click the button labeled "Browse" and select the `.shader` file you downloaded
- Your filter is now applied! 
- See below for details about how to set-up each specific effect


## Audio Fade

Slowly fades a source in when an audio source passes a certain volume threshold