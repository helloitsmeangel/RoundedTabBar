# Demo Video
https://github.com/helloitsmeangel/RoundedTabBar/assets/10169224/3b6b51e8-73bd-4757-b5e5-94c239a631f5

# Getting Started
<h3>CocoaPods</h3> <br />
Add the following line to your Podfile.

```
pod 'RoundedTabBar'
```

Make sure to import RoundedTabBar in the relevant files!

# Info

<h3>RoundedTabBarItem</h3> <br />

For each tab you would like to have within the tab bar, you must provide a RoundedTabBarItem. The following is the init method for RoundedTabBarItem.
```
init(title: String, image: String, viewController: UIViewController)
```
| parameter | info |
| --- | --- |
| title | The title of the tab bar item. |
| image | The image of the tab bar item. <br /> _Note: image requires a String, visit the [SF Symbols](https://developer.apple.com/sf-symbols/) website to download the client. From here you can view the string value of the icon you'd like to use for the tab bar item._ |
| viewController | The ViewController that will display when the tab is selected. |


<h3>TabBarInfo</h3> <br />

To provide some necessary information to RoundedTabBarController, we pass in a TabBarInfo object. The following is the init method for TabBarInfo.
```
init(tabBarItems: [RoundedTabBarItem], mainColor: UIColor, tintColor: UIColor)
```

| parameter | info |
| --- | --- |
| tabBarItems | An array of RoundedTabBarItems, items appear in the order they are placed within the array. (e.g., the item at index 0 will appear first, the item at index 1 will be next, etc.) |
| mainColor | The primary color for the tab bar, this will cover all of the main parts. |
| tintColor | The secondary color for the tab bar, this will cover the icon of a selected tab and the selected indicator view above each selected tab. |

# Example
Within SceneDelegate, do the following:

1. Create your TabBarInfo object.
2. Create your RoundedTabBarController by passing in the tabBarInfo.
3. Set it as the rootViewController.
   
```
func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene

        // 1.
        let tabBarInfo = TabBarInfo(tabBarItems:
            [RoundedTabBarItem(title: "First", image: "house.fill", viewController: FirstVC()),
             RoundedTabBarItem(title: "Second", image: "magnifyingglass", viewController: SecondVC()),
             RoundedTabBarItem(title: "Third", image: "message", viewController: ThirdVC()),
             RoundedTabBarItem(title: "Fourth", image: "questionmark", viewController: FourthVC())],
            mainColor: UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.0),
            tintColor: UIColor(red: 0.18, green: 0.61, blue: 0.89, alpha: 1.0))

        // 2.
        let tabBarController = RoundedTabBarController(tabBarInfo: tabBarInfo)

        // 3.
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
```

Use some of the above values to get started if needed!

