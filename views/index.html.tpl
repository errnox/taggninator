% rebase('base.html.tpl', title='Tagginator - Welcome')
<div class="row">
  <div class="col col-md-12">
    <div class="panel panel-default">
      <div class="panel-body">
        <center><h2>Welcome!</h2></center>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col col-md-12">
    % for bookmark in bookmarks:
    <div class="panel panel-default">
      <div class="panel-body">
        <p>{{bookmark['title']}}&nbsp;&nbsp;&nbsp;&nbsp;<small class="text-muted">{{bookmark['created_at']}}</small> </p>
        <p><a href="{{bookmark['url']}}">{{bookmark['url']}}</a></p>
        <p>{{bookmark['description']}}</p>
      </div>
    </div>
    % end
  </div>
</div>
