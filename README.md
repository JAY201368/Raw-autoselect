# Raw-autoselect

## Intro
Hi there! This is a simple Bash script designed specifically for photographers.

Have you ever struggled with selecting photos, especially when you have both RAW and JPG formats of each image? If you use a program like Adobe Bridge to review and select photos, you probably preview the JPG versions because they often have better exposure. But after sorting through and picking your JPGs, dealing with the unselected RAW files can be frustrating.

That’s where our script comes in. When you run it, the script organizes all your photos into two folders: “JPG” and “RAW”. Then, it matches the selected JPGs with their corresponding RAW files. This means you only need to sort the JPGs, and the script will automatically gather the matching RAW files into a folder called “RAW-Selected”. After that, you can seamlessly start editing your photos.

If there are no remaining files in the “RAW” folder, the script will delete it for you automatically.

## How to use it?
To use the script, simply download it and run the following command in your terminal:

        cd "path/to/the/script"
        bash Raw-autoselect.sh "path/to/directory/storing/photos"
    
You may also create an alias to make it more handy(Take zsh for example):
    
        alias raw-sel="bash \"path/to/the/script/Raw-select.sh\""
    
And run it like this:

        raw-sel "path/to/directory/storing/photos"

## Notice

Currently only macOS and Linux are supported. 

Enjoy this lovely toy :)
