ReactMeteor.createClass
  templateName: "SiteIndex"

  getMeteorState: ->
    sites: Site.find({}, {sort: {position: 1}})

  gotoSite: (slug) ->
    Router.go("/site/#{slug}")

  render: ->
    <ul className='site-index grid'>
      {
        @state.sites.map (item) =>
          <li className='block' key={item._id}>
            <img src={"/images/primary_#{item.slug}.png"} />
            <div className='overlay' onClick={@gotoSite.bind(this, item.slug)}>
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
  