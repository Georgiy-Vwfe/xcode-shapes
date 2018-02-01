
class SwiftPlaygrounds
{
    let view = Canvas.shared.backingView
    
    func run() {
        /*let circle = Circle(radius: 10)
         circle.draggable = true
         circle.center.y += 27
         circle.color = #colorLiteral(red: 0.4465436008, green: 0.1424255124, blue: 1, alpha: 1)
         let rectangle = Rectangle(width: 20, height: 10)
         rectangle.color = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
         rectangle.draggable = true
         rectangle.center.y -= 10
         rectangle.rotation = 90 * (3.14/180)
         let line = Line(start: Point(x: -10, y: 10), end: Point(x: 15, y: 10), thickness: 2)
         line.color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) */
        
        
        var text = Text(string: "Deus Vult!", fontSize: 50, fontName: "Old English", color: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
        text.draggable = true
        var image = Image(name: "DeusVult.png")
        image.center.y -= 55
        text.onTouchUp {
            image.center.y += 1
        }
        Canvas.shared.onTouchDrag {
            image.scale += 1
        }
        Canvas.shared.onTouchUp {
            animate(duration: 10, delay: 0, {
                image.scale = 0.2
            })
            
            var textSarcine = Text(string: "Saracines!", fontSize: 50, fontName: "Alegrian", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
            textSarcine.center.y = -20
            textSarcine.onTouchUp {
                image.scale += 1
            }
            let button = Image(name: "deus-vultButton.png")
            button.scale = 0.5
            button.center.y = (-Canvas.shared.visibleSize.height + 15) / 2
            
            button.onTouchUp {
                image.remove()
                textSarcine.remove()
                text.remove()
            }
        }
    }
    
}
