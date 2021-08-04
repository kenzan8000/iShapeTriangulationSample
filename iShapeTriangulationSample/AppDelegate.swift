//
//  AppDelegate.swift
//  iShapeTriangulationSample
//
//  Created by Kenzan Hase on 8/3/21.
//

import iGeometry
import iShapeTriangulation
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    let points = [
      Point(x: 0.22230338, y: 50.065407),
      Point(x: 0.22230338, y: 78.72688),
      Point(x: 1.5771879, y: 96.935295),
      Point(x: 2.7627118, y: 110.59158),
      Point(x: 0.22230338, y: 290.1446),
      Point(x: 6.213398, y: 250.35663),
      Point(x: 6.3827586, y: 231.97992),
      Point(x: 5.1972346, y: 207.87099),
      Point(x: 3.3342686, y: 174.99504),
      Point(x: 1.6406629, y: 151.22314),
      Point(x: 0.62449944, y: 134.195),
      Point(x: 0.9632206, y: 119.864365),
      Point(x: 1.8100234, y: 103.51055),
      Point(x: 3.8423502, y: 84.96495),
      Point(x: 7.060201, y: 68.105286),
      Point(x: 9.2618885, y: 56.134903),
      Point(x: 10.278051, y: 51.414185),
      Point(x: 7.907004, y: 45.513283),
      Point(x: 2.9955473, y: 44.164505),
    ]
    let triangles = Triangulator().triangulateDelaunay(points: points)
    print(triangles)
    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
  }


}

