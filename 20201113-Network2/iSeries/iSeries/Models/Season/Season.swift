//
//	Season.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Season : NSObject, NSCoding{

    var endDate : String!
    var id : Int!
    var image : AnyObject!
    var name : String!
    var number : Int!
    var premiereDate : String!
    var episodeOrder : Int!
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        endDate = dictionary["endDate"] as? String
        id = dictionary["id"] as? Int
        image = dictionary["image"] as? AnyObject
        name = dictionary["name"] as? String
        number = dictionary["number"] as? Int
        premiereDate = dictionary["premiereDate"] as? String
        episodeOrder = dictionary["episodeOrder"] as? Int
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if endDate != nil{
            dictionary["endDate"] = endDate
        }
        if id != nil{
            dictionary["id"] = id
        }
        if image != nil{
            dictionary["image"] = image
        }
        if name != nil{
            dictionary["name"] = name
        }
        if number != nil{
            dictionary["number"] = number
        }
        if premiereDate != nil{
            dictionary["premiereDate"] = premiereDate
        }
        
        if episodeOrder != nil{
            dictionary["episodeOrder"] = episodeOrder
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         endDate = aDecoder.decodeObject(forKey: "endDate") as? String
         id = aDecoder.decodeObject(forKey: "id") as? Int
         image = aDecoder.decodeObject(forKey: "image") as? AnyObject
         name = aDecoder.decodeObject(forKey: "name") as? String
         number = aDecoder.decodeObject(forKey: "number") as? Int
         premiereDate = aDecoder.decodeObject(forKey: "premiereDate") as? String
         episodeOrder = aDecoder.decodeObject(forKey: "episodeOrder") as? Int

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if endDate != nil{
            aCoder.encode(endDate, forKey: "endDate")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if image != nil{
            aCoder.encode(image, forKey: "image")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if number != nil{
            aCoder.encode(number, forKey: "number")
        }
        if premiereDate != nil{
            aCoder.encode(premiereDate, forKey: "premiereDate")
        }
        if episodeOrder != nil{
            aCoder.encode(episodeOrder, forKey: "episodeOrder")
        }

    }

}
