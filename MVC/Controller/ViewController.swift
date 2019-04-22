import UIKit

class ViewController: UIViewController {
    // Counter to keep track how many times we have flipped the card.
    var flipCounts: Int = 0 {
        didSet{
            flipCountLabel.text = "\(self.flipCounts)"
            print("Did set")
        }
        willSet{
            print("Will set")
        }
    }
    @IBOutlet weak var flipCountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var emojies = ["🎃", "👻","👻","🎃"]
    
    @IBOutlet var cardButtons: [UIButton]!

    
    @IBAction func touchSecondCard(_ sender: UIButton) {
        self.flipCounts+=1
        if let cardNumber = cardButtons.index(of:sender) {
            print("Index is \(cardNumber)")
            flipCard(withEmoji: emojies[cardNumber], on: sender)
        } else {
            print("Element is not in the arrat")
        }
      
    }
    func flipCard(withEmoji emoji: String, on button:UIButton ) {
        print(button.currentTitle == emoji)
        // When we   click, we need to face up. (white background)
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.6679217219, blue: 0, alpha: 1) // color. is a color literal

        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }
}

