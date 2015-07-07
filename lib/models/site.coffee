@Site = new Meteor.Collection("Site",
  schema: new SimpleSchema(
    slug:
      type: String
    name:
      type: String
    dateRange: 
      type: String
    primaryImage: 
      type: String
    description:
      type: String
    role: 
      type: String
    techs: 
      type: Object
  )
)
