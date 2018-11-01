//
//  GitHawkRoutesTests.swift
//  GitHawkRoutesTests
//
//  Created by Ryan Nystrom on 10/19/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import XCTest
@testable import GitHawkRoutes

class GitHawkRoutesTests: XCTestCase {

    func testRepo() {
        let repo = RepoRoute(
            owner: "GitHawkApp",
            repo: "GitHawk",
            branch: "master"
        )
        let url = URL.from(githawk: repo)!
        let components = URLComponents(url: url, resolvingAgainstBaseURL: false)!
        
        XCTAssertEqual("freetime", components.scheme)
        XCTAssertEqual("RepoRoute", components.host)
        XCTAssertEqual("GitHawkApp", components.queryItems?.first(where: { $0.name == "owner"})!.value)
        XCTAssertEqual("GitHawk", components.queryItems?.first(where: { $0.name == "repo"})!.value)
        XCTAssertEqual("master", components.queryItems?.first(where: { $0.name == "branch"})!.value)
    }

}
