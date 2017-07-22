% rebase('base.html.tpl', title='New Bookmark', hide_topbar=True)

<div class="row">
  <form action="/bookmark/new" method="post">

    <div class="col col-md-12">
      <h4 class="text-muted">New Bookmark</h4>
    </div>
    <div class="col col-md-12"><hr/></div>

    <div class="col col-md-1"><span class="text-muted">Title</span></div>
    <div class="col col-md-11">
      <input class="form-control" name="title" type="text" value=""/>
    </div>
    <div class="col col-md-12"><hr/></div>

    <div class="col col-md-1"><span class="text-muted">URL</span></div>
    <div class="col col-md-11">
      <input class="form-control" name="url" type="text" value=""/>
    </div>
    <div class="col col-md-12"><hr/></div>

    <div class="col col-md-1"><span class="text-muted">Description</span></div>
    <div class="col col-md-11">
      <textarea class="form-control" cols="30" id="" name="description" rows="10"></textarea>
    </div>
    <div class="col col-md-12"><hr/></div>

    <div class="col col-md-11 col-md-offset-1">
      <button type="submit" class="btn btn-success">Create</button>
      <a class="btn btn-link" href="/">Cancel</a>
    </div>

    </form>
</div>
