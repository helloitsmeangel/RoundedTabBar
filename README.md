# Preview

| Sample image with 5 tabs | Demo Video |
| --- | --- |
| ![RoundedTabBarBaseImage](https://github.com/helloitsmeangel/RoundedTabBar/assets/10169224/c3411a20-6366-4952-b821-b3cec1e2b706) | <video src="https://github.com/helloitsmeangel/RoundedTabBar/assets/10169224/52533c05-9c7e-4220-8bc7-50680329e190" /> |

# Getting Started

Add the following line to your Podfile.

```
pod 'RoundedTabBar'
```

Make sure to import RoundedTabBar in the relevant files!

# Examples

Create your TabBarInfo object, we need an array of RoundedTabBarItems, and a main/tint color. Use the UIColor values below as a starting off point if needed!

```
var tabBarInfo = TabBarInfo(
    tabBarItems:
      [RoundedTabBarItem(title: "First", image: "house", viewController: FirstVC()),
       RoundedTabBarItem(title: "Second", image: "magnifyingglass", viewController: SecondVC()),
       RoundedTabBarItem(title: "Third", image: "message", viewController: ThirdVC()),
       RoundedTabBarItem(title: "Fourth", image: "questionmark", viewController: FourthVC())],
    mainColor: UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.0),
    tintColor: UIColor(red: 0.18, green: 0.61, blue: 0.89, alpha: 1.0)
)
```


In SceneDelegate, create your RoundedTabBarController by passing in the tabBarInfo. Then set it as the rootViewController.

```
func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene

        /* From the above step */
        var tabBarInfo = TabBarInfo(tabBarItems:
            [RoundedTabBarItem(title: "First", image: "house", viewController: FirstVC()),
             RoundedTabBarItem(title: "Second", image: "magnifyingglass", viewController: SecondVC()),
             RoundedTabBarItem(title: "Third", image: "message", viewController: ThirdVC()),
             RoundedTabBarItem(title: "Fourth", image: "questionmark", viewController: FourthVC())
            ],
            mainColor: UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.0),
            tintColor: UIColor(red: 0.18, green: 0.61, blue: 0.89, alpha: 1.0))

        /* Create RoundedTabBarController here */
        let tabBarController = RoundedTabBarController(tabBarInfo: tabBarInfo)

        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
```

