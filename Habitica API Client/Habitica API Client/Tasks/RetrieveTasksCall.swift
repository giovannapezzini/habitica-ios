//
//  RetrieveTasksAPICall.swift
//  Habitica API Client
//
//  Created by Phillip Thelen on 05.03.18.
//  Copyright © 2018 HabitRPG Inc. All rights reserved.
//

import Foundation
import Habitica_Models
import FunkyNetwork
import ReactiveSwift

public class RetrieveTasksCall: ResponseArrayCall<TaskProtocol, APITask> {
    public init(configuration: ServerConfigurationProtocol = HRPGServerConfig.current, stubHolder: StubHolderProtocol? = StubHolder(responseCode: 200, stubFileName: "tasks.json")) {
        super.init(configuration: configuration, httpMethod: "GET", endpoint: "tasks/user", postData: nil, stubHolder: stubHolder)
    }
}
