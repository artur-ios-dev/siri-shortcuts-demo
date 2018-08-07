//
//  GitHubUser.swift
//  SiriShortcutsDemo
//
//  Created by Artur Rymarz on 06.08.2018.
//  Copyright © 2018 OpenSource. All rights reserved.
//

import UIKit

public struct GitHubUser: Codable {
    public let name: String
    public let location: String
    public let repos: Int

    private enum CodingKeys: String, CodingKey {
        case name
        case location
        case repos = "public_repos"
    }
}

public struct GitHubFollower: Codable {
    public let login: String

    private enum CodingKeys: String, CodingKey {
        case login
    }
}
