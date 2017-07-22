<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
% setdefault('title', 'Manage Tags')
% setdefault('hide_topbar', False)
% setdefault('flash', None)
<html>
  <head>
    <title>Tagginator - {{title}}</title>
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css" type="text/css" />
  </head>

  <body>

    % if not hide_topbar == True:
    <div class="container container-fluid">
      <div class="panel-body"></div>
      <div class="row">
        <div class="col col-md-12">
          <b><a href="/">Tagginator</a></b>
          <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <a href="bookmark/new">New</a>
        </div>
      </div>
      <div class="panel-body"></div>
      % if flash != None:
      <div class="row">
        <div class="col col-md-12">
          <div class="alert alert-info">
            <center>{{flash}}</center>
          </div>
        </div>
      </div>
      % end
    </div>
    % end

    <div class="container container-fluid">
      {{!base}}
    </div>

  </body>
</html>
