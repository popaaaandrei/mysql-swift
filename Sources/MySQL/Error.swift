//
//  Error.swift
//  MySQL
//
//  Created by Yusuke Ito on 12/14/15.
//  Copyright © 2015 Yusuke Ito. All rights reserved.
//

public enum QueryError: Error {
    
    case queryExecutionError(message: String, query: String)
    case resultFetchError(message: String, query: String)
    case resultNoField(query: String)
    case resultRowFetchError(query: String)
    case resultFieldFetchError(query: String)
    case resultParseError(message: String, result: String)
    
    case fieldIndexOutOfBounds(fieldCount: Int, attemped: Int, fieldName: String)
    case castError(actual: String, expected: String, key: String)
    case missingKeyError(key: String)
    
    case invalidSQLDate(String)
    
    
    public var localizedDescription : String {
        switch self {
            
        case .queryExecutionError(let message, let query):
            return "MySQL execution error: \(message), for query: \(query)"
        case .resultFetchError(let message, let query):
            return "MySQL result fetch error: \(message), for query: \(query)"
        case .resultNoField(let query):
            return "MySQL no field error: \(query)"
        case .resultRowFetchError(let query):
            return "MySQL row fetch error: \(query)"
        case .resultFieldFetchError(let query):
            return "MySQL field fetch error: \(query)"
        case .resultParseError(let message, let result):
            return "MySQL parse error: \(message), result: \(result)"
        case .fieldIndexOutOfBounds(_, let attempted, let fieldName):
            return "MySQL field index out of bounds: \(fieldName), index: \(attempted)"
        case .castError(let actual, let expected, let key):
            return "MySQL cast error: actual \(actual), expected: \(expected), key: \(key)"
        case .missingKeyError(let key):
            return "MySQL missing ley error: \(key)"
        case .invalidSQLDate(let date):
            return "MySQL invalid date error: \(date)"
        }
    }
}
