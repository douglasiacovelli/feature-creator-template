
## What it does
It creates:

    1. Fragment with DI, DataBinding and ViewModel binding
    2. Layout file (with DataBinding)
    3. Injection file with Dagger2 (Component and Module)
    4. ViewModel

## Getting started


### 1. Copy the folder Feature to

Mac/Linux:

`<Android Studio Path>/Contents/plugins/android/lib/templates/other/`
 
Windows:

`<Android Studio Path>/plugins/android/lib/templates/other/`

### 2. Restart Android Studio 

*Remember to do it again whenever updating the Android Studio

## How to use it
- Select the folder where you want it to be created and select New -> Feature -> New Feature

## Before using this plugin:
It's assumed that you will have these classes for the ViewModel binding and the fragment scope.

[helper_classes/ViewModelModule.kt](helper_classes/ViewModelModule.kt)  
[helper_classes/FragmentScope.kt](helper_classes/FragmentScope.kt)

