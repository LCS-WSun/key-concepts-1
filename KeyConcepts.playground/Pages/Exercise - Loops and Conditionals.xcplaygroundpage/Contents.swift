//: [Previous](@previous)
//: # Exercise - Loops and Conditionals
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![sloan-no-grid.png](sloan-no-grid.png "Sloan")
 ![sloan-with-grid.png](sloan-with-grid.png "Sloan")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * iteration (use of loops)
 * conditional (if statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLOR CONSTANTS
let deepOrange = Color(hue: 12, saturation: 78, brightness: 92, alpha: 100)
let lightBlue = Color(hue: 195, saturation: 63, brightness: 92, alpha: 100)
let neonGreen = Color(hue: 107, saturation: 61, brightness: 93, alpha: 100)
let white = Color(hue: 0, saturation: 0, brightness: 100, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.




//Make the orange rectangle orange colored

canvas.fillColor = deepOrange


//Make the orange background

canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)



// the blue rectangle is 50 by 350
// Draw blue rectangles

canvas.fillColor = lightBlue

canvas.drawShapesWithBorders = false

canvas.drawShapesWithFill = true


for horizontalPosition in stride(from: 0, through: 300, by: 100) {
    
    horizontalPosition
    
    canvas.drawRectangle(at: Point(x: horizontalPosition, y: 0), width: 50, height: 350)
}

// Draw Green Rectangles
canvas.fillColor = neonGreen

canvas.drawShapesWithBorders = false

canvas.drawShapesWithFill = true


for horizontalPosition in stride(from: 50, through: 350, by: 100) {

    horizontalPosition

    canvas.drawRectangle(at: Point(x: horizontalPosition, y: 50), width: 50, height: 350)
}


// Get title text


canvas.textColor = white


//Draw SLOAN
canvas.drawText(message: "sloan", at: Point(x: 150, y: 400), size: 95, kerning: 0.0)

//Draw the saturday text on top left corner
canvas.drawText(message: "saturday", at: Point(x: 17, y: 570), size: 11, kerning: 0.0)


//I knew this since it is half between 550 and 600 which is 570, afterwards I would guess and adjust the text to get the right amount of spacing that I think ressembles close enough


    

//Draw the december text
canvas.drawText(message: "december 19 1992", at: Point(x: 17, y: 555), size: 11, kerning: 0.0)


//Draw the 9pm text
canvas.drawText(message: "9pm", at: Point(x: 17, y: 540), size: 11, kerning: 0.0)




//When making the text should I make each seperate line or is there a way to use one sentence and give it space?

//each spacing between each is 15 and each are leveled with one another so the y is 570, 555 and 540



//Draw  with text
canvas.drawText(message: "with", at: Point(x: 150, y: 570), size: 11, kerning: 0.0)


//Draw thrush hermit
canvas.drawText(message: "thrush hermit", at: Point(x: 150, y: 555), size: 11, kerning: 0.0)


//Draw the quahogs
canvas.drawText(message: "the quahogs", at: Point(x: 150, y: 540), size: 11, kerning: 0.0)


//Draw the text Camaro's cafe
canvas.drawText(message: "camaro's cafe", at: Point(x: 270, y: 570), size: 11, kerning: 0.0)

// it is half way between 250 and 300 so 270 is where the text is


//Draw the text halifax
canvas.drawText(message: "halifax", at: Point(x: 270, y: 555), size: 11, kerning: 0.0)


//Draw the text nova scotia
canvas.drawText(message: "nova scotia", at: Point(x: 270, y: 540), size: 11, kerning: 0.0)

// I just noticed now that I could have used a stride function for each line such as 570 and finding the distance apart horizontally instead of writing each one individually 







//// Draw Green Rectangles as a for in loop (Another way instead of using stride function

//canvas.fillColor = neonGreen
//
//for horizontalPosition in 0...3 {
//
//    horizontalPosition * 100 + 50
//
//    canvas.drawRectangle(at: Point(x: horizontalPosition * 100 + 50, y: 50), width: 50, height: 350)
//
//
//}





//THE LOGIC (pre planning)

//My logic and how I would remake this picture using logic


//I see that there is 8 collums so I would do like 400 / 8

// Once I know this I can figure out the height and width of the long blue rectangles




// I would then add from the first rectangle with the 50 from the very left side would add 50 to it which is the stride function?

// I will also make sure that the blue rectangles only go to 350


//Green Rectangles
//first rectangle start at 50, 400
// add 50 each time and make it stop at 400 which is a stride function


//Adding the orange squares
// first square 50, 50
// add 50 until 400


//Adding the the top orange squares
// the first square which is 50 by 400


//add 50 each time from the first orange square until 350


//Making the top orange rectangle
// height 350-600
//width 400


//Making the text
// SLOAN will be inbetween 400 and 500

//Making the othe words


//the top words?
// don't know how to go about it 










/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

