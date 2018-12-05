import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController, UITextFieldDelegate {
    // connect GameScene.swift and GameViewController.swift
    var mainGameScene: GameScene!
    // set the type and value of index
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // send the text entered to itself
        textAmount.delegate = self
        // set the keyboard type
        textAmount.keyboardType = .numberPad
        // set the view
        if let view = self.view as! SKView? {
            // set the scene
            if let scene = SKScene(fileNamed: "GameScene") {
                // set the scale mode of the scene
                scene.scaleMode = .aspectFill
                // present the scene
                view.presentScene(scene)
                // set mainGameScene
                mainGameScene = scene as! GameScene
                // set mainGameScene.viewController
                mainGameScene.viewController = self
            }
            // share the same zPosition
            view.ignoresSiblingOrder = true
        }
        // hide labelG when the app launches
        labelG.isHidden = true
        // hide labelLine when the app launches
        labelLine.isHidden = true
        // hide labelBoard when the app launches
        labelBoard.isHidden = true
        // hide labelAddingChemical when the app launches
        labelAddingChemical.isHidden = true
        // hide textAmount when the app launches
        textAmount.isHidden = true
        // hide buttonCancel when the app launches
        buttonCancel.isHidden = true
        // hide buttonSubmit when the app launches
        buttonSubmit.isHidden = true
        // hide labelAdding when the app launches
        labelAdding.isHidden = true
        // hide labelWarning when the app launches
        labelWarning.isHidden = true
        // hide board2 when the app launches
        board2.isHidden = true
        // hide title2 when the app launches
        title2.isHidden = true
        // hide yellow2 when the app launches
        yellow2.isHidden = true
        // hide blue2 when the app launches
        blue2.isHidden = true
        // hide water2 when the app launches
        water2.isHidden = true
        // hide all the info window when the app launches
        hideInfo(Bool: true)
        // hide temperature2 when the app launches
        temperature2.isHidden = true
        // hide boilingPoint2 when the app launches
        boilingPoint2.isHidden = true
        // hide meltingPoint2 when the app launches
        meltingPoint2.isHidden = true
        // hide yellowNumber2 when the app launches
        yellowNumber2.isHidden = true
        // hide blueNumber2 when the app launches
        blueNumber2.isHidden = true
        // hide waterNumber2 when the app launches
        waterNumber2.isHidden = true
        // hide temperatureNumber2 when the app launches
        temperatureNumber2.isHidden = true
        // hide boilingPointNumber2 when the app launches
        boilingPointNumber2.isHidden = true
        // hide coolTT when the app launches
        coolTT.isHidden = true
        // hide meltingPointNumber2 when the app launches
        meltingPointNumber2.isHidden = true
        // hide yellowG2 when the app launches
        yellowG2.isHidden = true
        // hide blueG2 when the app launches
        blueG2.isHidden = true
        // hide testTubeTT when the app launches
        testTubeTT.isHidden = true
        // hide buttonOkTT when the app launches
        buttonOkTT.isHidden = true
        // hide buttonCancelTT when the app launches
        buttonCancelTT.isHidden = true
        // hide segmentTT when the app launches
        segmentTT.isHidden = true
        // hide boardTT when the app launches
        boardTT.isHidden = true
        // hide textTT when the app launches
        textTT.isHidden = true
        // hide titleTT when the app launches
        titleTT.isHidden = true
        // hide waterMl2 when the app launches
        waterMl2.isHidden = true
        // hide temperatureC2 when the app launches
        temperatureC2.isHidden = true
        // hide meltingPointC2 when the app launches
        meltingPointC2.isHidden = true
        // hide boilingPointC2 when the app launches
        boilingPointC2.isHidden = true
        // hide buttonClose2 when the app launches
        buttonClose2.isHidden = true
        // hide blurEffect when the app launches
        blurEffect.isHidden = true
        // hide warningOk when the app launches
        warningOk.isHidden = true
        // hide warningText when the app launches
        warningText.isHidden = true
        // hide warningBoard when the app launches
        warningBoard.isHidden = true
    }
    // creating a function called textField
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // set all characters other than numbers and dot to be invalid
        let invalidCharacters = CharacterSet(charactersIn: "0123456789.").inverted
        // set the invalid characters to nil
        return string.rangeOfCharacter(from: invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
    
    override var shouldAutorotate: Bool {
        // autorotate the app
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return.all
        }
    }
    
    
    // outletting infoBoard
    @IBOutlet weak var infoBoard: UIImageView!
    // outletting infoYellow
    @IBOutlet weak var infoYellow: UIImageView!
    // outletting infoYellowText
    @IBOutlet weak var infoYellowText: UILabel!
    // outletting infoThermo
    @IBOutlet weak var infoThermo: UIImageView!
    // outletting infoThermoText
    @IBOutlet weak var infoThermoText: UILabel!
    // outletting infoPh
    @IBOutlet weak var infoPh: UIImageView!
    // outletting infoPhText
    @IBOutlet weak var infoPhText: UILabel!
    // outletting infoWater
    @IBOutlet weak var infoWater: UIImageView!
    // outletting infoButton
    @IBOutlet weak var infoButton: UIButton!
    // outletting infoBeakerText
    @IBOutlet weak var infoBeakerText: UILabel!
    // outletting infoWaterText
    @IBOutlet weak var infoWaterText: UILabel!
    // outletting infoBlueText
    @IBOutlet weak var infoBlueText: UILabel!
    // outletting infoBlue
    @IBOutlet weak var infoBlue: UIImageView!
    // outletting infoBeaker
    @IBOutlet weak var infoBeaker: UIImageView!
    // outletting infoBurner
    @IBOutlet weak var infoBurner: UIImageView!
    //outletting infoBurnerText
    @IBOutlet weak var infoBurnerText: UILabel!
    // outletting buttonQuestion
    @IBOutlet weak var buttonQuestion: UIButton!
    // outletting labelTip
    @IBOutlet weak var labelTip: UILabel!
    // outletting buttonSubmit
    @IBOutlet weak var buttonSubmit: UIButton!
    // outletting coolTT
    @IBOutlet weak var coolTT: UILabel!
    // outletting buttonCancel
    @IBOutlet weak var buttonCancel: UIButton!
    // outletting labelAddingChemical
    @IBOutlet weak var labelAddingChemical: UILabel!
    // outletting textAmount
    @IBOutlet weak var textAmount: UITextField!
    // outletting labelLine
    @IBOutlet weak var labelLine: UIImageView!
    // outletting labelBoard
    @IBOutlet weak var labelBoard: UIImageView!
    // outletting labelG
    @IBOutlet weak var labelG: UILabel!
    // outletting labelAdding
    @IBOutlet weak var labelAdding: UILabel!
    // outletting labelWarning
    @IBOutlet weak var labelWarning: UILabel!
    // outletting title2
    @IBOutlet weak var title2: UILabel!
    // outletting yellow2
    @IBOutlet weak var yellow2: UILabel!
    // outletting textTT
    @IBOutlet weak var textTT: UILabel!
    // outletting segmentTT
    @IBOutlet weak var segmentTT: UISegmentedControl!
    // outletting buttonOkTT
    @IBOutlet weak var buttonOkTT: UIButton!
    // outletting boardTT
    @IBOutlet weak var boardTT: UIImageView!
    // outletting buttonCancelTT
    @IBOutlet weak var buttonCancelTT: UIButton!
    // outletting testTubeTT
    @IBOutlet weak var testTubeTT: UIImageView!
    // outletting titleTT
    @IBOutlet weak var titleTT: UILabel!
    // outletting blue2
    @IBOutlet weak var blue2: UILabel!
    // outletting water2
    @IBOutlet weak var water2: UILabel!
    // outletting temperature2
    @IBOutlet weak var temperature2: UILabel!
    // outletting boilingPoint2
    @IBOutlet weak var boilingPoint2: UILabel!
    // outletting meltingPoint2
    @IBOutlet weak var meltingPoint2: UILabel!
    // outletting buttonClose2
    @IBOutlet weak var buttonClose2: UIButton!
    // outletting yellowNumber2
    @IBOutlet weak var yellowNumber2: UILabel!
    // outletting blueNumber2
    @IBOutlet weak var blueNumber2: UILabel!
    // outletting waterNumber2
    @IBOutlet weak var waterNumber2: UILabel!
    // outletting temperatureNumber2
    @IBOutlet weak var temperatureNumber2: UILabel!
    // outletting blurEffect
    @IBOutlet weak var blurEffect: UIImageView!
    // outletting boilingPointNumber2
    @IBOutlet weak var boilingPointNumber2: UILabel!
    // outletting meltingPointNumber2
    @IBOutlet weak var meltingPointNumber2: UILabel!
    // outletting yellowG2
    @IBOutlet weak var yellowG2: UILabel!
    // outletting blueG2
    @IBOutlet weak var blueG2: UILabel!
    // outletting waterMl2
    @IBOutlet weak var waterMl2: UILabel!
    // outletting temperatureC2
    @IBOutlet weak var temperatureC2: UILabel!
    // outletting warningOk
    @IBOutlet weak var warningOk: UIButton!
    // outletting warningText
    @IBOutlet weak var warningText: UILabel!
    // outletting warningBoard
    @IBOutlet weak var warningBoard: UIImageView!
    // outletting boilingPointC2
    @IBOutlet weak var boilingPointC2: UILabel!
    // outletting meltingPointC2
    @IBOutlet weak var meltingPointC2: UILabel!
    // outletting board2
    @IBOutlet weak var board2: UIImageView!
    // outletting buttonBack
    @IBOutlet weak var buttonBack: UIButton!
    
    // create a function called hideInfo. Hide all of the labels and images regarding info.
    func hideInfo (Bool: Bool) {
        infoPh.isHidden = Bool
        infoBlue.isHidden = Bool
        infoBoard.isHidden = Bool
        infoWater.isHidden = Bool
        infoBeaker.isHidden = Bool
        infoBurner.isHidden = Bool
        infoButton.isHidden = Bool
        infoPhText.isHidden = Bool
        infoThermo.isHidden = Bool
        infoYellow.isHidden = Bool
        infoBlueText.isHidden = Bool
        infoWaterText.isHidden = Bool
        infoBeakerText.isHidden = Bool
        infoThermoText.isHidden = Bool
        infoBurnerText.isHidden = Bool
        infoYellowText.isHidden = Bool
        blurEffect.isHidden = Bool
    }
    
    // when the info button is clicked
    @IBAction func infoButtonClick(_ sender: Any) {
        // hide all the elements on the info window
        hideInfo(Bool: true)
    }
    
    
    // when the question button is clicked
    @IBAction func buttonQuestionClick(_ sender: Any) {
        // hide all the elements on the info window
        hideInfo(Bool: false)
    }
    @IBAction func buttonBackClicked(_ sender: Any) {
        // when you click the back button, remove all the children from mainGameScene
        mainGameScene.removeAllChildren()
    }
    
    @IBAction func buttonClose2Clicked(_ sender: Any) {
        // hide board2 when you click the Close2 button
        board2.isHidden = true
        // hide title2 when you click the Close2 button
        title2.isHidden = true
        // hide yellow2 when you click the Close2 button
        yellow2.isHidden = true
        // hide blue2 when you click the Close2 button
        blue2.isHidden = true
        // hide blue2 when you click the Close2 button
        water2.isHidden = true
        // hide temperature2 when you click the Close2 button
        temperature2.isHidden = true
        // hide boilingPoint2 when you click the Close2 button
        boilingPoint2.isHidden = true
        // hide meltingPoint2 when you click the Close2 button
        meltingPoint2.isHidden = true
        // hide yellowNumber2 when you click the Close2 button
        yellowNumber2.isHidden = true
        // hide blueNumber2 when you click the Close2 button
        blueNumber2.isHidden = true
        // hide waterNumber2 when you click the Close2 button
        waterNumber2.isHidden = true
        // hide temperatureNumber2 when you click the Close2 button
        temperatureNumber2.isHidden = true
        // hide boilingPointNumber2 when you click the Close2 button
        boilingPointNumber2.isHidden = true
        // hide meltingPointNumber2 when you click the Close2 button
        meltingPointNumber2.isHidden = true
        // hide yellowG2 when you click the Close2 button
        yellowG2.isHidden = true
        // hide blueG2 when you click the Close2 button
        blueG2.isHidden = true
        // hide waterMl2 when you click the Close2 button
        waterMl2.isHidden = true
        // hide temperatureC2 when you click the Close2 button
        temperatureC2.isHidden = true
        // hide meltingPointC2 when you click the Close2 button
        meltingPointC2.isHidden = true
        // hide boilingPointC2 when you click the Close2 button
        boilingPointC2.isHidden = true
        // hide buttonClose2 when you click the Close2 button
        buttonClose2.isHidden = true
        // hide blurEffect when you click the Close2 button
        blurEffect.isHidden = true
        // hide warningOk when you click the Close2 button
        warningOk.isHidden = true
        // hide warningText when you click the Close2 button
        warningText.isHidden = true
        // hide warningBoard when you click the Close2 button
        warningBoard.isHidden = true
    }
    
    // create a function called setGroupOne, which hides/reveal all the buttons in group one
    func setGroupOne (Bool: Bool) {
        // hide/reveal labelG
        labelG.isHidden = Bool
        // hide/reveal labelLine
        labelLine.isHidden = Bool
        // hide/reveal labelBoard
        labelBoard.isHidden = Bool
        // hide/reveal labelAddingChemical
        labelAddingChemical.isHidden = Bool
        // hide/reveal textAmount
        textAmount.isHidden = Bool
        // hide/reveal buttonCancel
        buttonCancel.isHidden = Bool
        // hide/reveal buttonSubmit
        buttonSubmit.isHidden = Bool
        // hide/reveal labelAdding
        labelAdding.isHidden = Bool
        // hide/reveal labelWarning
        labelWarning.isHidden = Bool
        // hide/reveal blurEffect
        blurEffect.isHidden = Bool
    }
    
    // set the initial value and type of numberEntered
    var numberEntered: Double = 0.0
    // set the initial value and type of textEntered
    var textEntered: String = ""
    
    // when you click the submit button
    @IBAction func buttonSubmitClicked(_ sender: Any) {
        // let the value of textEntered be the text you entered in the text field called textAmount
        textEntered = textAmount.text!
        // if you did not enter anything
        if textEntered == "" {
            // the text of the warning label will be "Please enter a number."
            labelWarning.text = "Please enter a number."
            // reveal the warning label
            labelWarning.isHidden = false
        // if you did enter anything in the text field
        } else {
            // let the value of numberEntered be that of textEntered
            numberEntered = Double (textEntered)!
            // if what you enter is zero
            if numberEntered == 0 {
                // the text of the warning label will be "Please enter a non-zero number."
                labelWarning.text = "Please enter a non-zero number."
                // reveal the warning label
                labelWarning.isHidden = false
            // if what you enter is greater or equal to 999
            } else if numberEntered >= 999 {
                // the text of the warning label will be "Please enter a number less than 999."
                labelWarning.text = "Please enter a number less than 999."
                // reveal the warning label
                labelWarning.isHidden = false
            // if what you enter is between 0 and 999
            } else {
                // if what you are adding is sodium sulfade
                if labelAddingChemical.text == "Sodium Sulfide" {
                    // if the amount will not exceed the limit
                    if 999 - mainGameScene.amountOfYellow[mainGameScene.indexOfBeakerBeingAddedTo] > numberEntered {
                        // hide all the buttons/labels/images in group one
                        setGroupOne(Bool: true)
                        // if the beaker you are adding to has burner and does not have water
                        if mainGameScene.hasBurner[index] && !mainGameScene.hasWater[mainGameScene.indexOfBeakerBeingAddedTo] {
                            // the text of the tip label changes to "Cannot heat sodium sulfide as it is flammable! "
                            labelTip.text = "Cannot heat sodium sulfide as it is flammable! "
                            // clear the text after 5 seconds
                            clearText(condition: "Cannot heat sodium sulfide as it is flammable! ", seconds: 5)
                            // and subtract the number from the total amount, since you did not add successfully
                            mainGameScene.amountOfYellow[mainGameScene.indexOfBeakerBeingAddedTo] -= numberEntered
                        // if the beaker you are adding to have water or it does not have a burner
                        } else {
                            // if the beaker has copper (II) sulfate and has water
                            if mainGameScene.hasBlue[mainGameScene.indexOfBeakerBeingAddedTo] && mainGameScene.hasWater[mainGameScene.indexOfBeakerBeingAddedTo] {
                                // perform the function pouring Effect
                                mainGameScene.pouringEffect(imageName: "yellowBottle", index: index, whatIsAdded: mainGameScene.arrayOfBlueSolutions)
                                // after one second, execute the following code:
                                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                                    // show the precipitate formed
                                    self.mainGameScene.arrayOfPrecipitates[self.mainGameScene.indexOfBeakerBeingAddedTo].run(SKAction.fadeIn(withDuration: 0.6))
                                    // the tip label displays the associated reaction equation
                                    self.labelTip.text = "Neutralization reaction; precipitate fromed:  CuSO4(aq) + Na2S(ap) → CuS(s) + Na2SO4(aq) "
                                    // clear the text after 9 seconds
                                    self.clearText(condition: "Neutralization reaction; precipitate fromed:  CuSO4(aq) + Na2S(ap) → CuS(s) + Na2SO4(aq) ", seconds: 9)
                                }
                            // if the beaker has copper (II) sulfate and does not have water
                            } else if mainGameScene.hasBlue[mainGameScene.indexOfBeakerBeingAddedTo] && !mainGameScene.hasWater[mainGameScene.indexOfBeakerBeingAddedTo] {
                                // perform the pouring effct for sodium sulfide
                                mainGameScene.pouringEffect(imageName: "yellowBottle", index: index, whatIsAdded: mainGameScene.arrayOfYellows)
                                // the text of the tip label displays the reaction equation
                                labelTip.text = "\(round(1000 * numberEntered) / 1000) g of sodium sulfide is hydrated:  Na2S(s) + 5 H2O(l) → Na2S * 5 H2O(aq)"
                                // cleat the text after 9 seconds
                                clearText(condition: "\(round(1000 * numberEntered) / 1000) g of sodium sulfide is hydrated:  Na2S(s) + 5 H2O(l) → Na2S * 5 H2O(aq)", seconds: 9)
                            // if the beaker does not have copper (II) sulfate and has water
                            } else if !mainGameScene.hasBlue[mainGameScene.indexOfBeakerBeingAddedTo] && mainGameScene.hasWater[mainGameScene.indexOfBeakerBeingAddedTo] {
                                // perform the pouring effect for sodium sulfide
                                mainGameScene.pouringEffect(imageName: "yellowBottle", index: index, whatIsAdded: mainGameScene.arrayOfYellowSolutions)
                                // the tip label displays the reaction equation
                                labelTip.text = "\(round(1000 * numberEntered) / 1000) g of sodium sulfide reacts with water: Na2S(s) + 2 H2O(l) = H2S(aq) + 2 NaOH(aq)"
                                // clear the text after 9 seconds
                                clearText(condition: "\(round(1000 * numberEntered) / 1000) g of sodium sulfide reacts with water: Na2S(s) + 2 H2O(l) = H2S(aq) + 2 NaOH(aq)", seconds: 9)
                            // if the beaker does not have copper (II) sulfate and does not have water either
                            } else if !mainGameScene.hasBlue[mainGameScene.indexOfBeakerBeingAddedTo] && !mainGameScene.hasWater[mainGameScene.indexOfBeakerBeingAddedTo] {
                                // perform the pouring effect for sodium sulfide
                                mainGameScene.pouringEffect(imageName: "yellowBottle", index: index, whatIsAdded: mainGameScene.arrayOfYellows)
                                // the tip label displays the reaction equation
                                labelTip.text = "\(round(1000 * numberEntered) / 1000) g of sodium sulfide is hydrated: Na2S(s) + 5 H2O(l) → Na2S * 5 H2O(aq)"
                                // clear the text after 9 seconds
                                clearText(condition: "\(round(1000 * numberEntered) / 1000) g of sodium sulfide is hydrated: Na2S(s) + 5 H2O(l) → Na2S * 5 H2O(aq)", seconds: 9)
                            }
                        // add the amount you entered to the total amount
                        mainGameScene.amountOfYellow[mainGameScene.indexOfBeakerBeingAddedTo] += numberEntered
                        // set the associated hasYellow to true, since you have added sodium sulfide
                        mainGameScene.hasYellow[mainGameScene.indexOfBeakerBeingAddedTo] = true
                        }
                    // if the total amount will exceed the limit
                    } else {
                        // set the text of the warning label
                        labelWarning.text = "Total amount cannot exceed the limit. Consider adding less than \(round(1000*(999-mainGameScene.amountOfYellow[mainGameScene.indexOfBeakerBeingAddedTo]))/1000) g."
                        // reveal the warning label
                        labelWarning.isHidden = false
                    }
                // if what you are adding is copper (II) sulfate
                } else if labelAddingChemical.text == "Copper (II) Sulfate" {
                    // if the total amount will not exceed the limit
                    if 999 - mainGameScene.amountOfBlue[mainGameScene.indexOfBeakerBeingAddedTo] > numberEntered {
                        // hide all of the contents in group one
                        setGroupOne(Bool: true)
                        // if the beaker you are adding to has sodium sulfide and has water
                        if mainGameScene.hasYellow[mainGameScene.indexOfBeakerBeingAddedTo] && mainGameScene.hasWater[mainGameScene.indexOfBeakerBeingAddedTo] {
                            // perform the pouring action for copper (II) sulfate
                            mainGameScene.pouringEffect(imageName: "blueBottle", index: index, whatIsAdded: mainGameScene.arrayOfBlueSolutions)
                            // after one second, execute the following codes
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                                // show the precipitate formed
                                self.mainGameScene.arrayOfPrecipitates[self.mainGameScene.indexOfBeakerBeingAddedTo].run(SKAction.fadeIn(withDuration: 0.6))
                                // the tip label displays the reaction equation
                                self.labelTip.text = "Neutralization reaction; precipitate fromed:  CuSO4(aq) + Na2S(ap) → CuS(s) + Na2SO4(aq)"
                                // clear the text after 9 seconds
                                self.clearText(condition: "Neutralization reaction; precipitate fromed:  CuSO4(aq) + Na2S(ap) → CuS(s) + Na2SO4(aq)", seconds: 9)
                            }
                        // if the beaker you are adding to has sodium sulfide and does not have water
                        } else if mainGameScene.hasYellow[mainGameScene.indexOfBeakerBeingAddedTo] && !mainGameScene.hasWater[mainGameScene.indexOfBeakerBeingAddedTo] {
                            // perofrm the pouring effect for copper (II) sulfate
                            mainGameScene.pouringEffect(imageName: "blueBottle", index: index, whatIsAdded: mainGameScene.arrayOfBlues)
                            // the tip label displays the reaction reaction
                            labelTip.text = "\(round(1000 * numberEntered) / 1000) g of cupper(II) sulfate is hydrated:  CuSO4(s) + 5 H2O(l) → CuSO4 * 5 H2O(aq)"
                            // cleat the text after 9 seconds
                            clearText(condition: "\(round(1000 * numberEntered) / 1000) g of cupper(II) sulfate is hydrated:  CuSO4(s) + 5 H2O(l) → CuSO4 * 5 H2O(aq)", seconds: 9)
                        // if the beaker you are adding to does not have sodium sulfide and has water
                        } else if !mainGameScene.hasYellow[mainGameScene.indexOfBeakerBeingAddedTo] && mainGameScene.hasWater[mainGameScene.indexOfBeakerBeingAddedTo] {
                            // perform the pouring action for copper (II) sulfate
                            mainGameScene.pouringEffect(imageName: "blueBottle", index: index, whatIsAdded: mainGameScene.arrayOfBlueSolutions)
                            // the tip label displays the reaction equation
                            labelTip.text = "\(round(1000 * numberEntered) / 1000) g of cupper(II) sulfate reacts with water:  Cu^2+(s) + H2O(l) → CuOH(aq) + H+(aq)"
                            // clear the text after 9 seconds
                            clearText(condition: "\(round(1000 * numberEntered) / 1000) g of cupper(II) sulfate reacts with water:  Cu^2+(s) + H2O(l) → CuOH(aq) + H+(aq)", seconds: 9)
                        // if the beaker does not have sodium sulfide and does not have water
                        } else if !mainGameScene.hasYellow[mainGameScene.indexOfBeakerBeingAddedTo] && !mainGameScene.hasWater[mainGameScene.indexOfBeakerBeingAddedTo] {
                            // display the pouring effect for copper (II) sulfate
                            mainGameScene.pouringEffect(imageName: "blueBottle", index: index, whatIsAdded: mainGameScene.arrayOfBlues)
                            // the tip label displays the reaction equation
                            labelTip.text = "\(round(1000 * numberEntered) / 1000) g of cupper(II) sulfate is hydrated: CuSO4(s) + 5 H2O(l) → CuSO4 * 5 H2O(aq)"
                            // clear the text after 9 seconds
                            clearText(condition: "\(round(1000 * numberEntered) / 1000) g of cupper(II) sulfate is hydrated: CuSO4(s) + 5 H2O(l) → CuSO4 * 5 H2O(aq)", seconds: 9)
                        }
                        // add the amount you entered to the total amount
                        mainGameScene.amountOfBlue[mainGameScene.indexOfBeakerBeingAddedTo] += numberEntered
                        // set the associated hasBlue to true, since you have just added copper (II) solfate
                        mainGameScene.hasBlue[mainGameScene.indexOfBeakerBeingAddedTo] = true
                    // if the total amount will exceeds the limit
                    } else {
                        // change the text of the warning label
                        labelWarning.text = "Total amount cannot exceed the limit. Consider adding less than \(round(1000*(999-mainGameScene.amountOfBlue[mainGameScene.indexOfBeakerBeingAddedTo]))/1000) g."
                        // reveal the warnign label
                        labelWarning.isHidden = false
                    }
                // if what you are adding is distilled water
                } else if labelAddingChemical.text == "Distilled Water" {
                    // if the total amount of water will not exceed the limit
                    if 999 - mainGameScene.amountOfWater[mainGameScene.indexOfBeakerBeingAddedTo] > numberEntered {
                        // hide all the contents in group one
                        setGroupOne(Bool: true)
                        // if the beaker you are adding to has sodium sulfide and has copper (II) sulfate
                        if mainGameScene.hasYellow[mainGameScene.indexOfBeakerBeingAddedTo] && mainGameScene.hasBlue[mainGameScene.indexOfBeakerBeingAddedTo] {
                            //perform the pouring effect for water
                            mainGameScene.pouringEffect(imageName: "water", index: index, whatIsAdded: mainGameScene.arrayOfBlueSolutions)
                            // execuets the following codes after one second
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                                // display the precipitates formed
                                self.mainGameScene.arrayOfPrecipitates[self.mainGameScene.indexOfBeakerBeingAddedTo].run(SKAction.fadeIn(withDuration: 0.6))
                                // the label tip displays the reaction equation
                                self.labelTip.text = "Neutralization reaction; precipitate fromed: CuSO4(aq) + Na2S(ap) → CuS(s) + Na2SO4(aq)"
                                // clear the text after 9 seconds
                                self.clearText(condition: "Neutralization reaction; precipitate fromed: CuSO4(aq) + Na2S(ap) → CuS(s) + Na2SO4(aq)", seconds: 9)
                                }
                        // if the beaker you are adding to has sodium sulfide and does not have copper (II) sulfate
                        } else if mainGameScene.hasYellow[mainGameScene.indexOfBeakerBeingAddedTo] && !mainGameScene.hasBlue[mainGameScene.indexOfBeakerBeingAddedTo] {
                            // perform the pouring effect for water
                            mainGameScene.pouringEffect(imageName: "water", index: index, whatIsAdded: mainGameScene.arrayOfYellowSolutions)
                            // the tip label displays the reaction equation
                            labelTip.text = "\(round(1000 * numberEntered) / 1000) mL of water reacts with sodium sulfide: Na2S(s) + 2 H2O(l) → H2S(aq) + 2 NaOH(aq)"
                            // clear the text after 9 seconds
                            clearText(condition: "\(round(1000 * numberEntered) / 1000) mL of water reacts with sodium sulfide: Na2S(s) + 2 H2O(l) → H2S(aq) + 2 NaOH(aq)", seconds: 9)
                        // if the beaker you are adding to does not have sodium sulfide and has copper (II) sulfate
                        } else if !mainGameScene.hasYellow[mainGameScene.indexOfBeakerBeingAddedTo] && mainGameScene.hasBlue[mainGameScene.indexOfBeakerBeingAddedTo] {
                            // perform the pouring effect for water
                            mainGameScene.pouringEffect(imageName: "water", index: index, whatIsAdded: mainGameScene.arrayOfBlueSolutions)
                            // display the reaction equation
                            labelTip.text = "\(round(1000 * numberEntered) / 1000) mL of water reacts with cupper(II) sulfate: Cu^2+(s) + H2O(l) → CuOH(aq) + H+(aq)"
                            // clear the text after 9 seconds
                            clearText(condition: "\(round(1000 * numberEntered) / 1000) mL of water reacts with cupper(II) sulfate: Cu^2+(s) + H2O(l) → CuOH(aq) + H+(aq)", seconds: 9)
                        // if the beaker you are adding to does not have sodium sulfide and does not have copper (II) sulfate
                        } else if !mainGameScene.hasYellow[mainGameScene.indexOfBeakerBeingAddedTo] && !mainGameScene.hasBlue[mainGameScene.indexOfBeakerBeingAddedTo] {
                            // display the pouring effect for water
                            mainGameScene.pouringEffect(imageName: "water", index: index, whatIsAdded: mainGameScene.arrayOfWaters)
                            // the tip label displays the reaction equation
                            labelTip.text = "\(round(1000 * numberEntered) / 1000) mL of distilled water is added to the beaker."
                            // clear the text after 6 seconds
                            clearText(condition: "\(round(1000 * numberEntered) / 1000) mL of distilled water is added to the beaker.", seconds: 6)
                        }
                        // set the associated hasWater to true, since you have just added water
                        mainGameScene.hasWater[mainGameScene.indexOfBeakerBeingAddedTo] = true
                        // add the amount you entered to the total amount
                        mainGameScene.amountOfWater[mainGameScene.indexOfBeakerBeingAddedTo] += numberEntered
                    }
                // if the total amount will exceed the limit
                } else {
                    // the warning label displays the message
                    labelWarning.text = "Total amount cannot exceed the limit. Consider adding less than \(round(1000*(999-mainGameScene.amountOfWater[mainGameScene.indexOfBeakerBeingAddedTo]))/1000) g."
                    // reveal the warning label
                    labelWarning.isHidden = false
                }
            }
        }
        // clear the text in the text field
        textAmount.text = ""
    }
    
    // when you click buttonOkTTClick
    @IBAction func buttonOkTTClick(_ sender: Any) {
        // of coolTT is hidden
        if coolTT.isHidden {
            // hide textTT
            textTT.isHidden = true
            // hide segmentTT
            segmentTT.isHidden = true
            // change the image
            testTubeTT.image = UIImage(named: "TT")
            coolTT.isHidden = false
        // if coolTT is not hidden
        } else {
            // hide testTubeTT
            testTubeTT.isHidden = true
            // hide buttonOkTT
            buttonOkTT.isHidden = true
            // hide buttonCancelTT
            buttonCancelTT.isHidden = true
            // hide segmentTT
            segmentTT.isHidden = true
            // hide boardTT
            boardTT.isHidden = true
            // hide textTT
            textTT.isHidden = true
            // hide titleTT
            titleTT.isHidden = true
            // hide blurEffect
            blurEffect.isHidden = true
            // hide coolTT
            coolTT.isHidden = true
        }
    }
    
    // when you click buttonCancelTTClick
    @IBAction func buttonCancelTTClick(_ sender: Any) {
        // hide testTubeTT
        testTubeTT.isHidden = true
        // hide buttonOkTT
        buttonOkTT.isHidden = true
        // hide buttonCancelTT
        buttonCancelTT.isHidden = true
        // hide segmentTT
        segmentTT.isHidden = true
        // hide boardTT
        boardTT.isHidden = true
        // hide textTT
        textTT.isHidden = true
        // hide titleTT
        titleTT.isHidden = true
        // hide blurEffect
        blurEffect.isHidden = true
        // hide coolTT
        coolTT.isHidden = true
    }
    
    // when you are entering in the text field
    @IBAction func Entering(_ sender: Any) {
        // hide the warning label when you are entering in the text field
        labelWarning.isHidden = true
    }
    
    @IBAction func buttonCancelClicked(_ sender: Any) {
        // hide  if you click the cancel button
        labelG.isHidden = true
        // hide  if you click the cancel button
        labelLine.isHidden = true
        // hide labelBoard if you click the cancel button
        labelBoard.isHidden = true
        // hide labelAddingChemical if you click the cancel button
        labelAddingChemical.isHidden = true
        // hide textAmount if you click the cancel button
        textAmount.isHidden = true
        // hide buttonCancel if you click the cancel button
        buttonCancel.isHidden = true
        // hide buttonSubmit if you click the cancel button
        buttonSubmit.isHidden = true
        // hide labelWarning if you click the cancel button
        labelWarning.isHidden = true
        // hide labelAdding if you click the cancel button
        labelAdding.isHidden = true
        // clear the text in the text field
        textAmount.text = ""
        // hide blurEffect if you click the cancel button
        blurEffect.isHidden = true
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
    // create a function called clearText, which clears the text
    func clearText(condition: String, seconds: Double) {
        // executes the following code after the seconds you input
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds) {
            // if the text of the tip label is what you input
            if self.labelTip.text == condition {
                // clear the text of the tip label
                self.labelTip.text = ""
            }
        }
    }
}
