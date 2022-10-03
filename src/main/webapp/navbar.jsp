<nav class="navbar navbar-expand-lg navbar-light grey">
  <a class="navbar-brand" href="#">Note Maker</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
</button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="addNotes.jsp">Add Note</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="show.jsp">Show Notes</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" action="search.jsp">
      <input class="form-control mr-sm-2" type="search" placeholder="Enter title" aria-label="Search" name="title">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>