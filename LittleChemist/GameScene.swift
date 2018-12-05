import SpriteKit
import GameplayKit
import AVFoundation
class GameScene: SKScene {
    // set the type and initial value of soundIsPlaying
    var soundIsPlaying = false
    // connect the view controller and the game scene
    weak var viewController: GameViewController!
    // set the type and initial value of accumulatedTime
    private var accumulatedTime: TimeInterval = 0
    // set the type of boilingSound
    var boilingSound: SKAudioNode!
    var counterTT = 0
    // set the type and initial value of arrayOfBoilingPoint
    var arrayOfBoilingPoint = [-1.0, -1.0, -1.0]
    // set the type and initial value of arrayOfMeltingPoint
    var arrayOfMeltingPoint = [-1.0, -1.0, -1.0]
    // set the type and initial value of indexOfBeakerBeingAddedTo
    var indexOfBeakerBeingAddedTo = 0
    // set the type and initial value of hasYellow
    var hasYellow = [false,false,false]
    // set the type and initial value of hasBlue
    var hasBlue = [false,false,false]
    // set the type and initial value of hasBeaker
    var hasBeaker = [false,false,false]
    // set the type and initial value of hasBurner
    var hasBurner = [false,false,false]
    // set the type and initial value of hasWater
    var hasWater = [false,false,false]
    // set the type and initial value of amountOfYellow
    var amountOfYellow = [0.0,0.0,0.0]
    // set the type and initial value of amountOfBlue
    var amountOfBlue = [0.0,0.0,0.0]
    // set the type and initial value of amountOfWater
    var amountOfWater = [0.0,0.0,0.0]
    // set the type and initial value of temperature
    var temperature = [25.0,25.0,25.0]
    // set the type and image of phPaper
    let phPaper = SKSpriteNode (imageNamed: "phPaper")
    // set the type and initial value of phPaperIsSelected
    var phPaperIsSelected = false
    // set the type and image of thermometer
    let thermometer = SKSpriteNode (imageNamed: "thermometer")
    // set the type and initial value of thermometerIsSelected
    var thermometerIsSelected = false
    // set the type and image of background
    let background = SKSpriteNode (imageNamed: "background")
    // set the type and initial value of scrollDownSignIsSelected
    var scrollDownSignIsSelected = false
    // set the type and image of scrollDownSign
    let scrollDownSign = SKSpriteNode (imageNamed: "scrolldown")
    // set the type and initial value of currentBeakerIndex
    var currentBeakerIndex = 0
    // set the type and content of arrayOfBubblings
    let arrayOfBubblings = [SKSpriteNode (imageNamed: "bubble1"), SKSpriteNode (imageNamed: "bubble1"), SKSpriteNode (imageNamed: "bubble1")]
    // set the type and image of thermo
    let thermo = SKSpriteNode (imageNamed: "thermo1")
    // set the type and content of arrayOfBeakers
    let arrayOfBeakers = [SKSpriteNode (imageNamed: "beaker2"), SKSpriteNode (imageNamed: "beaker2"), SKSpriteNode (imageNamed: "beaker2"), SKSpriteNode (imageNamed: "beaker2"), SKSpriteNode (imageNamed: "beaker2")]
    // set the type and initial value of beakerIsSelected
    var beakerIsSelected = false
    // set the type and initial value of currentBurnerIndex
    var currentBurnerIndex = 0
    // set the type and content of arrayOfBurners
    let arrayOfBurners = [SKSpriteNode (imageNamed: "bunsenBurner"), SKSpriteNode (imageNamed: "bunsenBurner"), SKSpriteNode (imageNamed: "bunsenBurner"), SKSpriteNode (imageNamed: "bunsenBurner"), SKSpriteNode (imageNamed: "bunsenBurner")]
    // set the type and initial value of burnerIsSelected
    var burnerIsSelected = false
    // set the type and image of oneRack
    let oneRack = SKSpriteNode (imageNamed: "rack")
    // set the type and image of twoRack
    let twoRack = SKSpriteNode (imageNamed: "rack")
    // set the type and image of threeRack
    let threeRack = SKSpriteNode (imageNamed: "rack")
    // set the type and image of yellowInWatchGlass
    let yellowInWatchGlass = SKSpriteNode (imageNamed: "yellowPowder")
    // set the type and initial value of yellowIsSelected
    var yellowIsSelected = false
    // set the type and image of blueInWatchGlass
    let blueInWatchGlass = SKSpriteNode (imageNamed: "bluePowder")
    // set the type and initial value of blueIsSelected
    var blueIsSelected = false
    // set the type and image of waterInContainer
    let waterInContainer = SKSpriteNode (imageNamed: "water")
    // set the type and initial value of waterIsSelected
    var waterIsSelected = false
    // set the type and initial value of magnifyingGlassIsSelected
    var magnifyingGlassIsSelected = false
    // set the type and content of arrayOfYellows
    let arrayOfYellows = [SKSpriteNode (imageNamed: "yellow"),SKSpriteNode (imageNamed: "yellow"),SKSpriteNode (imageNamed: "yellow")]
    // set the type and content of arrayOfBlues
    let arrayOfBlues = [SKSpriteNode (imageNamed: "blue"),SKSpriteNode (imageNamed: "blue"),SKSpriteNode (imageNamed: "blue")]
    // set the type and content of arrayOfWaters
    let arrayOfWaters = [SKSpriteNode (imageNamed: "waterCylinder"),SKSpriteNode (imageNamed: "waterCylinder"),SKSpriteNode (imageNamed: "waterCylinder")]
    // set the type and content of arrayOfBlueSolutions
    let arrayOfBlueSolutions = [SKSpriteNode (imageNamed: "blueCylinder"),SKSpriteNode (imageNamed: "blueCylinder"),SKSpriteNode (imageNamed: "blueCylinder")]
    // set the type and content of arrayOfYellowSolutions
    let arrayOfYellowSolutions = [SKSpriteNode (imageNamed: "clearCylinder"),SKSpriteNode (imageNamed: "clearCylinder"),SKSpriteNode (imageNamed: "clearCylinder")]
    // set the type and content of arrayOfPrecipitates
    let arrayOfPrecipitates = [SKSpriteNode (imageNamed: "blueBlackPowder"),SKSpriteNode (imageNamed: "blueBlackPowder"),SKSpriteNode (imageNamed: "blueBlackPowder")]
    // set the type and content of arrayOfMeltedBlues
    let arrayOfMeltedBlues = [SKSpriteNode (imageNamed: "blueMelted"),SKSpriteNode (imageNamed: "blueMelted"),SKSpriteNode (imageNamed: "blueMelted")]
    // set the type and image of magnifyingGlass
    let magnifyingGlass = SKSpriteNode(imageNamed:"magnifyingGlass")
    // set the type and image of shelf
    let shelf = SKSpriteNode(imageNamed:"shelf")
    // set the type and initial value of indexOfBeakerOnOne
    var indexOfBeakerOnOne = 0
    // set the type and initial value of indexOfBurnerOnOne
    var indexOfBurnerOnOne = 0
    // set the type and initial value of indexOfBeakerOnTwo
    var indexOfBeakerOnTwo = 0
    // set the type and initial value of indexOfBurnerOnTwo
    var indexOfBurnerOnTwo = 0
    // set the type and initial value of indexOfBeakerOnThree
    var indexOfBeakerOnThree = 0
    // set the type and initial value of indexOfBurnerOnThree
    var indexOfBurnerOnThree = 0
   
