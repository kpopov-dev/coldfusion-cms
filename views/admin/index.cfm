<h1>Admin Dashboard</h1>
<cfoutput>
  <ul>
    <cfloop array="#prc.contents#" index="item">
      <li><strong>#item.getTitle()#</strong> - #item.getCreatedDate()#</li>
    </cfloop>
  </ul>
</cfoutput>
<a href="/logout">Logout</a>