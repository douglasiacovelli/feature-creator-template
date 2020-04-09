
## What it does
It creates:

    1. Fragment with DI, DataBinding and ViewModel binding
    2. Layout file (with DataBinding)
    3. Injection file with Dagger2 (Component and Module)
    4. ViewModel

## Getting started


### 1. Create symlink of the folder Feature to the Android Studio plugins folder

Navigate to the **root of this repo** and paste this command if you're on mac:

`ln -s "$(pwd)/Feature" /Applications/Android\ Studio.app/Contents/plugins/android/lib/templates/other`

#### Or just copy it manually to

Mac/Linux:

`<Android Studio Path>/Contents/plugins/android/lib/templates/other/`
 
Windows:

`<Android Studio Path>/plugins/android/lib/templates/other/`

### 2. Restart Android Studio 

*Remember to do it again whenever updating the Android Studio

## How to use it
- Select the folder where you want it to be created and select New -> Feature -> New Feature
