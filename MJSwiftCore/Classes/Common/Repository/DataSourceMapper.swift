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
/// This data source uses mappers to map objects and redirects them to the contained data source, acting as a simple "translator".
///
public class DataSourceMapper<From,To> : DataSource {
    
    public typealias T = From

    private let dataSource : AnyDataSource<To>
    private let toToMapper: Mapper<From,To>
    private let toFromMapper: Mapper<To,From>
    
    /// Default initializer
    ///
    /// - Parameters:
    ///   - dataSource: The contained dataSource
    ///   - toToMapper: From to To mapper
    ///   - toFromMapper: To to From mapper
    public init<D>(dataSource: D,
                   toToMapper: Mapper <From,To>,
                   toFromMapper: Mapper<To,From>) where D : DataSource, D.T == To{
        self.dataSource = dataSource.asAnyDataSource()
        self.toToMapper = toToMapper
        self.toFromMapper = toFromMapper
    }
    
    public func get(_ query: Query) -> Future<From> {
        return dataSource.get(query).map { value in
            return self.toFromMapper.map(value)
        }
    }
    
    public func getAll(_ query: Query) -> Future<[From]> {
        return dataSource.getAll(query).map { self.toFromMapper.map($0) }
    }
    
    @discardableResult
    public func put(_ value: From?, in query: Query) -> Future<From> {
        var mapped : To? = nil
        if let value = value {
            mapped = toToMapper.map(value)
        }
        return dataSource.put(mapped, in: query).map { self.toFromMapper.map($0) }
    }
    
    @discardableResult
    public func putAll(_ array: [From], in query: Query) -> Future<[From]> {
        return dataSource.putAll(toToMapper.map(array), in: query).map { self.toFromMapper.map($0) }
    }
    
    @discardableResult
    public func delete(_ query: Query) -> Future<Void> {
        return dataSource.delete(query)
    }
    
    @discardableResult
    public func deleteAll(_ query: Query) -> Future<Void> {
        return dataSource.deleteAll(query)
    }
}
