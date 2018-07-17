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

///
/// Void get data source implementation
///
public class VoidGetDataSource<T> : GetDataSource {
    public func get(_ query: Query) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func getAll(_ query: Query) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
}

///
/// Void put data source implementation
///
public class VoidPutDataSource<T> : PutDataSource {
    public func put(_ value: T?, in query: Query) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func putAll(_ array: [T], in query: Query) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
}

///
/// Void delete data source implementation
///
public class VoidDeleteDataSource<T> : DeleteDataSource {
    public func delete(_ query: Query) -> Future<Void> { return Future(CoreError.NotImplemented()) }
    public func deleteAll(_ query: Query) -> Future<Void> { return Future(CoreError.NotImplemented()) }
}

///
/// Void get put data source implementation
///
public class VoidGetPutDataSource<T> : GetDataSource, PutDataSource {
    public func get(_ query: Query) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func getAll(_ query: Query) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
    public func put(_ value: T?, in query: Query) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func putAll(_ array: [T], in query: Query) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
}

///
/// Void get delete data source implementation
///
public class VoidGetDeleteDataSource<T> : GetDataSource, DeleteDataSource {
    public func get(_ query: Query) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func getAll(_ query: Query) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
    public func delete(_ query: Query) -> Future<Void> { return Future(CoreError.NotImplemented()) }
    public func deleteAll(_ query: Query) -> Future<Void> { return Future(CoreError.NotImplemented()) }
}

///
/// Void put delete data source implementation
///
public class VoidPutDeleteDataSource<T> : PutDataSource, DeleteDataSource {
    public func put(_ value: T?, in query: Query) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func putAll(_ array: [T], in query: Query) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
    public func delete(_ query: Query) -> Future<Void> { return Future(CoreError.NotImplemented()) }
    public func deleteAll(_ query: Query) -> Future<Void> { return Future(CoreError.NotImplemented()) }
}

///
/// Void data source implementation
///
public class VoidDataSource<T> : DataSource {
    public func get(_ query: Query) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func getAll(_ query: Query) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
    public func put(_ value: T?, in query: Query) -> Future<T> { return Future(CoreError.NotImplemented()) }
    public func putAll(_ array: [T], in query: Query) -> Future<[T]> { return Future(CoreError.NotImplemented()) }
    public func delete(_ query: Query) -> Future<Void> { return Future(CoreError.NotImplemented()) }
    public func deleteAll(_ query: Query) -> Future<Void> { return Future(CoreError.NotImplemented()) }
}
