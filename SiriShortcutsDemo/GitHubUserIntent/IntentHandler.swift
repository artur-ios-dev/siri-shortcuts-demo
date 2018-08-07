//
//  IntentHandler.swift
//  GitHubUserIntent
//
//  Created by Artur Rymarz on 06.08.2018.
//  Copyright © 2018 OpenSource. All rights reserved.
//

import Intents
import GitHubFetcher

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        guard intent is CheckMyGitHubIntent else {
            fatalError("Unhandled intent type: \(intent)")
        }

        return CheckMyGitHubIntentHandler()
    }
    
}