    override func didMove(to view: SKView) {
        // assign localSoundBoil an audio file
        let localSoundBoil = SKAudioNode(fileNamed:"soundBoil")
        // assign localSoundBoil to boilingSound
        boilingSound = localSoundBoil
        // set the first frame of the fire animation
        let thermo1 = SKTexture.init(imageNamed: "thermo1")
        // set the secibd frame of the fire animation
        let thermo2 = SKTexture.init(imageNamed: "thermo2")
        // set the third frame of the fire animation
        let thermo3 = SKTexture.init(imageNamed: "thermo3")
        // set the forth frame of the fire animation
        let thermo4 = SKTexture.init(imageNamed: "thermo4")
        // set the fifth frame of the fire animation
        let thermo5 = SKTexture.init(imageNamed: "thermo5")
        // set the sixth frame of the fire animation
        let thermo6 = SKTexture.init(imageNamed: "thermo6")
        // create an array that contains all of the above frames
        let thermos = [thermo1, thermo2, thermo3, thermo4, thermo5, thermo6]
        // create an animation, that display a SKTexture every 0.3 seconds
        let thermoAnimation = SKAction.animate(with: thermos, timePerFrame: 0.3)
        // set the first frame for the bubbling animation
        let frame1 = SKTexture.init(imageNamed: "bubble1")
        // set the second frame for the bubbling animation
        let frame2 = SKTexture.init(imageNamed: "bubble2")
        // set the third frame for the bubbling animation
        let frame3 = SKTexture.init(imageNamed: "bubble3")
        // set the forth frame for the bubbling animation
        let frame4 = SKTexture.init(imageNamed: "bubble4")
        // set the fifth frame for the bubbling animation
        let frame5 = SKTexture.init(imageNamed: "bubble5")
        // set the sixth frame for the bubbling animation
        let frame6 = SKTexture.init(imageNamed: "bubble6")
        // create an array that contains all of the above frames for the bubbling animation
        let frames = [frame1, frame2, frame3, frame4, frame5, frame6]
        // create the animation: display a texture every o.1 seconds
        let animation = SKAction.animate(with: frames, timePerFrame: 0.1)
        // set the zPosition of magnifyingGlass
        magnifyingGlass.zPosition = 230
        // set the size of magnifyingGlass
        magnifyingGlass.size = CGSize (width: 105, height: 105)
        // set the position of magnifyingGlass
        magnifyingGlass.position = CGPoint (x:540, y: -280)
        // add magnifyingGlass to the game scene
        self.addChild(magnifyingGlass)
        // set the position of shelf
        shelf.position = CGPoint (x: 0, y: 690)
        // set the zPosition of shelf
        shelf.zPosition = -0.9
        // set the size of shelf
        shelf.size = CGSize (width: 1300, height: 240)
        // add shelf to the game scene
        self.addChild(shelf)
        // set the position of background
        background.position = CGPoint (x: 0, y: 0)
        // set the size of background
        background.size = CGSize (width: 1334, height: 750)
        // set the zPosition of background
        background.zPosition = -1
        // add background to the game scene
        self.addChild(background)
        // set the position of scrollDownSign
        scrollDownSign.position = CGPoint (x: 0, y: 290)
        // set the size of scrollDownSign
        scrollDownSign.size = CGSize (width: 310, height: 160)
        // add scrollDownSign to the game scene
        self.addChild(scrollDownSign)
        // set the size of oneRack
        oneRack.size = CGSize (width: 270, height: 300)
        // set the position of oneRack
        oneRack.position = CGPoint (x: -315, y: -145)
        // set the zPosition of oneRack
        oneRack.zPosition = 14
        // add oneRack to the game scene
        self.addChild(oneRack)
        // set the size of twoRack
        twoRack.size = CGSize (width: 270, height: 300)
        // set the position of twoRack
        twoRack.position = CGPoint (x: 18.5, y: -145)
        // se the zPosition of twoRack
        twoRack.zPosition = 14
        // add twoRack to the game scene
        self.addChild(twoRack)
        // set the size of threeRack
        threeRack.size = CGSize (width: 270, height: 300)
        // set the size of threeRack
        threeRack.position = CGPoint (x: 352, y: -145)
        // set the zPosition of threeRack
        threeRack.zPosition = 14
        // add threeRack to the game scene
        self.addChild(threeRack)
        // set the size of phPaper
        phPaper.size = CGSize (width: 90, height: 100)
        // set teh zPosition of phPaper
        phPaper.zPosition = 22
        // set the position of phPaper
        phPaper.position = CGPoint (x: 266, y: 690)
        // add phPaper to the game scene
        self.addChild(phPaper)
        // set the size of thermometer
        thermometer.size = CGSize (width: 90, height: 90)
        // set the zPosition of thermometer
        thermometer.zPosition = 22
        // set the position of thermometer
        thermometer.position = CGPoint (x: 399, y: 690)
        // add thermometer to the game scene
        self.addChild(thermometer)
        // loop counter from 0 to 4
        for counter in 0...4 {
            // set the position of every node in the array
            arrayOfBeakers[counter].position = CGPoint (x: -399, y: 690)
            // set the size of every node in the array
            arrayOfBeakers[counter].size = CGSize (width: 90, height: 90)
            // set the zPosition of every node in the array
            arrayOfBeakers[counter].zPosition = 20
            // add every node in the array to the game scene
            self.addChild(arrayOfBeakers[counter])
            // set the position of every node in the array
            arrayOfBurners[counter].position = CGPoint (x: 133, y: 690)
            // set the size of every node in the array
            arrayOfBurners[counter].size = CGSize (width: 80, height: 100)
            // set the zPosition of every node in the array
            arrayOfBurners[counter].zPosition = -0.8
            // add every node in the array to the game scene
            self.addChild(arrayOfBurners[counter])
        }
        // set the position of yellowInWatchGlass, so that it won't be seen
        yellowInWatchGlass.position = CGPoint (x: -133, y: 690)
        // set the size of yellowInWatchGlass
        yellowInWatchGlass.size = CGSize (width: 110.01, height: 45.02)
        // set the zPosition of yellowInWatchGlass
        yellowInWatchGlass.zPosition = 21
        // add yellowInWatchGlass to the game scene
        self.addChild(yellowInWatchGlass)
        // set the position of blueInWatchGlass, so that it won't be seen
        blueInWatchGlass.position = CGPoint (x: 0, y: 690)
        // set the size of blueInWatchGlass
        blueInWatchGlass.size = CGSize (width: 115.03, height: 45.04)
        // set the zPosition of blueInWatchGlass
        blueInWatchGlass.zPosition = 21
        // add blueInWatchGlass to the game scene
        self.addChild(blueInWatchGlass)
        // set the position of waterInContainer, so that it won't be seen
        waterInContainer.position = CGPoint (x: -266, y: 690)
        // set the size of waterInContainer
        waterInContainer.size = CGSize (width: 70, height: 90)
        // set the zPosition of waterInContainer
        waterInContainer.zPosition = 21
        // add waterInContainer to the game scene
        self.addChild(waterInContainer)
        // set the size of thermo
        thermo.size = CGSize (width: 300, height: 500)
        // set the position of thermo
        thermo.position = CGPoint (x: 430, y: 10)
        // set the zPosition of thermo
        thermo.zPosition = 100
        // make thermo run the animation
        thermo.run(SKAction.repeatForever(thermoAnimation))
        // loop counter from 0 to 2
        for counter in 0 ... 2 {
            // add every node in the array to the game scene
            self.addChild(arrayOfYellows[counter])
            // add every node in the array to the game scene
            self.addChild(arrayOfBlues[counter])
            // add every node in the array to the game scene
            self.addChild(arrayOfWaters[counter])
            // add every node in the array to the game scene
            self.addChild(arrayOfBlueSolutions[counter])
            // add every node in the array to the game scene
            self.addChild(arrayOfYellowSolutions[counter])
            // add every node in the array to the game scene
            self.addChild(arrayOfPrecipitates[counter])
            // add every node in the array to the game scene
            self.addChild(arrayOfMeltedBlues[counter])
            // add every node in the array to the game scene
            self.addChild(arrayOfBubblings[counter])
            // set the zPosition of every node in the array
            arrayOfBubblings[counter].zPosition = 19
            // make every node in the array fade away
            arrayOfYellows[counter].run(SKAction.fadeOut(withDuration: 0.000001))
            // make every node in the array fade away
            arrayOfBlues[counter].run(SKAction.fadeOut(withDuration: 0.000001))
            // make every node in the array fade away
            arrayOfWaters[counter].run(SKAction.fadeOut(withDuration: 0.000001))
            // make every node in the array fade away
            arrayOfBlueSolutions[counter].run(SKAction.fadeOut(withDuration: 0.000001))
            // make every node in the array fade away
            arrayOfYellowSolutions[counter].run(SKAction.fadeOut(withDuration: 0.000001))
            // make every node in the array fade away
            arrayOfPrecipitates[counter].run(SKAction.fadeOut(withDuration: 0.000001))
            // make every node in the array fade away
            arrayOfMeltedBlues[counter].run(SKAction.fadeOut(withDuration: 0.000001))
            // make every node in the array fade away
            arrayOfBubblings[counter].run(SKAction.fadeOut(withDuration: 0.000001))
            // make every node in the array fade away
            arrayOfBubblings[counter].run(SKAction.repeatForever(animation))
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // if blurEffect is hided
        if viewController.blurEffect.isHidden {
            // for every touch
            for touch in touches {
                // make the location equal to where you touch
                let location = touch.location(in: self)
                // if the touch is on scrollDownSign
                if scrollDownSign.contains(location) {
                    // set scrollDownSignIsSelected to true
                    scrollDownSignIsSelected = true
                // if the touch is not on scrollDownSign
                } else {
                    // set scrollDownSignIsSelected to false
                    scrollDownSignIsSelected = false
                }
                // loop counter from 0 to 4
                for counter in 0...4 {
                    // if the node in the array is selected
                    if arrayOfBeakers[counter].contains(location) {
                        // set the index of the beaker being selected
                        currentBeakerIndex = counter
                    }
                    // if the node in the array is selected
                    if arrayOfBurners[counter].contains(location) {
                        // set the index of the beaker being selected
                        currentBurnerIndex = counter
                    }
                }
                // if the location touched contains any one of the nodes in the arrayOfBeakers
                if arrayOfBeakers[currentBeakerIndex].contains(location) {
                    // set beakerIsSelected to true
                    beakerIsSelected = true
                    // if teh text of the tip label is informing you to drag down a beaker
                    if viewController.labelTip.text == "Drag down a beaker and start your experiment." {
                        // clear the text, since you have already done so
                        viewController.labelTip.text = ""
                    }
                // if the location you touched does not contain beaker
                } else {
                    // set beakerIsSelected to false
                    beakerIsSelected = false
                }
                // if the location you touched contains any one of the nodes in the arrayOfBurners
                if arrayOfBurners[currentBurnerIndex].contains(location) {
                    // set burnerIsSelected to true
                    burnerIsSelected = true
                // if the location you touched does not contain any one of the nodes in the arrayOfBurners
                } else {
                    // set burnerIsSelected to false
                    burnerIsSelected = false
                }
                // if the location you touched does contain yellowInWatchGlass
                if yellowInWatchGlass.contains(location) {
                    // set yellowIsSelected to true
                    yellowIsSelected = true
                // if the location you touched does not contain yellowInWatchGlass
                } else {
                    // set yellowIsSelected to false
                    yellowIsSelected = false
                }
                // if the location you touched does contain blueInWatchGlass
                if blueInWatchGlass.contains(location) {
                    // set blueIsSelected to true
                    blueIsSelected = true
                // if the location you touched does not contain blueInWatchGlass
                } else {
                    // set blueIsSelected to false
                    blueIsSelected = false
                }
                // if the location you touched does contain waterInContainer
                if waterInContainer.contains(location) {
                    // set waterIsSelected to true
                    waterIsSelected = true
                // if the location you touched does not contain waterInContainer
                } else {
                    // set waterIsSelected to false
                    waterIsSelected = false
                }
                // if the location you touched does contain magnifyingGlass
                if magnifyingGlass.contains(location) {
                    // set magnifyingGlassIsSelected to true
                    magnifyingGlassIsSelected = true
                // if the location you touched does not contain magnifyingGlass
                } else {
                    // set magnifyingGlassIsSelected to false
                    magnifyingGlassIsSelected = false
                }
                // if the location you touched does contain phPaper
                if phPaper.contains(location) {
                    // set phPaperIsSelected to true
                    phPaperIsSelected = true
                    // if the vallue of counterTT is zero or three
                    if counterTT == 0 || counterTT == 4 {
                        // change the image of testTubeTT
                        viewController.testTubeTT.image = UIImage (named: "emptyTT")
                        // reveal testTubeTT
                        viewController.testTubeTT.isHidden = false
                        // reveal textTT
                        viewController.textTT.isHidden = false
                        // reveal blurEffect
                        viewController.blurEffect.isHidden = false
                        // reveal titleTT
                        viewController.titleTT.isHidden = false
                        // reveal buttonCancelTT
                        viewController.buttonCancelTT.isHidden = false
                        // reveal buttonOkTT
                        viewController.buttonOkTT.isHidden = false
                        // reveal boardTT
                        viewController.boardTT.isHidden = false
                        // reveal segmentTT
                        viewController.segmentTT.isHidden = false
                        // update counterTT by one
                        counterTT += 1
                    }
                // if the location you touched does not contain phPaper
                } else {
                    // set phPaperIsSelected to false
                    phPaperIsSelected = false
                }
                // if the location you touched does contain thermometer
                if thermometer.contains(location) {
                    // set thermometerIsSelected to true
                    thermometerIsSelected = true
                // if the location you touched does not contain thermometer
                } else {
                    // set thermometerIsSelected to false
                    thermometerIsSelected = false
                }
            }
        // if blurEffect is revealed
        } else {
            // set waterIsSelected to false
            waterIsSelected = false
            // set blueIsSelected to false
            blueIsSelected = false
            // set yellowIsSelected to false
            yellowIsSelected = false
            // set magnifyingGlassIsSelected to false
            magnifyingGlassIsSelected = false
            // set thermometerIsSelected to false
            thermometerIsSelected = false
            // set phPaperIsSelected to false
            phPaperIsSelected = false
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        // for every touch
        for touch in touches {
            // set location as where you touch
            let location = touch.location(in: self)
            // if the scrolldown sign is selected and the location is in the upper most part of the screen
            if scrollDownSignIsSelected && location.y > 220 {
                // the scroll down sign moves proportionaly as you finger
                scrollDownSign.position = CGPoint (x: 0, y: scrollDownSign.position.y - (scrollDownSign.position.y - location.y) * 0.3)
            }
            // if beaker is selected and the location is in the upper point
            if beakerIsSelected && location.y >= 220 {
                // make the beaker you select moves as you finger
                arrayOfBeakers[currentBeakerIndex].position = location
                // make the beaker you select return to its icon size
                arrayOfBeakers[currentBeakerIndex].run(SKAction.resize(toWidth: 90, height: 90, duration: 0.12))
                // find the beaker that is not dragged down and not the one you are selecting
                for counter in 0 ... 4 where counter != currentBeakerIndex && arrayOfBeakers[counter].position.x != 333.5 && arrayOfBeakers[counter].position.x != -333.5 && arrayOfBeakers[counter].position.x != 0 {
                    // make them unable to be seen by the player
                    arrayOfBeakers[counter].run(SKAction.move(to: CGPoint (x: -399, y: 690), duration: 0.6))
                }
            // if you have selected he beaker and the location is not in the upper most part
            } else if beakerIsSelected && location.y < 220 {
                // make the beaker you have selected move with you finger
                arrayOfBeakers[currentBeakerIndex].position = location
                // make the beaker you have selected larger
                arrayOfBeakers[currentBeakerIndex].run(SKAction.resize(toWidth: 270, height: 270, duration: 0.12))
            }
            // if you have selected burner and the location is in the upper most part
            if burnerIsSelected && location.y >= 220 {
                // make the burner move as you finger
                arrayOfBurners[currentBurnerIndex].position = location
                // make the burner you have selected return to its icon size
                arrayOfBurners[currentBurnerIndex].run(SKAction.resize(toWidth: 80, height: 100, duration: 0.12))
                // find the burner that is not selected and the ones that is not dragged down
                for counter in 0 ... 4 where counter != currentBurnerIndex && arrayOfBurners[counter].position.x != 346 && arrayOfBurners[counter].position.x != -327 && arrayOfBurners[counter].position.x != 6.5 {
                    // make them unable to be seen by the player
                    arrayOfBurners[counter].run(SKAction.move(to: CGPoint (x: 133, y: 690), duration: 0.6))
                }
            // if burner is selected and the location is not in the upper most part
            } else if burnerIsSelected && location.y < 220 {
                // make the burner move as your finger
                arrayOfBurners[currentBurnerIndex].position = location
                // make the burner you have selected larger to highlight it
                arrayOfBurners[currentBurnerIndex].run(SKAction.resize(toWidth: 240, height: 300, duration: 0.12))
            }
            // if you have selected sodium sulfide and the location is in the upper most part
            if yellowIsSelected && location.y >= 220 {
                // make the sodium sulfide move as your finger does
                yellowInWatchGlass.position = location
                // make the sodium sulfide you have selected return to their icon size
                yellowInWatchGlass.run(SKAction.resize(toWidth: 110.01, height: 45.02, duration: 0.10))
            // if sodium sulfide is selected and it is not in the upper most part
            } else if yellowIsSelected && location.y < 220 {
                // make the sodium sulfide move as your finger does
                yellowInWatchGlass.position = location
                // make the sodium sulfide larger
                yellowInWatchGlass.run(SKAction.resize(toWidth: 200.001, height: 81.8, duration: 0.10))
            }
            // if you have selected copper (II) sulfide and the location is in the upper most part
            if blueIsSelected && location.y >= 220 {
                // make the copper (II) sulfide node move as your finger does
                blueInWatchGlass.position = location
                // make the copper (II) sulfide node return to the icon size
                blueInWatchGlass.run(SKAction.resize(toWidth: 115.03, height: 45.04, duration: 0.10))
            // if copper (II) sulfide is selected and the location is not in the upper most part
            } else if blueIsSelected && location.y < 220 {
                // make the copper (II) sulfide move as your finger does
                blueInWatchGlass.position = location
                // make the copper (II) sulfide larger to highlight it
                blueInWatchGlass.run(SKAction.resize(toWidth: 209.09, height: 81.9, duration: 0.12))
            }
            // if you have selected water and the location is in the upper most part
            if waterIsSelected && location.y >= 220 {
                // make the node move as your finger does
                waterInContainer.position = location
                // make the node return to its icon size
                waterInContainer.run(SKAction.resize(toWidth: 70, height: 90, duration: 0.10))
            // if you have selected water and the location is not in the upper most part
            } else if waterIsSelected && location.y < 220 {
                // make the node move as your finger does
                waterInContainer.position = location
                // make the node larger to highlight it
                waterInContainer.run(SKAction.resize(toWidth: 140, height: 180, duration: 0.10))
            }
            // if you have selected the magnifying glass tool
            if magnifyingGlassIsSelected {
                // make the magnifying glass move as you finger
                magnifyingGlass.position = location
                // make the node larger to highlight it
                magnifyingGlass.run(SKAction.resize(toWidth: 165, height: 165, duration: 0.06))
            }
            // if you have selected the pH paper and the location is in the upper most part
            if phPaperIsSelected && location.y >= 220 {
                // make the node as your finger does
                phPaper.position = location
                // make the node return to its icon size
                phPaper.run(SKAction.resize(toWidth: 90, height: 100, duration: 0.09))
            // if you have selected the pH paper and the location is not in the upper most part
            } else if phPaperIsSelected && location.y < 220 {
                // make the node move as where you finger is
                phPaper.position = location
                // make the node larger to highlight it
                phPaper.run(SKAction.resize(toWidth: 170, height: 210, duration: 0.09))
            }
            // if you have selected the thermometer paper and the location is in the upper most part
            if thermometerIsSelected && location.y >= 220 {
                // make the thermometer move as you finger
                thermometer.position = location
                // make the thermometer return to its icon size
                thermometer.run(SKAction.resize(toWidth: 90, height: 90, duration: 0.09))
            // if you have selected the thermometer and the location is not in the upper most part
            } else if thermometerIsSelected && location.y < 220 {
                // make the thermometer move as you finger
                thermometer.position = location
                // make the node larger to highlight it
                thermometer.run(SKAction.resize(toWidth: 100, height: 190, duration: 0.09))
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        // for every touch
        for touch in touches {
            // let the location be where you touch the screen
            let location = touch.location(in: self)
            // if the scroll down sigh is selected and the end location is not in the upper most part
            if scrollDownSignIsSelected && location.y <= 160 {
                // make the scroll down sign fade away
                scrollDownSign.run(SKAction.fadeOut(withDuration: 0.1), completion: {self.scrollDownSign.run(SKAction.move(to: CGPoint (x: 0, y: 690), duration: 0.0001))})
                // make the first beaker in the array run to the shelf
                arrayOfBeakers[0].run(SKAction.move(to: CGPoint (x: -399, y: 276), duration: 0.3))
                // make the first burner in the array run to the shelf
                arrayOfBurners[0].run(SKAction.move(to: CGPoint (x: 133, y: 277), duration: 0.3))
                // make the sodium sulfide run to the shelf
                yellowInWatchGlass.run(SKAction.move(to: CGPoint (x: -133, y: 274), duration: 0.3))
                // make copper (II) sulfate run to the shelf
                blueInWatchGlass.run(SKAction.move(to: CGPoint (x: 0, y: 274), duration: 0.3))
                // make the water run to the shelf
                waterInContainer.run(SKAction.move(to: CGPoint (x: -266, y: 274), duration: 0.3))
                // make the pH paper run to the shelf
                phPaper.run(SKAction.move(to: CGPoint (x: 266, y: 270), duration: 0.3))
                // make the thermometer run to the shelf
                thermometer.run(SKAction.move(to: CGPoint (x: 399, y: 275), duration: 0.3))
                // make the shelf be in place
                shelf.run(SKAction.move(to: CGPoint (x: 0, y: 190), duration: 0.25))
            // if the scroll down sign is selected but it is not successfully dragged down
            } else if scrollDownSignIsSelected && location.y > 160 {
                // make the sign run to its origional location
                scrollDownSign.run(SKAction.move(to: CGPoint (x: 0, y: 290), duration: 0.4))
            }
            // if the beaker is selected and it is successfully dragged down
            if beakerIsSelected && location.y <= 220 {
                // find the beaker that is not selected and is not dragged down
                for counter in 0 ... 4 where counter != currentBeakerIndex && arrayOfBeakers[counter].position.x != 333.5 && arrayOfBeakers[counter].position.x != -333.5 && arrayOfBeakers[counter].position.x != 0 {
                    // make the beaker you find run to the shelf
                    arrayOfBeakers[counter].run(SKAction.move(to: CGPoint (x: -399, y: 276), duration: 0.2))
                    // break the loop
                    break
                }
                // if you have dragged the beaker to spot three
                if location.x >= 166.75 {
                    // if if spot three does not have a beaker
                    if !hasBeaker[2] {
                        // if spot three does not have a burner
                        if !hasBurner[2] {
                            // make the beaker you have selected run to the lower part of spot three and play the sound
                            arrayOfBeakers[currentBeakerIndex].run(SKAction.move(to: CGPoint (x: 333.5, y: -139), duration: 0.2), completion: {self.arrayOfBeakers[self.currentBeakerIndex].run(SKAction.playSoundFileNamed("soundBeaker", waitForCompletion: false))})
                        // if spot three has a burner
                        } else {
                            // make the beaker you have selected move to the upper part of spot three and play the sound
                            arrayOfBeakers[currentBeakerIndex].run(SKAction.move(to: CGPoint (x: 333.5, y: 66), duration: 0.3), completion: {self.arrayOfBeakers[self.currentBeakerIndex].run(SKAction.playSoundFileNamed("soundMetal", waitForCompletion: false))})
                            // make the beaker become slightly smaller
                            arrayOfBeakers[currentBeakerIndex].run(SKAction.resize(toWidth: 250, height: 250, duration: 0.12))
                            // make the burner on spot three become slightly smaller
                            arrayOfBurners[indexOfBurnerOnThree].run(SKAction.resize(toWidth: 200, height: 250, duration: 0.12))
                            // make the burner on spot three move a little bit to make the beaker fit
                            arrayOfBurners[indexOfBurnerOnThree].run(SKAction.move(to: CGPoint(x: 346, y: -146), duration: 0.12))
                        }
                    // if spot three has a beaker already
                    } else {
                        // if the beaker you have selected is not on spot three
                        if arrayOfBeakers[currentBeakerIndex].position.x != 333.5 {
                            // ferform the function to empty all the contents in the beaker being returned
                            emptyContents()
                            // make the beaker being returned return to its icon size
                            arrayOfBeakers[currentBeakerIndex].run(SKAction.resize(toWidth: 90, height: 90, duration: 0.12))
                            // find the beaker that is not selected and is not dragged down
                            for counter in 0 ... 4 where counter != currentBeakerIndex && arrayOfBeakers[counter].position.x != 333.5 && arrayOfBeakers[counter].position.x != -333.5 && arrayOfBeakers[counter].position.x != 0 {
                                // make them unable to be seen by the player
                                arrayOfBeakers[counter].run(SKAction.move(to: CGPoint (x: -399, y: 690), duration: 0.6))
                            }
                        }
                    }
                // if you drag the beaker to spot one
                } else if location.x <= -166.75 {
                    // if spot one does not have a beaker
                    if !hasBeaker[0] {
                        // and if spot one does not have a burner
                        if !hasBurner[0] {
                            // make the beaker you have selected run to spot one and play sound
                            arrayOfBeakers[currentBeakerIndex].run(SKAction.move(to: CGPoint (x: -333.5, y: -139), duration: 0.3), completion: {self.arrayOfBeakers[self.currentBeakerIndex].run(SKAction.playSoundFileNamed("soundBeaker", waitForCompletion: false))})
                        // if spot one has a burner
                        } else {
                            // make the beaker run to the upper part of spot one and play sound
                           arrayOfBeakers[currentBeakerIndex].run(SKAction.move(to: CGPoint (x: -333.5, y: 66), duration: 0.3), completion: {self.arrayOfBeakers[self.currentBeakerIndex].run(SKAction.playSoundFileNamed("soundMetal", waitForCompletion: false))})
                            // make the size of the beaker slightly smaller to fit in
                            arrayOfBeakers[currentBeakerIndex].run(SKAction.resize(toWidth: 250, height: 250, duration: 0.12))
                            // make the burner on spot one to become slightly smaller to fit in
                             arrayOfBurners[indexOfBurnerOnOne].run(SKAction.resize(toWidth: 200, height: 250, duration: 0.12))
                            // make the burner on spot one to change position to compensate the adding of a beaker
                            arrayOfBurners[indexOfBurnerOnOne].run(SKAction.move(to: CGPoint(x: -327, y: -146), duration: 0.12))
                        }
                    // if spot one already has a beaker
                    } else {
                        // if the beaker that has been selected is not on spot three
                        if arrayOfBeakers[currentBeakerIndex].position.x != -333.5 {
                            // empty the contents in the beaker
                            emptyContents()
                                // make the beaker that has been selected return to its icon size
                            arrayOfBeakers[currentBeakerIndex].run(SKAction.resize(toWidth: 90, height: 90, duration: 0.12))
                            // find the beakers that is not selected and is not dragged down
                            for counter in 0 ... 4 where counter != currentBeakerIndex && arrayOfBeakers[counter].position.x != 333.5 && arrayOfBeakers[counter].position.x != -333.5 && arrayOfBeakers[counter].position.x != 0 {
                                // make them unable to be seen by the player
                                arrayOfBeakers[counter].run(SKAction.move(to: CGPoint (x: -399, y: 690), duration: 0.6))
                            }
                        }
                    }
                // if the beaker is dragged to spot two
                } else {
                    // if spot two does not have a beaker
                    if !hasBeaker[1] {
                        // if sopt two does not have a burner
                        if !hasBurner[1] {
                            // make the beaker being selected run to spot two and play the sound
                            arrayOfBeakers[currentBeakerIndex].run(SKAction.move(to: CGPoint (x: 0, y: -139), duration: 0.3), completion: {self.arrayOfBeakers[self.currentBeakerIndex].run(SKAction.playSoundFileNamed("soundBeaker", waitForCompletion: false))})
                        // if spot two has a burner
                        } else {
                            // make the beaker selected run to the upper part of spot two and play the sound
                            arrayOfBeakers[currentBeakerIndex].run(SKAction.move(to: CGPoint (x: 0, y: 66), duration: 0.3), completion: {self.arrayOfBeakers[self.currentBeakerIndex].run(SKAction.playSoundFileNamed("soundMetal", waitForCompletion: false))})
                            // make the beaker becomes slightly smaller to compensate the burner
                            arrayOfBeakers[currentBeakerIndex].run(SKAction.resize(toWidth: 250, height: 250, duration: 0.12))
                            // make the burner on spot two slight smaller to compensate the beaker
                            arrayOfBurners[indexOfBurnerOnTwo].run(SKAction.resize(toWidth: 200, height: 250, duration: 0.12))
                            // change the burner on spot two to compensate the beaker
                            arrayOfBurners[indexOfBurnerOnTwo].run(SKAction.move(to: CGPoint(x: 6.5, y: -146), duration: 0.12))
                        }
                    // if spot two already has a beaker
                    } else {
                        // if the beaker selected is not on spot two
                        if arrayOfBeakers[currentBeakerIndex].position.x != 0 {
                            // empty the contents of the beaker being returned
                            emptyContents()
                            // make the beaker being returned return to its icon size
                            arrayOfBeakers[currentBeakerIndex].run(SKAction.resize(toWidth: 90, height: 90, duration: 0.12))
                            // find the beakers that are not on spot two
                            for counter in 0 ... 4 where counter != currentBeakerIndex && arrayOfBeakers[counter].position.x != 333.5 && arrayOfBeakers[counter].position.x != -333.5 && arrayOfBeakers[counter].position.x != 0 {
                                // make them enable to be seen by the player
                                arrayOfBeakers[counter].run(SKAction.move(to: CGPoint (x: -399, y: 690), duration: 0.6))
                            }
                        }
                    }
                }
            // if beaker is selected and it is not successfully dragged down
            } else if beakerIsSelected && location.y > 220 {
                // empty the contents of the beaker being selected and return the beaker to the shelf
                emptyContents()
            }
            
            // if burner is selcted and it has been successfully dragged down
            if burnerIsSelected && location.y <= 220 {
                // find the burners that are not selected and are not dragged down
                for counter in 0 ... 4 where counter != currentBurnerIndex && arrayOfBurners[counter].position.x != 346 && arrayOfBurners[counter].position.x != -327 && arrayOfBurners[counter].position.x != 6.5 {
                    // make them run back to the shelf
                    arrayOfBurners[counter].run(SKAction.move(to: CGPoint (x: 133, y: 277), duration: 0.2))
                    // break the loop
                    break
                }
                // if you are dragging the burner to spot three
                if location.x >= 166.75 {
                    // if spot three does not have a burner
                    if !hasBurner[2] {
                        // if spot three does not have a beaker
                        if !hasBeaker[2] {
                            // make the burner run to spot three and play sound
                            arrayOfBurners[currentBurnerIndex].run(SKAction.move(to: CGPoint (x: 346, y: -139), duration: 0.3), completion: {self.arrayOfBurners[self.currentBurnerIndex].run(SKAction.playSoundFileNamed("soundBeaker", waitForCompletion: false))})
                        // if spot three has a beaker
                        } else {
                            // let the burner run to spot three and play sound file
                            arrayOfBurners[currentBurnerIndex].run(SKAction.move(to: CGPoint (x: 346, y: -146), duration: 0.3), completion: {self.arrayOfBurners[self.currentBurnerIndex].run(SKAction.playSoundFileNamed("soundMetal", waitForCompletion: false))})
                            // make the burner being selected smaller to fit
                            arrayOfBurners[currentBurnerIndex].run(SKAction.resize(toWidth: 200, height: 250, duration: 0.12))
                            // make the beaker on spot three a little bit smaller to fit
                                arrayOfBeakers[indexOfBeakerOnThree].run(SKAction.resize(toWidth: 250, height: 250, duration: 0.12))
                            // change the position of the beaker on spot three to make it fit
                                arrayOfBeakers[indexOfBeakerOnThree].run(SKAction.move(to: CGPoint(x: 333.5, y: 66), duration: 0.12))
                        }
                    // if spot three has a burner
                    } else {
                        // if the burner you have selected is not on spot three
                        if arrayOfBurners[currentBurnerIndex].position.x != 346 {
                            // make the burner run back to the shelf
                            arrayOfBurners[currentBurnerIndex].run(SKAction.move(to: CGPoint (x: 133, y: 277), duration: 0.3))
                            // make the burner return to its icons ize
                            arrayOfBurners[currentBurnerIndex].run(SKAction.resize(toWidth: 80, height: 100, duration: 0.12))
                            // find all the burners that is not being selected or is not dragged down
                            for counter in 0 ... 4 where counter != currentBurnerIndex && arrayOfBurners[counter].position.x != 346 && arrayOfBurners[counter].position.x != -327 && arrayOfBurners[counter].position.x != 6.5 {
                                // make the burners unable to be seen by the platers
                                arrayOfBurners[counter].run(SKAction.move(to: CGPoint (x: 133, y: 690), duration: 0.6))
                            }
                        }
                    }
                // if burner is being dragged to spot one
                } else if location.x <= -166.75 {
                    // if spot one does not have a burner
                    if !hasBurner[0] {
                        // if spot one does not have a beaker
                        if !hasBeaker[0] {
                            // make the burner selected run to spot one and play sound
                            arrayOfBurners[currentBurnerIndex].run(SKAction.move(to: CGPoint (x: -327, y: -139), duration: 0.3), completion: {self.arrayOfBurners[self.currentBurnerIndex].run(SKAction.playSoundFileNamed("soundBeaker", waitForCompletion: false))})
                        // if spot one has a beaker
                        } else {
                            // make the burner selected run to spot one and play sound
                            arrayOfBurners[currentBurnerIndex].run(SKAction.move(to: CGPoint (x: -327, y: -146), duration: 0.2), completion: {self.arrayOfBurners[self.currentBurnerIndex].run(SKAction.playSoundFileNamed("soundMetal", waitForCompletion: false))})
                            // make the burner selected slightly smaller to compensate the existence of the beaker
                            arrayOfBurners[currentBurnerIndex].run(SKAction.resize(toWidth: 200, height: 250, duration: 0.12))
                            // make the beaker on spot one slightly smaller
                            arrayOfBeakers[indexOfBurnerOnOne].run(SKAction.resize(toWidth: 250, height: 250, duration: 0.12))
                            // change the position of the beaker on spot one
                            arrayOfBeakers[indexOfBeakerOnOne].run(SKAction.move(to: CGPoint(x: -333.5, y: 66), duration: 0.12))
                        }
                    // if spot one has a burner
                    } else {
                        // if the selected burner is not on spot one
                        if arrayOfBurners[currentBurnerIndex].position.x != -327 {
                            // move the selected burner return to the shelf
                            arrayOfBurners[currentBurnerIndex].run(SKAction.move(to: CGPoint (x: 133, y: 277), duration: 0.3))
                            // make the selected burner to be its icon size
                            arrayOfBurners[currentBurnerIndex].run(SKAction.resize(toWidth: 80, height: 100, duration: 0.12))
                            // find the burners that are not selected and is not dragged down
                            for counter in 0 ... 4 where counter != currentBurnerIndex && arrayOfBurners[counter].position.x != 346 && arrayOfBurners[counter].position.x != -327 && arrayOfBurners[counter].position.x != 6.5 {
                                // make the burners unable to be seen by the player
                                arrayOfBurners[counter].run(SKAction.move(to: CGPoint (x: 133, y: 690), duration: 0.6))
                            }
                        }
                    }
                // if the burner is being dragged down to spot two
                } else {
                    // if spot two does not have a burner
                    if !hasBurner[1] {
                        // if spot two does not have a beaker
                        if !hasBeaker[1] {
                            // make the selected burner move to spot two and play sound
                            arrayOfBurners[currentBurnerIndex].run(SKAction.move(to: CGPoint (x: 6.5, y: -139), duration: 0.2), completion: {self.arrayOfBurners[self.currentBurnerIndex].run(SKAction.playSoundFileNamed("soundBeaker", waitForCompletion: false))})
                        // if spot two has a beaker
                        } else {
                            // make the selected burner run to spot two and play sound
                            arrayOfBurners[currentBurnerIndex].run(SKAction.move(to: CGPoint (x: 6.5, y: -146), duration: 0.2), completion: {self.arrayOfBurners[self.currentBurnerIndex].run(SKAction.playSoundFileNamed("soundMetal", waitForCompletion: false))})
                            // make the selected beaker larger
                            arrayOfBurners[currentBurnerIndex].run(SKAction.resize(toWidth: 200, height: 250, duration: 0.12))
                            // make the beaker on spot two slightly smaller to fit
                            arrayOfBeakers[indexOfBeakerOnTwo].run(SKAction.resize(toWidth: 250, height: 250, duration: 0.12))
                            // change the position of the beaker on spot two
                            arrayOfBeakers[indexOfBeakerOnTwo].run(SKAction.move(to: CGPoint(x: 0, y: 66), duration: 0.12))
                        }
                    // if spot already has a burner
                    } else {
                        // if the selected burner is not on spot two
                        if arrayOfBurners[currentBurnerIndex].position.x != 6.5 {
                            // make the selected burner move back to the shelf
                            arrayOfBurners[currentBurnerIndex].run(SKAction.move(to: CGPoint (x: 133, y: 277), duration: 0.3))
                            // make the selected burner return to its icon size
                            arrayOfBurners[currentBurnerIndex].run(SKAction.resize(toWidth: 80, height: 100, duration: 0.12))
                            // find the beakers that are not selected and are not dragged down
                            for counter in 0 ... 4 where counter != currentBurnerIndex && arrayOfBurners[counter].position.x != 346 && arrayOfBurners[counter].position.x != -327 && arrayOfBurners[counter].position.x != 6.5 {
                                // make the burners unable to be seen by the player
                                arrayOfBurners[counter].run(SKAction.move(to: CGPoint (x: 133, y: 690), duration: 0.6))
                            }
                        }
                    }
                }
            // if burner is selected and it is not successfully dragged down
            } else if burnerIsSelected && location.y > 220 {
                // make the selected burner return to the shelf
                arrayOfBurners[currentBurnerIndex].run(SKAction.move(to: CGPoint (x: 133, y: 277), duration: 0.2))
            }
            // create a function called yellowAndBlueAndWaterActions
            func yellowAndBlueAndWaterActions (isSelected: Bool, inWatchGlass: SKSpriteNode, xPosition: Double, width: Double, height: Double, text: String) {
                // if either one of the two chemicals is selected
                if yellowIsSelected || blueIsSelected {
                    // make the unit be g
                    viewController.labelG.text = "g"
                // if water is selected
                } else if waterIsSelected {
                    // make the unit be mL
                    viewController.labelG.text = "mL"
                }
                // if it is selected and the location is in the upper most part of the view
                if isSelected && location.y > 220 {
                    // make what you have selected run back to the shelf
                    inWatchGlass.run(SKAction.move(to: CGPoint (x: xPosition, y: 274), duration: 0.2))
                // if it is selected and the location is not in the upper most part of the view
                } else if isSelected && location.y <= 220 {
                    // if you are adding it to spot three and spot three has a beaker
                    if location.x >= 166.75 && hasBeaker[2] {
                        // update the index to 2
                        viewController.index = 2
                        // make the thing you have selected return to the shelf and show all the labels
                        inWatchGlass.run(SKAction.resize(toWidth: 0.1, height: 0.1, duration: 0.1), completion: {inWatchGlass.run(SKAction.move(to: CGPoint (x: xPosition, y: 274), duration: 0.0001), completion: {inWatchGlass.run(SKAction.resize(toWidth: CGFloat(width), height: CGFloat(height), duration: 0.1), completion: {self.showLabels(text: text)})})})
                        // update the value of the index of the beaker being added to
                        indexOfBeakerBeingAddedTo = indexOfBeakerOnThree
                    // you are adding it to the beaker on spot three and there is not a beaker on spot three
                    } else if location.x >= 166.75 && !hasBeaker[2] {
                        // make the thing you have selected return to the shelf
                        inWatchGlass.run(SKAction.resize(toWidth: 0.1, height: 0.1, duration: 0.1), completion: {inWatchGlass.run(SKAction.move(to: CGPoint (x: xPosition, y: 274), duration: 0.0001), completion: {inWatchGlass.run(SKAction.resize(toWidth: CGFloat(width), height: CGFloat(height), duration: 0.1))})})
                        // the tip label displaying the information
                        viewController.labelTip.text = "You need a beaker to do that."
                        // clear the text of the tip label after 3 seconds
                        viewController.clearText(condition: "You need a beaker to do that.", seconds: 3)
                    // if you are adding it to the beaker on spot one and spot one has a beaker
                    } else if location.x <= -166.75 && hasBeaker[0] {
                        // update the index to zero
                        viewController.index = 0
                        // return the thing you have selected back to the shelf and show the all of the labels
                        inWatchGlass.run(SKAction.resize(toWidth: 0.1, height: 0.1, duration: 0.1), completion: {inWatchGlass.run(SKAction.move(to: CGPoint (x: xPosition, y: 274), duration: 0.0001), completion: {inWatchGlass.run(SKAction.resize(toWidth: CGFloat(width), height: CGFloat(height), duration: 0.1), completion: {self.showLabels(text: text)})})})
                        // update the value of the index of the beaker being added to
                        indexOfBeakerBeingAddedTo = indexOfBeakerOnOne
                    // if you are adding to the beaker on spot one and spot one does not have a beaker
                    } else if location.x <= -166.75 && !hasBeaker[0] {
                        // return the thing back to the shelf with animation
                        inWatchGlass.run(SKAction.resize(toWidth: 0.1, height: 0.1, duration: 0.1), completion: {inWatchGlass.run(SKAction.move(to: CGPoint (x: xPosition, y: 274), duration: 0.0001), completion: {inWatchGlass.run(SKAction.resize(toWidth: CGFloat(width), height: CGFloat(height), duration: 0.1))})})
                        // the tip label displaying the test that you need a beaker
                        viewController.labelTip.text = "You need a beaker to do that."
                        // clear the text after 3 seconds
                        viewController.clearText(condition: "You need a beaker to do that.", seconds: 3)
                    // if you are adding to the beaker on spot two and spot two has a beaker
                    } else if location.x < 166.75 && location.x > -166.75 && hasBeaker[1] {
                        // update the value of index to 1
                        viewController.index = 1
                        // return the thing you have selected back to the shelf and display all of the labels
                        inWatchGlass.run(SKAction.resize(toWidth: 0.1, height: 0.1, duration: 0.1), completion: {inWatchGlass.run(SKAction.move(to: CGPoint (x: xPosition, y: 274), duration: 0.0001), completion: {inWatchGlass.run(SKAction.resize(toWidth: CGFloat(width), height: CGFloat(height), duration: 0.1), completion: {self.showLabels(text: text)})})})
                        // update the value of the index of the beaker being added to
                        indexOfBeakerBeingAddedTo = indexOfBeakerOnTwo
                    // if you are adding it to the beaker on spot two and spot two does not have a beaker
                    } else if location.x < 166.75 && location.x > -166.75 && !hasBeaker[1] {
                        // make the thing you have selected return to the shelf
                        inWatchGlass.run(SKAction.resize(toWidth: 0.1, height: 0.1, duration: 0.1), completion: {inWatchGlass.run(SKAction.move(to: CGPoint (x: xPosition, y: 274), duration: 0.0001), completion: {inWatchGlass.run(SKAction.resize(toWidth: CGFloat(width), height: CGFloat(height), duration: 0.1))})})
                        // the tip label displays the text that you need a beaker
                        viewController.labelTip.text = "You need a beaker to do that."
                        // clear the text after 3 seconds
                        viewController.clearText(condition: "You need a beaker to do that.", seconds: 3)
                    }
                }
            }
            // perform the yellowAndBlueAndWaterActions for sodium sulfide
            yellowAndBlueAndWaterActions(isSelected: yellowIsSelected, inWatchGlass: yellowInWatchGlass, xPosition: -133, width: 110.01, height: 45.02, text: "Sodium Sulfide")
            // perform the yellowAndBlueAndWaterActions for copper (II) sulfate
            yellowAndBlueAndWaterActions(isSelected: blueIsSelected, inWatchGlass: blueInWatchGlass, xPosition: 0, width: 115.03, height: 45.04, text: "Copper (II) Sulfate")
            // perform the yellowAndBlueAndWaterActions for water
            yellowAndBlueAndWaterActions(isSelected: waterIsSelected, inWatchGlass: waterInContainer, xPosition: -266, width: 70, height: 90, text: "Distilled Water")
            // set the beakerIsSelected to false
            beakerIsSelected = false
            // set burnerIsSelected to false
            burnerIsSelected = false
            // create a function called displayPh
            func displayPh(index: Int, indexOfBeakerOn: Int) {
                // set variable type and initial value of value
                var value = 0.0
                // if the spot have water, sodium sulfide, and copper (II) sulfate
                if hasWater[indexOfBeakerOn] && hasYellow[indexOfBeakerOn] && hasBlue[indexOfBeakerOn] {
                    // the tip label displaying that there is an error
                    viewController.labelTip.text = "Error: Can only determine the pH of a solution that contains only one chemical."
                    // clear the text of label tip after 6 seconds
                    viewController.clearText(condition: "Error: Can only determine the pH of a solution that contains only one chemical.", seconds: 6)
                // if the spot have water and copper (II) sulfate and does not have sodium sulfide
                } else if hasWater[indexOfBeakerOn] && !hasYellow[indexOfBeakerOn] && hasBlue[indexOfBeakerOn] {
                    // calculate the pH according the the amount entered
                    value = -log(amountOfBlue[indexOfBeakerOn]/amountOfWater[indexOfBeakerOn])
                    // if the pH value is between 0 and 7
                    if value < 7 && value > 0 {
                        // the tip label displays the pH value
                        viewController.labelTip.text = "The pH value is \(round(value*100)/100)."
                        // clear the text after 4 seconds
                        viewController.clearText(condition: "The pH value is \(round(value*100)/100).", seconds: 4)
                    // if the pH value is not between 0 and 7
                    } else {
                        // the tip label displaying the error
                        viewController.labelTip.text = "Error: Please make sure the solution is unsaturated."
                        // clear the text after 5 seconds
                        viewController.clearText(condition: "Error: Please make sure the solution is unsaturated.", seconds: 5)
                    }
                // if the spot you are adding to has water and sodium sulfide and does not have copper (II) sulfate
                } else if hasWater[indexOfBeakerOn] && hasYellow[indexOfBeakerOn] && !hasBlue[indexOfBeakerOn] {
                    // valculate the value of the pH value according to the text entered
                    value = 14 - (-log(amountOfYellow[indexOfBeakerOn]/amountOfWater[indexOfBeakerOn]*2))
                    // if the pH value is between 7 and 14
                    if value > 7 && value < 14 {
                        // the tip label displaying the pH value
                        viewController.labelTip.text = "The pH value is \(round(value*100)/100)."
                        // clear the text after 4 seconds
                        viewController.clearText(condition: "The pH value is \(round(value*100)/100).", seconds: 4)
                    // if the pH value is not between 7 and 14
                    } else {
                        // the tip label displaying the error text
                        viewController.labelTip.text = "Error: Please make sure the solution is unsaturated."
                        // clear the text after 5 seconds
                        viewController.clearText(condition: "Error: Please make sure the solution is unsaturated.", seconds: 5)
                    }
                // if the spot you are adding to has a beaker but does not have water
                } else if hasBeaker[index] && !hasWater[indexOfBeakerOn] {
                    // the label tip displaying the error text
                    viewController.labelTip.text = "Error: Can only determine the pH of a solution."
                    // clear the text after 5 seconds
                    viewController.clearText(condition: "Error: Can only determine the pH of a solution.", seconds: 5)
                // if the spot you are adding to has water but does not have any of the two chemicals
                } else if hasWater[indexOfBeakerOn] && !hasYellow[indexOfBeakerOn] && !hasBlue[indexOfBeakerOn] {
                    // display the pH value
                    viewController.labelTip.text = "The pH value is 7.0."
                    // clear the text after 4 seconds
                    viewController.clearText(condition: "The pH value is 7.0.", seconds: 4)
                }
            }
            // if pH paper is selected
            if phPaperIsSelected {
                // make the pH paper return to the shelf with animation
                phPaper.run(SKAction.resize(toWidth: 0.1, height: 0.1, duration: 0.01), completion: {self.phPaper.run(SKAction.move(to: CGPoint(x: 266, y: 270), duration: 0.00001), completion: {self.phPaper.run(SKAction.resize(toWidth: 90, height: 100, duration: 0.1))})})
                // if the beaker on spot one is selected
                if arrayOfBeakers [indexOfBeakerOnOne].contains(location) {
                    // perform the displayPh function for the beaker on spot one
                    displayPh(index: 0, indexOfBeakerOn: indexOfBeakerOnOne)
                // if the beaker on spot two is selected
                } else if arrayOfBeakers [indexOfBeakerOnTwo].contains(location) {
                    // perform the display pH function for beaker on the second spot
                    displayPh(index: 1, indexOfBeakerOn: indexOfBeakerOnTwo)
                // if the beaker on spot three is selected
                } else if arrayOfBeakers [indexOfBeakerOnThree].contains(location) {
                    // perform the displayPh function for the beaker on the third spot
                    displayPh(index: 2, indexOfBeakerOn: indexOfBeakerOnThree)
                }
            }
            // if the thermometer is selected
            if thermometerIsSelected {
                // make the thermometer return to the shelf
                thermometer.run(SKAction.resize(toWidth: 0.1, height: 0.1, duration: 0.01), completion: {self.thermometer.run(SKAction.move(to: CGPoint(x: 399, y: 275), duration: 0.00001), completion: {self.thermometer.run(SKAction.resize(toWidth: 90, height: 90, duration: 0.1))})})
                // if spot one has beaker and you have touched the beaker on spot one
                if hasBeaker[0] && arrayOfBeakers[indexOfBeakerOnOne].contains(location) {
                    // if the temperature of the beaker on spot one is less than 250
                    if temperature[indexOfBeakerOnOne] < 250 {
                        // display the temperature
                        viewController.labelTip.text = "The temperature is \(round(1000 * temperature[indexOfBeakerOnOne])/1000) degrees Celsius."
                        // clear the text after 5 seconds
                        viewController.clearText(condition: "The temperature is \(round(1000 * temperature[indexOfBeakerOnOne])/1000) degrees Celsius.", seconds: 5)
                    // if the temperature of the beaker on spot one is greater or equal to 250
                    } else {
                        // add thermo to the scene
                        self.addChild(thermo)
                        // reveal the warningBoard
                        viewController.warningBoard.isHidden = false
                        // reveal the warningText
                        viewController.warningText.isHidden = false
                        // reveal the warningOk
                        viewController.warningOk.isHidden = false
                        // reveal the blurEffect
                        viewController.blurEffect.isHidden = false
                    }
                // if the second spot has beaker and you have selected the beaker on spot two
                } else if hasBeaker[1] && arrayOfBeakers [indexOfBeakerOnTwo].contains(location) {
                    // if the temperature of the beaker on the second spot is less than 250
                    if temperature[indexOfBeakerOnTwo] < 250 {
                        // label tip displaying the temperature
                        viewController.labelTip.text = "The temperature is \(round(1000 * temperature[indexOfBeakerOnTwo])/1000) degrees Celsius."
                        // clear the text after 5 seconds
                        viewController.clearText(condition: "The temperature is \(round(1000 * temperature[indexOfBeakerOnTwo])/1000) degrees Celsius.", seconds: 5)
                        // if the temperature of the beaker on the second spot is greater or equal to 250
                    } else {
                        // add thermo to the scene
                        self.addChild(thermo)
                        // reveal warningBoard
                        viewController.warningBoard.isHidden = false
                        // reveal warningText
                        viewController.warningText.isHidden = false
                        // reveal warningOk
                        viewController.warningOk.isHidden = false
                        // reveal blurEffect
                        viewController.blurEffect.isHidden = false
                    }
                // if the third spot has beaker and you have selected the beaker on third spot
                } else if hasBeaker[2] && arrayOfBeakers[indexOfBeakerOnThree].contains(location) {
                        // if the temperature of the beaker on the third spot is less than 250
                        if temperature[indexOfBeakerOnThree] < 250 {
                        // the tip label displays the temperature
                            viewController.labelTip.text = "The temperature is \(round(1000 * temperature[indexOfBeakerOnThree])/1000) degrees Celsius."
                            // clear the text after 5 seconds
                            viewController.clearText(condition: "The temperature is \(round(1000 * temperature[indexOfBeakerOnThree])/1000) degrees Celsius.", seconds: 5)
                        // of the twmperature of the beaker on the third spot is greater than or equal to 250
                        } else {
                            // add thermo to the scene
                            self.addChild(thermo)
                            // reveal warningBoard
                            viewController.warningBoard.isHidden = false
                            // reveal warningText
                            viewController.warningText.isHidden = false
                            // reveal warningOk
                            viewController.warningOk.isHidden = false
                            // reveal blurEffect
                            viewController.blurEffect.isHidden = false
                    }
                }
            }
            // if the magnifying glass tool is selected
            if magnifyingGlassIsSelected {
                // if you have touched the beaker on the first spot
                if arrayOfBeakers [indexOfBeakerOnOne].contains(location) {
                    // show the labels
                    showLabels2(indexOfBeakerOn: indexOfBeakerOnOne)
                // if you have touched the beaker on the second spot
                } else if arrayOfBeakers [indexOfBeakerOnTwo].contains(location) {
                    // show the labels
                    showLabels2(indexOfBeakerOn: indexOfBeakerOnTwo)
                // if you have touched the beaker on the third spot
                } else if arrayOfBeakers [indexOfBeakerOnThree].contains(location) {
                    // show the labels
                    showLabels2(indexOfBeakerOn: indexOfBeakerOnThree)
                }
                // make the magnifying glass run to its origional position
                magnifyingGlass.run(SKAction.move(to: CGPoint(x: 540, y: -280), duration: 0.1))
                // make the magnifying glass return to its origional size
                magnifyingGlass.run(SKAction.resize(toWidth: 105, height: 105, duration: 0.03))
            }
        }
    }
    // create a function called showLabels
    func showLabels (text: String) {
        // reveal labelG
        viewController.labelG.isHidden = false
        // reveal blurEffect
        viewController.blurEffect.isHidden = false
        // reveal labelLine
        viewController.labelLine.isHidden = false
        // reveal labelBoard
        viewController.labelBoard.isHidden = false
        // reveal labelAddingChemical
        viewController.labelAddingChemical.isHidden = false
        // reveal labelAddingChemical
        viewController.labelAddingChemical.text = text
        // reveal labelAdding
        viewController.labelAdding.isHidden = false
        // reveal textAmount
        viewController.textAmount.isHidden = false
        // reveal buttonCancel
        viewController.buttonCancel.isHidden = false
        // reveal buttonSubmit
        viewController.buttonSubmit.isHidden = false
    }
    // create a function called showLabels2
    func showLabels2 (indexOfBeakerOn: Int) {
        // reveal board2
        viewController.board2.isHidden = false
        // reveal title2
        viewController.title2.isHidden = false
        // reveal yellow2
        viewController.yellow2.isHidden = false
        // reveal blue2
        viewController.blue2.isHidden = false
        // reveal water2
        viewController.water2.isHidden = false
        // reveal temperature2
        viewController.temperature2.isHidden = false
        // reveal boilingPoint2
        viewController.boilingPoint2.isHidden = false
        // reveal meltingPoint2
        viewController.meltingPoint2.isHidden = false
        // reveal yellowNumber2
        viewController.yellowNumber2.isHidden = false
        // reveal blueNumber2
        viewController.blueNumber2.isHidden = false
        // reveal waterNumber2
        viewController.waterNumber2.isHidden = false
        // reveal temperatureNumber2
        viewController.temperatureNumber2.isHidden = false
        // reveal boilingPointNumber2
        viewController.boilingPointNumber2.isHidden = false
        // reveal meltingPointNumber2
        viewController.meltingPointNumber2.isHidden = false
        // reveal yellowG2
        viewController.yellowG2.isHidden = false
        // reveal blueG2
        viewController.blueG2.isHidden = false
        // reveal waterMl2
        viewController.waterMl2.isHidden = false
        // reveal temperatureC2
        viewController.temperatureC2.isHidden = false
        // reveal meltingPointC2
        viewController.meltingPointC2.isHidden = false
        // reveal boilingPointC2
        viewController.boilingPointC2.isHidden = false
        // reveal blurEffect
        viewController.blurEffect.isHidden = false
        // reveal buttonClose2
        viewController.buttonClose2.isHidden = false
        // display the amount of sodium sulfide in the beaker
        viewController.yellowNumber2.text = String(round(1000 * amountOfYellow[indexOfBeakerOn]) / 1000)
        // display the amount of copper (II) sulfate in the beaker
        viewController.blueNumber2.text = String(round(1000 * amountOfBlue[indexOfBeakerOn]) / 1000)
        // display the amount of water in the beaker
        viewController.waterNumber2.text = String(round(1000 * amountOfWater[indexOfBeakerOn]) / 1000)
        // display the temperature of the beaker
        viewController.temperatureNumber2.text = String(round(1000 * temperature[indexOfBeakerOn]) / 1000)
        // if the boiling point is the initial value
        if arrayOfBoilingPoint[indexOfBeakerOn] == -1 {
            // set the text of boilingPointNumber2
            viewController.boilingPointNumber2.text = "N/A"
        // if the boiling point is assigned
        } else if arrayOfBoilingPoint[indexOfBeakerOn] == -2 {
            // display the temperature of the chemical
            viewController.boilingPointNumber2.text = "(very high)"
        // if the boiling point is not -1 nor -2
        } else {
            // set the text of boilingPointNumber2 to show the boiling point
            viewController.boilingPointNumber2.text =  String(arrayOfBoilingPoint[indexOfBeakerOn])
        }
        // if the value of arrayOfMeltingPoint for the beaker is -1
        if arrayOfMeltingPoint[indexOfBeakerOn] == -1 {
            // set the text of meltingPointNumber2 to N/A
            viewController.meltingPointNumber2.text = "N/A"
        // set the text of meltingPointNumber2
        } else {
            // set the text meltingPointNumber2
            viewController.meltingPointNumber2.text = String(arrayOfMeltingPoint[indexOfBeakerOn])
        }
    }
    // create a function called content
    func content (targetArray: [SKSpriteNode], index: Int, xPositionFactor: CGFloat, yPositionFactor: CGFloat, widthFactor: CGFloat, heightFactor: CGFloat) {
        targetArray[index].position = CGPoint (x: arrayOfBeakers[index].position.x + xPositionFactor * arrayOfBeakers[index].size.width, y: arrayOfBeakers[index].position.y - yPositionFactor * arrayOfBeakers[index].size.height)
        // set the size of the content of the array
        targetArray[index].size = CGSize (width: arrayOfBeakers[index].size.width * widthFactor, height: arrayOfBeakers[index].size.height * heightFactor)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // loop counter from 0 to 2
        for counter in 0...2 {
            // set the size and position of the arrayOfYellows
            content(targetArray: arrayOfYellows, index: counter, xPositionFactor: 0.0148148, yPositionFactor: 0.3333, widthFactor: 0.6, heightFactor: 0.2)
            // set the size and position of the arrayOfBlues
            content(targetArray: arrayOfBlues, index: counter, xPositionFactor: 0.0148148, yPositionFactor: 0.2852, widthFactor: 0.49, heightFactor: 0.3)
            // set the size and position of the arrayOfWaters
            content(targetArray: arrayOfWaters, index: counter, xPositionFactor: 0.02222, yPositionFactor: 0.2, widthFactor: 0.75, heightFactor: 0.5)
            // set the size and position of the arrayOfBlueSolutions
            content(targetArray: arrayOfBlueSolutions, index: counter, xPositionFactor: 0.02222, yPositionFactor: 0.2, widthFactor: 0.75, heightFactor: 0.5)
            // set the size and position of the arrayOfYellowSolutions
            content(targetArray: arrayOfYellowSolutions, index: counter, xPositionFactor: 0.02222, yPositionFactor: 0.2, widthFactor: 0.75, heightFactor: 0.5)
            // set the size and position of the arrayOfPrecipitates
            content(targetArray: arrayOfPrecipitates, index: counter, xPositionFactor: 0.0148148, yPositionFactor: 0.37, widthFactor: 0.6, heightFactor: 0.3)
            // set the size and position of the arrayOfMeltedBlues
            content(targetArray: arrayOfMeltedBlues, index: counter, xPositionFactor: 0.022, yPositionFactor: 0.329, widthFactor: 0.73, heightFactor: 0.23)
            // set the size and position of the arrayOfBubblings
            content(targetArray: arrayOfBubblings, index: counter, xPositionFactor: 0.022, yPositionFactor: -0.3, widthFactor: 0.7, heightFactor: 1.14)
        }
        // loop the counter from 0 to 4
        for counter in 0...4 {
            // if spot one has a beaker
            if arrayOfBeakers[counter].position.x == -333.5 {
                // set the first element in the hasBeaker array as true
                hasBeaker[0] = true
                // break the loop
                break
            // if spot one does not have a beaker
            } else {
                // set the first element in the hasBeaker array as false
                hasBeaker[0] = false
            }
        }
        // loop the counter from 0 to 4
        for counter in 0...4 {
            // if spot two has beaker
            if arrayOfBeakers[counter].position.x == 0 {
                // set the second element of the hasBeaker array as true
                hasBeaker[1] = true
                // break the loop
                break
            // if spot two does not have beaker
            } else {
                // set the second element of the hasBeaker array as false
                hasBeaker[1] = false
            }
        }
        // loop counter from 0 to 4
        for counter in 0...4 {
            // if spot three has a beaker
            if arrayOfBeakers[counter].position.x == 333.5 {
                // set the third element of the arrayBeakers to true
                hasBeaker[2] = true
                // break the loop
                break
            // if spot three does not have a beaker
            } else {
                // set the third element of the arrayBeakers to false
                hasBeaker[2] = false
            }
        }
        // for counter loop from 0 to 4
        for counter in 0...4 {
            // if spot one has a burner
            if arrayOfBurners[counter].position.x == -327 {
                // set the first element of the arrayOfBurners to true
                hasBurner[0] = true
                // break the loop
                break
            // if spot one does not have a burner
            } else {
                // set the first element of the arrayOfBurners array to false
                hasBurner[0] = false
            }
        }
        // loop counter from 0 to 4
        for counter in 0...4 {
            // if spot two have a burner
            if arrayOfBurners[counter].position.x == 6.5 {
                // set the second element of the hasBurner array to true
                hasBurner[1] = true
                // break the loop
                break
            // if spot two does not have a burner
            } else {
                // set the second element of the hasBurner array to false
                hasBurner[1] = false
            }
        }
        // loop counter from 0 to 4
        for counter in 0...4 {
            // if the third spot have a burner
            if arrayOfBurners[counter].position.x == 346 {
                // set the third element of the hasBurner array to true
                hasBurner[2] = true
                // break the loop
                break
            // if the third spot does not have a burner
            } else {
                // set the third element of the hasBurner to false
                hasBurner[2] = false
            }
        }
        // if the first spot has beaker and has burner
        if hasBeaker[0] && hasBurner[0] {
            // reveal the rack on the first rack
            oneRack.isHidden = false
        // if the first spot does not meet the above conditions
        } else {
            // hide the rack on spot one
            oneRack.isHidden = true
        }
        // if the second spot has a beaker and has a burner
        if hasBeaker[1] && hasBurner[1] {
            // reveal the rack on the second spot
            twoRack.isHidden = false
        // if the third spot does not meet the above conditions
        } else {
            // hide the rack on the second spot
            twoRack.isHidden = true
        }
        // if the third spot has a beaker and has a burner
        if hasBeaker[2] && hasBurner[2] {
            // reveal the rack on the third spot
            threeRack.isHidden = false
        // if it does not meet the above conditions
        } else {
            // hide the rack on spot three
            threeRack.isHidden = true
        }
        // loop counter from 0 to 4
        for counter in 0...4 {
            // if the first spot has a beaker
            if arrayOfBeakers [counter].contains(CGPoint(x:-333, y:-43)) {
                // update the value of indexOfBeakerOnOne
                indexOfBeakerOnOne = counter
                // break the loop
                break
            }
        }
        // if beaker is not selected and burner is not selected
        if !beakerIsSelected && !burnerIsSelected {
            // loop counter from 0 to 4
            for counter in 0...4 {
                // if spot one has a burner
                if arrayOfBurners [counter].contains(CGPoint(x:-333, y:-43)) {
                    // update the indexOfBurnerOnOne
                    indexOfBurnerOnOne = counter
                    // break the loop
                    break
                }
            }
            // loop counter from 0 to 4
            for counter in 0...4 {
                // if the second spot has a beaker
                if arrayOfBeakers [counter].contains(CGPoint(x:1, y:-46)) {
                    indexOfBeakerOnTwo = counter
                    // break the loop
                    break
                }
            }
            // loop counter from 0 to 4
            for counter in 0...4 {
                // if spot two has a burner
                if arrayOfBurners [counter].contains(CGPoint(x:1, y:-46)) {
                    // update the value of indexOfBurnerOnTwo
                    indexOfBurnerOnTwo = counter
                    // break the loop
                    break
                }
            }
            // loop counter form 0 to 4
            for counter in 0...4 {
                // if the third spot has a beaker
                if arrayOfBeakers [counter].contains(CGPoint(x:340, y:-42)) {
                    // update indexOfBeakerOnThree
                    indexOfBeakerOnThree = counter
                    // break the loop
                    break
                }
            }
            // loop counter from 0 to 4
            for counter in 0...4 {
                // if the third spot has a burner
                if arrayOfBurners [counter].contains(CGPoint(x:340, y:-42)) {
                    // update the value of indexOfBurnerOnThree
                    indexOfBurnerOnThree = counter
                    // break the loop
                    break
                }
            }
        }
        // if the first spot has burner and does not have beaker
        if hasBurner[0] && !hasBeaker[0] {
            // set the size of the burner on the first spot
            arrayOfBurners[indexOfBurnerOnOne].run(SKAction.resize(toWidth: 240, height: 300, duration: 0.12))
            // set the position of the burner on the first spot
            arrayOfBurners[indexOfBurnerOnOne].run(SKAction.move(to: CGPoint(x: -327, y: -139), duration: 0.12))
        // if the first spot has a burner and has a beaker
        } else if hasBurner[0] && hasBeaker[0] {
            // set the size of the burner on spot one
            arrayOfBurners[indexOfBurnerOnOne].run(SKAction.resize(toWidth: 200, height: 250, duration: 0.12))
            // set the position of the burner on spot one
            arrayOfBurners[indexOfBurnerOnOne].run(SKAction.move(to: CGPoint(x: -327, y: -146), duration: 0.12))
            // set the size of the beaker on spot one
            arrayOfBeakers[indexOfBeakerOnOne].run(SKAction.resize(toWidth: 250, height: 250, duration: 0.12))
            // set the position of the beaker on spot one
            arrayOfBeakers[indexOfBeakerOnOne].run(SKAction.move(to: CGPoint(x: -333.5, y: 66), duration: 0.12))
        // if spot one does not have a burner and has a beaker
        } else if !hasBurner[0] && hasBeaker[0] {
            // set the size of the beaker on spot one
            arrayOfBeakers[indexOfBeakerOnOne].run(SKAction.resize(toWidth: 270, height: 270, duration: 0.12))
            // set the position of the beaker on the first spot
            arrayOfBeakers[indexOfBeakerOnOne].run(SKAction.move(to: CGPoint(x: -333.5, y: -139), duration: 0.12))
        }
        // if the second spot has burner and does not have beaker
        if hasBurner[1] && !hasBeaker[1] {
            // set the size of the burner on spot two
            arrayOfBurners[indexOfBurnerOnTwo].run(SKAction.resize(toWidth: 240, height: 300, duration: 0.12))
            // set the position of the burner on spot two
            arrayOfBurners[indexOfBurnerOnTwo].run(SKAction.move(to: CGPoint(x: 6.5, y: -139), duration: 0.12))
        // if the second spot has a burner and has a beaker
        } else if hasBurner[1] && hasBeaker[1] {
            // set the size of the burner on spot two
            arrayOfBurners[indexOfBurnerOnTwo].run(SKAction.resize(toWidth: 200, height: 250, duration: 0.12))
            // set the position of the burner on spot two
            arrayOfBurners[indexOfBurnerOnTwo].run(SKAction.move(to: CGPoint(x: 6.5, y: -146), duration: 0.12))
            // set the size of the beaker in spot two
            arrayOfBeakers[indexOfBeakerOnTwo].run(SKAction.resize(toWidth: 250, height: 250, duration: 0.12))
            // set the position of the beaker in spot two
            arrayOfBeakers[indexOfBeakerOnTwo].run(SKAction.move(to: CGPoint(x: 0, y: 66), duration: 0.12))
        // if spot two does not have a burner and has a beaker
        } else if !hasBurner[1] && hasBeaker[1] {
            // set the size and position of the beaker on spot two
            arrayOfBeakers[indexOfBeakerOnTwo].run(SKAction.resize(toWidth: 270, height: 270, duration: 0.12))
            arrayOfBeakers[indexOfBeakerOnTwo].run(SKAction.move(to: CGPoint(x: 0, y: -139), duration: 0.12))
        }
        // if the third spot has a burner and does not have a beaker
        if hasBurner[2] && !hasBeaker[2] {
            // set the size and position of the burner on spot three
            arrayOfBurners[indexOfBurnerOnThree].run(SKAction.resize(toWidth: 240, height: 300, duration: 0.12))
            arrayOfBurners[indexOfBurnerOnThree].run(SKAction.move(to: CGPoint(x: 346, y: -139), duration: 0.12))
        // if the third spot has a burner and has a beaker
        } else if hasBurner[2] && hasBeaker[2] {
            // set the size and position of the burner on spot three
            arrayOfBurners[indexOfBurnerOnThree].run(SKAction.resize(toWidth: 200, height: 250, duration: 0.12))
            arrayOfBurners[indexOfBurnerOnThree].run(SKAction.move(to: CGPoint(x: 346, y: -146), duration: 0.12))
            // set the size and position of the beaker on spot three
            arrayOfBeakers[indexOfBeakerOnThree].run(SKAction.resize(toWidth: 250, height: 250, duration: 0.12))
            arrayOfBeakers[indexOfBeakerOnThree].run(SKAction.move(to: CGPoint(x: 333.5, y: 66), duration: 0.12))
        // if third spot does not have a burner and has a beaker
        } else if !hasBurner[2] && hasBeaker[2] {
            // set the size and position of the beaker on spot three
            arrayOfBeakers[indexOfBeakerOnThree].run(SKAction.resize(toWidth: 270, height: 270, duration: 0.12))
            arrayOfBeakers[indexOfBeakerOnThree].run(SKAction.move(to: CGPoint(x: 333.5, y: -139), duration: 0.12))
        }
        // if beaker is selected and burner is selected
        if beakerIsSelected && burnerIsSelected {
            // set burnerIsSelected to false
            burnerIsSelected = false
        }
        // if the accumulated time is zero
        if (self.accumulatedTime == 0) {
            // assign a value to accumulated time
            self.accumulatedTime = currentTime
        }
        // if 0.1 seconds has passsed
        if currentTime - self.accumulatedTime > 0.1 {
            // loop counter from 0 to 2
            for counter in 0...2 {
                // when the temperature of any beaker reaches 220
                if temperature[counter] < 220.0 && temperature[counter] > 219.4 {
                    // tip label displays the tip
                    viewController.labelTip.text = "Tip: Cannot use the thermometer when the temperature exceeds 250 degrees Celsius. The current temperature is 220.0 degrees Celsius."
                    // clear the text after 7 seconds
                    viewController.clearText(condition: "Tip: Cannot use the thermometer when the temperature exceeds 250 degrees Celsius. The current temperature is 220.0 degrees Celsius.", seconds: 7)
                }
            }
            // perform the boiling effect for the three beakers
            boiling(index: 0, indexOfBeakerOn: indexOfBeakerOnOne)
            boiling(index: 1, indexOfBeakerOn: indexOfBeakerOnTwo)
            boiling(index: 2, indexOfBeakerOn: indexOfBeakerOnThree)
            // if the temperature of the beaker on spot one reaches the boiling point
            if temperature[indexOfBeakerOnOne] == 100.00001 || temperature[indexOfBeakerOnOne] == 100.00001 + 0.512 * 3 * amountOfYellow[indexOfBeakerOnOne] / 78.0452 || temperature[indexOfBeakerOnOne] == 100.00001 + 0.512 * 2 * amountOfBlue[indexOfBeakerOnOne] / 159.609 || temperature[indexOfBeakerOnOne] == 100.00001 + (0.512 * 2 * amountOfBlue[indexOfBeakerOnOne] / 159.609 + 0.512 * 3 * amountOfYellow[indexOfBeakerOnOne] / 78.0452) / 2 || temperature[indexOfBeakerOnOne] == 621.00001 || temperature[indexOfBeakerOnTwo] == 100.00001 || temperature[indexOfBeakerOnTwo] == 100.00001 + 0.512 * 3 * amountOfYellow[indexOfBeakerOnTwo] / 78.0452 || temperature[indexOfBeakerOnTwo] == 100.00001 + 0.512 * 2 * amountOfBlue[indexOfBeakerOnTwo] / 159.609 || temperature[indexOfBeakerOnTwo] == 100.00001 + (0.512 * 2 * amountOfBlue[indexOfBeakerOnTwo] / 159.609 + 0.512 * 3 * amountOfYellow[indexOfBeakerOnTwo] / 78.0452) / 2 || temperature[indexOfBeakerOnTwo] == 621.00001 || temperature[indexOfBeakerOnThree] == 100.00001 || temperature[indexOfBeakerOnThree] == 100.00001 + 0.512 * 3 * amountOfYellow[indexOfBeakerOnThree] / 78.0452 || temperature[indexOfBeakerOnThree] == 100.00001 + 0.512 * 2 * amountOfBlue[indexOfBeakerOnThree] / 159.609 || temperature[indexOfBeakerOnThree] == 100.00001 + (0.512 * 2 * amountOfBlue[indexOfBeakerOnThree] / 159.609 + 0.512 * 3 * amountOfYellow[indexOfBeakerOnThree] / 78.0452) / 2 || temperature[indexOfBeakerOnThree] == 40.00001 {
                // if the sound is not playing
                if !soundIsPlaying {
                    // add boilingSound to the scene to play sound
                    self.addChild(boilingSound)
                    // update soundIsPlaying to true
                    soundIsPlaying = true
                }
            // if the sound is playing
                } else {
                // if the sound is playing
                    if soundIsPlaying {
                        // remove the child from parent to stop the sound
                        boilingSound.removeFromParent()
                        // update soundIsPlaying to false
                        soundIsPlaying = false
                    }
                }
            // update the value of accumulatedTime
            self.accumulatedTime = currentTime
        }
    }
    // create a function called boiling
    func boiling (index: Int, indexOfBeakerOn: Int) {
        // if the spot has beaker, water, and does not have any of the chemicals
        if hasBeaker[index] && hasWater[indexOfBeakerOn] && !hasYellow[indexOfBeakerOn] && !hasBlue[indexOfBeakerOn] {
            // update the value of the associated boiling point and melting point
            arrayOfBoilingPoint[indexOfBeakerOn] = round(1000 * 100.00001)/1000
            arrayOfMeltingPoint[indexOfBeakerOn] = round(1000 * 0.00001)/1000
        // if the spot has beaker, water, sodium sulfide and does not have copper (II) sulfide
        } else if hasBeaker[index] && hasWater[indexOfBeakerOn] && hasYellow[indexOfBeakerOn] && !hasBlue[indexOfBeakerOn] {
            // update the associated boiling point and melting point
            arrayOfBoilingPoint[indexOfBeakerOn] = round(1000 * (100.0 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452))/1000
            arrayOfMeltingPoint[indexOfBeakerOn] = round(1000 * (-0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452))/1000
        // if the spot has bealer, water, copper (II) sulfide and does not have sodium sulfide
        } else if hasBeaker[index] && hasWater[indexOfBeakerOn] && !hasYellow[indexOfBeakerOn] && hasBlue[indexOfBeakerOn] {
            // update the associated boiling point and melting point
            arrayOfBoilingPoint[indexOfBeakerOn] = round(1000 * (100.0 + 0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609))/1000
            arrayOfMeltingPoint[indexOfBeakerOn] = round(1000 * (-0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609))/1000
        // if the spot has beaker, water, and the two chemicals
        } else if hasBeaker[index] && hasWater[indexOfBeakerOn] && hasYellow[indexOfBeakerOn] && hasBlue[indexOfBeakerOnOne] {
            // update the associated boiling point and melting point
            arrayOfBoilingPoint[indexOfBeakerOn] = round(1000 * (100.0 + (0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452) / 2))/1000
            arrayOfMeltingPoint[indexOfBeakerOn] = round(1000 * ((-0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609 - 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452) / 2))/1000
        // if the spot has beaker, sodium sulfide, and does not have water or copper (II) sulfide
        } else if hasBeaker[index] && !hasWater[indexOfBeakerOn] && hasYellow[indexOfBeakerOn] && !hasBlue[indexOfBeakerOn] {
            // update the associated boiling point and melting point
            arrayOfBoilingPoint[indexOfBeakerOn] = -2
            arrayOfMeltingPoint[indexOfBeakerOn] = 1176.0
        // if the spot has beaker, copper (II) sulfide and does not have water or sodium sulfide
        } else if hasBeaker[index] && !hasWater[indexOfBeakerOn] && !hasYellow[indexOfBeakerOn] && hasBlue[indexOfBeakerOn] {
            // update the associated boiling point and melting point
            arrayOfBoilingPoint[indexOfBeakerOn] = 621.0
            arrayOfMeltingPoint[indexOfBeakerOn] = 113.0
            }
        // if the temperature is at the boiling point
        if temperature[indexOfBeakerOn] == 100.00001 || temperature[indexOfBeakerOn] == 100.00001 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452 || temperature[indexOfBeakerOn] == 100.00001 + 0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609 || temperature[indexOfBeakerOn] == 100.00001 + (0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452) / 2 || temperature[indexOfBeakerOn] == 621.00001 {
            // reveal the bubbling animation
            arrayOfBubblings[indexOfBeakerOn].run(SKAction.fadeIn(withDuration: 0.7))
        // if the temperature is not at the boiling point
        } else {
            // hide the bubbling animation
            arrayOfBubblings[indexOfBeakerOn].run(SKAction.fadeOut(withDuration: 1))
        }
        // if the spot has burner, beaker, water, and does not have any of the two chemicals
        if hasBurner[index] && hasBeaker [index] && hasWater[indexOfBeakerOn] && !hasYellow[indexOfBeakerOn] && !hasBlue[indexOfBeakerOn] {
            // if the temperature of the beaker is less than 100
            if temperature[indexOfBeakerOn] < 100.0 {
                // update the temperature by 0.57
                temperature [indexOfBeakerOn] += 0.57
            // if the temperature is not 100.00001
            } else if temperature[indexOfBeakerOn] != 100.00001{
                // the tip label displays the status of the water
                viewController.labelTip.text = "The water is boiling at 100.0 degrees Celsius!"
                // clear the text after 5 seconds
                viewController.clearText(condition: "The water is boiling at 100.0 degrees Celsius!", seconds: 5)
                // update the temperature
                temperature[indexOfBeakerOn] = 100.00001
            }
            // update the boiling point and melting point
            arrayOfBoilingPoint[indexOfBeakerOn] = round(1000 * 100.00001)/1000
            arrayOfMeltingPoint[indexOfBeakerOn] = round(1000 * 0.00001)/1000
        // if the spot has burner and beaker and water and sodium sulfide and does not have copper (II) sulfide
        } else if hasBurner[index] && hasBeaker[index] && hasWater[indexOfBeakerOn] && hasYellow[indexOfBeakerOn] && !hasBlue[indexOfBeakerOn] {
            // if the temperature is less than the boiling point
            if temperature[indexOfBeakerOn] < (100.0 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452) {
                // update temperature by 0.57
                temperature [indexOfBeakerOn] += 0.57
            // if the temperature is not equal to the boiling point
            } else if temperature[indexOfBeakerOn] != (100.00001 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452) {
                // update the temperature to its boiling point
                temperature[indexOfBeakerOn] = 100.0 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452
                // label tip displays the status of the solution
                viewController.labelTip.text = "The solution is boiling at \(round(1000 * (temperature[indexOfBeakerOn])) / 1000) degrees Celsius!"
                // clear the text after 5 seconds
                viewController.clearText(condition: "The solution is boiling at \(round(1000 * (temperature[indexOfBeakerOn])) / 1000) degrees Celsius!", seconds: 5)
                // update the temperature
                temperature[indexOfBeakerOn] = 100.00001 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452
            }
            // update the boiling point and melting point
            arrayOfBoilingPoint[indexOfBeakerOn] = round(1000 * (100.0 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452))/1000
            arrayOfMeltingPoint[indexOfBeakerOn] = round(1000 * (-0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452))/1000
        // if the spot has burner and beaker and water and copper (II) sulfate and does not have sodium sulfide
        } else if hasBurner[index] && hasBeaker[index] && hasWater[indexOfBeakerOn] && !hasYellow[indexOfBeakerOn] && hasBlue[indexOfBeakerOn] {
            // if the temperature is less than the boiling point
            if temperature[indexOfBeakerOn] < (100.0 + 0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609) {
                // update the temperature by 0.57
                temperature [indexOfBeakerOn] += 0.57
            // if the temperature is not equal to the boiling point
            } else if temperature[indexOfBeakerOn] != (100.00001 + 0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609) {
                // update the current temperature to its boiling point
                temperature[indexOfBeakerOn] = 100.0 + 0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609
                // displays the status of the solution
                viewController.labelTip.text = "The solution is boiling at \(round(1000 * (temperature[indexOfBeakerOn])) / 1000) degrees Celsius!"
                // clear the text after 5 seconds
                viewController.clearText(condition: "The solution is boiling at \(round(1000 * (temperature[indexOfBeakerOn])) / 1000) degrees Celsius!", seconds: 5)
                // update the temperature
                temperature[indexOfBeakerOn] = 100.00001 + 0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609
            }
            // update the boiling point and the melting point
            arrayOfBoilingPoint[indexOfBeakerOn] = round(1000 * (100.0 + 0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609))/1000
            arrayOfMeltingPoint[indexOfBeakerOn] = round(1000 * (-0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609))/1000
        // if the spot has burner, beaker, water, and the two chemicals
        } else if hasBurner[index] && hasBeaker[index] && hasWater[indexOfBeakerOn] && hasYellow[indexOfBeakerOn] && hasBlue[indexOfBeakerOn] {
            // if the temperature is less than the boiling point
            if temperature[indexOfBeakerOn] < (100.0 + (0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452) / 2)  {
                // update the temperature by 0.57
                temperature [indexOfBeakerOn] += 0.57
            // if the temperature is not equal to the boiling point
            } else if temperature[indexOfBeakerOn] != 100.00001 + (0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452) / 2 {
                // update the temperature to its boiling point
                temperature[indexOfBeakerOn] = 100.0 + (0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452) / 2
                // displays the status of the solution
                viewController.labelTip.text = "The solution is boiling at \(round(1000 * (temperature[indexOfBeakerOn])) / 1000) degrees Celsius!"
                // clear the text after 5 seconds
                viewController.clearText(condition: "The solution is boiling at \(round(1000 * (temperature[indexOfBeakerOn])) / 1000) degrees Celsius!", seconds: 5)
                // update the temperature to its boiling point
                temperature[indexOfBeakerOn] = 100.00001 + (0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452) / 2
            }
            // update the boiling and melting point
            arrayOfBoilingPoint[indexOfBeakerOn] = round(1000 * (100.0 + (0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452) / 2))/1000
            arrayOfMeltingPoint[indexOfBeakerOn] = round(1000 * ((-0.512 * 2 * amountOfBlue[indexOfBeakerOn] / 159.609 + 0.512 * 3 * amountOfYellow[indexOfBeakerOn] / 78.0452) / 2))/1000
        // if the spot has burner and beaker and sodium sulfide and does not have water or copper (II) sulfide
        } else if hasBurner[index] && hasBeaker[index] && !hasWater[indexOfBeakerOn] && hasYellow[indexOfBeakerOn] && !hasBlue[indexOfBeakerOn] {
            // set the associated hasYellow value to false
            hasYellow[indexOfBeakerOn] = false
            // set the associated amount of the chemical to 0
            amountOfYellow[indexOfBeakerOn] = 0.0
            // hide the sodium sulfide
            arrayOfYellows[indexOfBeakerOn].run(SKAction.fadeOut(withDuration: 0.00001))
            // display the warning and clear the text after 5 seconds
            viewController.labelTip.text = "Cannot heat sodium sulfide as it is flammable!"
            viewController.clearText(condition: "Cannot heat sodium sulfide as it is flammable!", seconds: 5)
            // update the boiling point and the melting point
            arrayOfBoilingPoint[indexOfBeakerOn] = 621.0
            arrayOfMeltingPoint[indexOfBeakerOn] = 113.0
        // if the spot has burner, beaker, copper (II) sulfide and does not have water or sodium sulfide
        } else if hasBurner[index] && hasBeaker[index] && !hasWater[indexOfBeakerOn] && !hasYellow[indexOfBeakerOn] && hasBlue[indexOfBeakerOn] {
            // if the temperature is less than the boiling point
            if temperature[indexOfBeakerOn] < 621.0 {
                // update the temperature by 0.57
                temperature [indexOfBeakerOn] += 0.57
                // if the temperature is at its melting point
                if temperature [indexOfBeakerOn] > 112.4 && temperature [indexOfBeakerOn] < 113.0 {
                    // displays the text that the chemical has melted
                    viewController.labelTip.text = "Copper (II) sulfate has melted at 113.0 degrees Celsius."
                    // clear the text after 5 seconds
                    viewController.clearText(condition: "Copper (II) sulfate has melted at 113.0 degrees Celsius.", seconds: 5)
                    // hide the blue powder
                    arrayOfBlues[indexOfBeakerOn].run(SKAction.fadeOut(withDuration: 0.08))
                    // reveal the melted blue powder
                    arrayOfMeltedBlues[indexOfBeakerOn].run(SKAction.fadeIn(withDuration: 0.2))
                }
            // if the temperature is at its boiling point
            } else if temperature[indexOfBeakerOn] != 621.00001 {
                // displays the current status of the chemical
                viewController.labelTip.text = "Copper (II) sulfate is boiling at 621.0 degrees Celsius!"
                // clear the text after 5 seconds
                viewController.clearText(condition: "Copper (II) sulfate is boiling at 621.0 degrees Celsius!", seconds: 5)
                // set the temperature to its boiling point
                temperature[indexOfBeakerOn] = 621.00001
            }
            // update the boiling point and the melting point
            arrayOfBoilingPoint[indexOfBeakerOn] = 621.0
            arrayOfMeltingPoint[indexOfBeakerOn] = 113.0
        // if the spot does not have a burner
        } else if !hasBurner[index] {
            // if the temperature is greater than 25 and the spot has beaker
            if temperature[indexOfBeakerOn] > 25 && hasBeaker[index] {
                // update the temperature by -0.57
                temperature [indexOfBeakerOn] -= 0.57
            // if the temperature is less than 25
            } else if temperature[indexOfBeakerOn] < 25.0 {
                // informs the player that it has cooled down
                viewController.labelTip.text = "It has cooled down to room temperature."
                // clear the text after 5 seconds
                viewController.clearText(condition: "It has cooled down to room temperature.", seconds: 5)
                // update the temperature to 25
                temperature[indexOfBeakerOn] = 25.0
            }
        }
    }
    // create a function called pouring Effect
    func pouringEffect (imageName: String, index: Int, whatIsAdded: [SKSpriteNode]) {
        // set the zPosition of the nodes
        arrayOfYellows[indexOfBeakerBeingAddedTo].zPosition = 16
        arrayOfBlues[indexOfBeakerBeingAddedTo].zPosition = 16
        arrayOfBlueSolutions[indexOfBeakerBeingAddedTo].zPosition = 17
        arrayOfYellowSolutions[indexOfBeakerBeingAddedTo].zPosition = 17
        arrayOfWaters[indexOfBeakerBeingAddedTo].zPosition = 17
        arrayOfMeltedBlues[indexOfBeakerBeingAddedTo].zPosition = 17
        arrayOfPrecipitates[indexOfBeakerBeingAddedTo].zPosition = 18
        // if what is added is not copper (II) sulfate or sodium sulfide
        if whatIsAdded != arrayOfYellows && whatIsAdded != arrayOfBlues {
            // update the zPositon of what is added by 0.1
            whatIsAdded[indexOfBeakerBeingAddedTo].zPosition += 0.01
        }
        // set the type and the image of the node bottle
        let bottle = SKSpriteNode (imageNamed: imageName)
        // set the size of bottle
        bottle.size = CGSize (width: 160, height: 220)
        // set the zPosition of the bottle
        bottle.zPosition = 23
        // if is adding to spot one and spot one does not have a burner
        if index == 0 && !hasBurner[0] {
            // set the position of bottle
            bottle.position = CGPoint (x: -200.3, y: 89.9)
            // perform the rotating animation
            bottle.run(SKAction.rotate(byAngle: 1.75, duration: 0.55), completion: {bottle.run(SKAction.fadeOut(withDuration: 0.2), completion: {whatIsAdded[self.indexOfBeakerOnOne].run(SKAction.fadeIn(withDuration: 0.2))})})
            // play the sound
            bottle.run(SKAction.playSoundFileNamed("soundPowder", waitForCompletion: false))
        // if is adding to spot one and spot one has a burner
        } else if index == 0 && hasBurner[0] {
            // set the potion of bottle
            bottle.position = CGPoint (x: -200.3, y: 279.1)
            // perform the rotating animation
            bottle.run(SKAction.rotate(byAngle: 1.75, duration: 0.55), completion: {bottle.run(SKAction.fadeOut(withDuration: 0.2), completion: {whatIsAdded[self.indexOfBeakerOnOne].run(SKAction.fadeIn(withDuration: 0.2))})})
            // play the sound
            bottle.run(SKAction.playSoundFileNamed("soundPowder", waitForCompletion: false))
        // if is adding to spot two and spot two does not have a burner
        } else if index == 1 && !hasBurner[1] {
            // set the position of bottle
            bottle.position = CGPoint (x: 101.3, y: 89.9)
            // perform the rotating animation
            bottle.run(SKAction.rotate(byAngle: 1.75, duration: 0.55), completion: {bottle.run(SKAction.fadeOut(withDuration: 0.2), completion: {whatIsAdded[self.indexOfBeakerOnTwo].run(SKAction.fadeIn(withDuration: 0.2))})})
            // play the sound
            bottle.run(SKAction.playSoundFileNamed("soundPowder", waitForCompletion: false))
        // if is adding to spot two and spot two has a butner
        } else if index == 1 && hasBurner[1] {
            // set the position of bottle
            bottle.position = CGPoint (x: 101.3, y: 279.1)
            // perform the rotating animation
            bottle.run(SKAction.rotate(byAngle: 1.75, duration: 0.55), completion: {bottle.run(SKAction.fadeOut(withDuration: 0.2), completion: {whatIsAdded[self.indexOfBeakerOnTwo].run(SKAction.fadeIn(withDuration: 0.2))})})
            // play the sound
            bottle.run(SKAction.playSoundFileNamed("soundPowder", waitForCompletion: false))
        // if is adding to spot three and spot three does not have a burner
        } else if index == 2 && !hasBurner[2] {
            // set the position of bottle
            bottle.position = CGPoint (x: 221.3, y: 89.9)
            // perform the rotating animation
            bottle.run(SKAction.rotate(byAngle: -1.75, duration: 0.55), completion: {bottle.run(SKAction.fadeOut(withDuration: 0.2), completion: {whatIsAdded[self.indexOfBeakerOnThree].run(SKAction.fadeIn(withDuration: 0.2))})})
            // play the sound
            bottle.run(SKAction.playSoundFileNamed("soundPowder", waitForCompletion: false))
        // if is adding to spot three and spot three has a burner
        } else if index == 2 && hasBurner[2] {
            // set the position of bottle
            bottle.position = CGPoint (x: 221.3, y: 279.1)
            // perform the rotating animation
            bottle.run(SKAction.rotate(byAngle: -1.75, duration: 0.55), completion: {bottle.run(SKAction.fadeOut(withDuration: 0.2), completion: {whatIsAdded[self.indexOfBeakerOnThree].run(SKAction.fadeIn(withDuration: 0.2))})})
            // play the file
            bottle.run(SKAction.playSoundFileNamed("soundPowder", waitForCompletion: false))
        }
        // add bottle to the game scene
        self.addChild(bottle)
    }
    
    // create a function called emptyContents
    func emptyContents () {
        // hide sodium sulfide
        arrayOfYellows[currentBeakerIndex].run(SKAction.fadeOut(withDuration: 0.000001))
        // set hasYellow to false
        hasYellow[currentBeakerIndex] = false
        // set temperature to 25
        temperature [currentBeakerIndex] = 25.0
        // set the amount of sodium sulfide to zero
        amountOfYellow[currentBeakerIndex] = 0.0
        // hide copper (II) sulfide
        arrayOfBlues[currentBeakerIndex].run(SKAction.fadeOut(withDuration: 0.000001))
        // set hasBlue to false
        hasBlue[currentBeakerIndex] = false
        // set the amount of copper (II) sulfide to false
        amountOfBlue[currentBeakerIndex] = 0.0
        // set the boiling and melting point
        arrayOfBoilingPoint[currentBeakerIndex] = -1
        arrayOfMeltingPoint[currentBeakerIndex] = -1
        // hide the water
        arrayOfWaters[currentBeakerIndex].run(SKAction.fadeOut(withDuration: 0.000001))
        // set hasWater to false
        hasWater[currentBeakerIndex] = false
        // set the amount of water to false
        amountOfWater[currentBeakerIndex] = 0.0
        // hide copper (II) sulfate solution
        arrayOfBlueSolutions[currentBeakerIndex].run(SKAction.fadeOut(withDuration: 0.000001))
        // hide sodium sulfide solution
        arrayOfYellowSolutions[currentBeakerIndex].run(SKAction.fadeOut(withDuration: 0.000001))
        // hide the precipitate
        arrayOfPrecipitates[currentBeakerIndex].run(SKAction.fadeOut(withDuration: 0.000001))
        // hide melted copper (II) sulfide
        arrayOfMeltedBlues[currentBeakerIndex].run(SKAction.fadeOut(withDuration: 0.000001))
        // hide the bubbles
        arrayOfBubblings[currentBeakerIndex].run(SKAction.fadeOut(withDuration: 0.000001))
        // hide the beaker
        arrayOfBeakers[currentBeakerIndex].run(SKAction.move(to: CGPoint (x: -399, y: 276), duration: 0.2))
    }
}
