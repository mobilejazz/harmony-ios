//
// Copyright 2017 Mobile Jazz SL
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

///
/// Void get repository implementation
///
public class VoidGetRepository<T> : GetRepository {
    public func get(_ query: Query, operation: Operation) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func getAll(_ query: Query, operation: Operation) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
}

///
/// Void put repository implementation
///
public class VoidPutRepository<T> : PutRepository {
    public func put(_ value: T?, in query: Query, operation: Operation) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func putAll(_ array: [T], in query: Query, operation: Operation) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
}

///
/// Void delete repository implementation
///
public class VoidDeleteRepository<T> : DeleteRepository {
    public func delete(_ query: Query, operation: Operation) -> Future<Void> { return Future(CoreError.NotImplemented()) }
    public func deleteAll(_ query: Query, operation: Operation) -> Future<Void> { return Future(CoreError.NotImplemented()) }
}

///
/// Void get put repository implementation
///
public class VoidGetPutRepository<T> : GetRepository, PutRepository {
    public func get(_ query: Query, operation: Operation) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func getAll(_ query: Query, operation: Operation) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
    public func put(_ value: T?, in query: Query, operation: Operation) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func putAll(_ array: [T], in query: Query, operation: Operation) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
}

///
/// Void get delete repository implementation
///
public class VoidGetDeleteRepository<T> : GetRepository, DeleteRepository {
    public func get(_ query: Query, operation: Operation) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func getAll(_ query: Query, operation: Operation) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
    public func delete(_ query: Query, operation: Operation) -> Future<Void> { return Future(CoreError.NotImplemented()) }
    public func deleteAll(_ query: Query, operation: Operation) -> Future<Void> { return Future(CoreError.NotImplemented()) }
}

///
/// Void put delete repository implementation
///
public class VoidPutDeleteRepository<T> : PutRepository, DeleteRepository {
    public func put(_ value: T?, in query: Query, operation: Operation) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func putAll(_ array: [T], in query: Query, operation: Operation) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
    public func delete(_ query: Query, operation: Operation) -> Future<Void> { return Future(CoreError.NotImplemented()) }
    public func deleteAll(_ query: Query, operation: Operation) -> Future<Void> { return Future(CoreError.NotImplemented()) }
}

///
/// Void repository implementation
///
public class VoidRepository<T> : Repository {
    public func get(_ query: Query, operation: Operation) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func getAll(_ query: Query, operation: Operation) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
    public func put(_ value: T?, in query: Query, operation: Operation) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func putAll(_ array: [T], in query: Query, operation: Operation) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
    public func delete(_ query: Query, operation: Operation) -> Future<Void> { return Future(CoreError.NotImplemented()) }
    public func deleteAll(_ query: Query, operation: Operation) -> Future<Void> { return Future(CoreError.NotImplemented()) }
}
