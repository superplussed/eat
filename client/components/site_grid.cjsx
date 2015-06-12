ReactMeteor.createClass
  templateName: "SiteGrid"

  getMeteorState: ->
    sites: Site.find({}, {sort: {position: 1}})

  primaryImagePath: (name) ->
    underscore_name = name.toLowerCase().split(" ").join("_")
    "/images/primary_#{underscore_name}.png"

  render: ->
    <ul className='site-grid grid'>
      {
        @state.sites.map (item) =>
          <li key={item._id}>
            <img src={@primaryImagePath(item.name)} />
            <div className='overlay' >
              <div className='info'>
                <div className='site-name'>
                  {item.name}
                </div>
                <div className='role'>
                  {item.role}
                </div>
                <div className='date-range'>
                  {item.dateRange}
                </div>
              </div>
            </div>
          </li>
      }
    </ul>
  