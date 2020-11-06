import UIKit

public typealias NSUIColor = UIColor

extension NSUIColor
{
    var nsuirgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)? {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        guard getRed(&red, green: &green, blue: &blue, alpha: &alpha) else {
            return nil
        }
        
        return (red: red, green: green, blue: blue, alpha: alpha)
    }
}

let color = NSUIColor.red

if let (r, g, b, a) = color.nsuirgba
{
    print(r)
    print(g)
    print(b)
    print(a)
}
else
{
    print("error")
}


