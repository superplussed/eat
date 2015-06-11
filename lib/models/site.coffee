@Site = new Meteor.Collection("Site",
  schema: new SimpleSchema(
    name:
      type: String
      label: "Name"
    dateRange: 
      type: String
      label: "Date Range"
    description:
      type: String
      label: "Description"
    role: 
      type: String
      label: "Role"
    techs: 
      type: Object
      label: "Techs"
  )
)
