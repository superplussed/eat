@SiteGrid = ReactMeteor.createClass
  templateName: "SiteGrid"

  getMeteorState: ->
    sites: Site.find({}, {sort: {position: 1}})

  render: ->
    <ul className='site-grid grid'>
      {
        @state.sites.map (item) =>
          <li key={item._id}>
            {item.name}
          </li>
      }
    </ul>
  