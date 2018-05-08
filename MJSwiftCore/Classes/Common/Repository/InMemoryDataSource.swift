//
// Copyright 2018 Mobile Jazz SL
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

public class InMemoryDataSource<T> : DataSource<T> {

    private var objects : [String : T] = [:]
    private var arrays : [String : [T]] = [:]
    
    public override init() {}
    
    public override func get(_ query: Query) -> Future<T?> {
        guard let key = query.key() else {
            return super.get(query)
        }
        let value = objects[key]
        return Future(value)
    }
    
    public override func getAll(_ query: Query) -> Future<[T]> {
        guard let key = query.key() else {
            return super.getAll(query)
        }
        if let value = arrays[key] {
            return Future(value)
        }
        return Future([])
    }
    
    @discardableResult
    public override func put(_ value: T, in query: Query) -> Future<T> {
        guard let key = query.key() else {
            return super.put(value, in: query)
        }
        objects[key] = value
        return Future(value)
    }
    
    @discardableResult
    public override func putAll(_ array: [T], in query: Query) -> Future<[T]> {
        guard let key = query.key() else {
            return super.putAll(array, in: query)
        }
        arrays[key] = array
        return Future(array)
    }
    
    @discardableResult
    public override func delete(_ value: T?, in query: Query) -> Future<Bool> {
        guard let key = query.key() else {
            return super.delete(value, in: query)
        }
        objects[key] = nil
        return Future(true)
    }
    
    @discardableResult
    public override func deleteAll(_ array: [T], in query: Query) -> Future<Bool> {
        guard let key = query.key() else {
            return super.deleteAll(array, in: query)
        }
        arrays[key] = nil
        return Future(true)
    }
}

fileprivate var defaults = [String : Any]()

extension InMemoryDataSource {
    
    /// Returns a default instance for each T type
    public static var `default` : InMemoryDataSource<T> {
        get {
            let key = String(describing: T.self)
            if let instance = defaults[key] {
                return instance as! InMemoryDataSource<T>
            }
            let instance = InMemoryDataSource<T>()
            defaults[key] = instance
            return instance
        }
        set {
            let key = String(describing: T.self)
            defaults[key] = newValue
        }
    }
}