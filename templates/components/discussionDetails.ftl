[#assign id=ctx.getParameter("id")]

[#assign discussion=mongofn.findById("discussions", id)]

[#if discussion??]
  <!-- discussion -->
  <div class="row">
    
    <!-- avatar -->
    <div class="col-md-2">
      <a href="#">
        <img src="${ctx.contextPath}/.resources/ms-discussions-resources/webresources/images/avatar.jpg" class="avatar img-responsive img-rounded"></img>
      </a>
    </div>

    <!-- topic -->
    <div class="col-md-10">
      <h2>${discussion.title}<small>2 participants</small></h2>
      <h4>${discussion.initiator}</h4>
      <p class="lead">
     ${discussion.description}
      </p>

      <h4>2 answers</h4>
    

      <!-- comments -->
      <ul class="media-list">

        <li class="comment media">
          <div class="media-left">
            <a href=""> 
              <img src="${ctx.contextPath}/.resources/ms-discussions-resources/webresources/images/avatar.jpg" class="avatar-small img-responsive img-rounded"></img> 
            </a>
            <div class="voter">
              <a href="#">
                <span class="vote glyphicon glyphicon-chevron-up"></span>
              </a>
              <span class="vote">4</span>
              <a href="#">
                <span class="vote glyphicon glyphicon-chevron-down"></span>
              </a>
            </div> 
          </div>
          <div class="media-body">
            <h4>Nicolas Barbé</h4>
            <div class="metadata">answered Jul 23 at 21:25</div>
            <p>
              Lorem ipsum dolor sit amet
            </p>
            <div class="actions pull-right">
              <button type="button" class="btn btn-sm btn-default">Share</button>
              <button type="button" class="btn btn-sm btn-default">Flag</button>
              <button type="button" class="btn btn-sm btn-primary">Comment</button>
            </div>
          </div>
        </li>

        <li class="comment media">
          <div class="media-left">
            <a href=""> 
              <img src="${ctx.contextPath}/.resources/ms-discussions-resources/webresources/images/avatar.jpg" class="avatar-small img-responsive img-rounded"></img> 
            </a>
            <div class="voter">
              <a href="#">
                <span class="vote glyphicon glyphicon-chevron-up"></span>
              </a>
              <span class="vote">4</span>
              <a href="#">
                <span class="vote glyphicon glyphicon-chevron-down"></span>
              </a>
            </div> 
          </div>
          <div class="media-body">
            <h4>Nicolas Barbé</h4>
            <div class="metadata">answered Jul 23 at 21:25</div>
            <p>
              Magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo...
            </p>
            <div class="actions pull-right">
              <button type="button" class="btn btn-sm btn-default">Share</button>
              <button type="button" class="btn btn-sm btn-default">Flag</button>
              <button type="button" class="btn btn-sm btn-primary">Comment</button>
            </div>
          </div>
        </li>

    </div>
  </div>
[#else]
<p>Unknown discusion</p>
[/#if]