//
// Copyright 2022 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

internal import FirebaseInstallations

@testable import FirebaseSessions

class MockInstallationsProtocol: InstallationsProtocol, @unchecked Sendable {
  static let testInstallationId = "testInstallationId"
  static let testAuthToken = "testAuthToken"
  var result: Result<(String, String), Error> = .success((testInstallationId, testAuthToken))
  var installationIdFinished = false
  var authTokenFinished = false

  func installationID(completion: @escaping (String?, Error?) -> Void) {
    installationIdFinished = true
    switch result {
    case let .success(success):
      completion(success.0, nil)
    case let .failure(failure):
      completion(nil, failure)
    }
  }

  func authToken(completion: @escaping (InstallationsAuthTokenResult?, Error?) -> Void) {
    Thread.sleep(forTimeInterval: 0.1)
    authTokenFinished = true
    completion(nil, nil)
  }
}
