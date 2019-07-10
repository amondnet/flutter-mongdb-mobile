//
//  LocalDBUtil.swift
//  mongodb_mobile
//
//  Created by Minsu Lee on 10/07/2019.
//
import MongoSwift

public class LocalDBUtil {
    public static func insert( client: MongoClient, carrier: [String: Any] ) -> UInt32? {
        do {
            let data = carrier["data"] as! [String: Any]
            let jsonData = try JSONSerialization.data(withJSONObject: data)
            let doc: Document = try Document(fromJSON: jsonData)
            
            let result = try getCollection(client: client, carrier: carrier)?.insertOne(doc)
            
            return result?.insertedId.bsonType.rawValue
            
        } catch {
            
        }
    }
    
    private static func getCollection  ( client: MongoClient, carrier: [String: Any] ) -> MongoCollection<Document>?  {
        let db: String = carrier["db"] as! String
        let collection: String = carrier["collection"] as! String
        return client.db(db).collection(collection)
    }
    
    private static func getOne ( client: MongoClient, carrier: [String: Any] ) -> Any {
        let idMap = carrier["id"] as! [String: String]
        let field = idMap["field"]
        let value = idMap["value"]
        
        let filter = eq(field, value)
    }
    

}

