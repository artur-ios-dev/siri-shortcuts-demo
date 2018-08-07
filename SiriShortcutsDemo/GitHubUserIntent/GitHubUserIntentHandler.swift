//
//  GitHubUserIntentHandler.swift
//  GitHubUserIntent
//
//  Created by Artur Rymarz on 06.08.2018.
//  Copyright © 2018 OpenSource. All rights reserved.
//

import UIKit
import GitHubFetcher

final class CheckMyGitHubIntentHandler: NSObject, CheckMyGitHubIntentHandling {
    func handle(intent: CheckMyGitHubIntent, completion: @escaping (CheckMyGitHubIntentResponse) -> Void) {
        guard let name = intent.name else {
            completion(CheckMyGitHubIntentResponse(code: .failure, userActivity: nil))
            return
        }

        Fetcher.fetch(name: name) { (user, followers) in
            guard let user = user else {
                completion(CheckMyGitHubIntentResponse(code: .failure, userActivity: nil))
                return
            }

            completion(CheckMyGitHubIntentResponse.success(repos: user.repos as NSNumber, followers: followers.count as NSNumber))
        }
    }
    
}
