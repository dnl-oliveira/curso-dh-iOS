//
//	Show.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Show : NSObject, NSCoding{

    var genres : [String]!
    var id : Int!
    var image : Image!
    var name : String!
    var rating : Rating!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        
        genres = dictionary["genres"] as? [String]
        id = dictionary["id"] as? Int
        if let imageData = dictionary["image"] as? [String:Any]{
            image = Image(fromDictionary: imageData)
        }
        
        name = dictionary["name"] as? String
        
        if let ratingData = dictionary["rating"] as? [String:Any]{
            rating = Rating(fromDictionary: ratingData)
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if genres != nil{
            dictionary["genres"] = genres
        }
        if id != nil{
            dictionary["id"] = id
        }
        if image != nil{
            dictionary["image"] = image.toDictionary()
        }
        if name != nil{
            dictionary["name"] = name
        }
        if rating != nil{
            dictionary["rating"] = rating.toDictionary()
        }
        return dictionary
    }

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
    {
         genres = aDecoder.decodeObject(forKey: "genres") as? [String]
         id = aDecoder.decodeObject(forKey: "id") as? Int
         image = aDecoder.decodeObject(forKey: "image") as? Image
         name = aDecoder.decodeObject(forKey: "name") as? String
         rating = aDecoder.decodeObject(forKey: "rating") as? Rating

    }

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
    {
        if genres != nil{
            aCoder.encode(genres, forKey: "genres")
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
        if rating != nil{
            aCoder.encode(rating, forKey: "rating")
        }

    }

}
