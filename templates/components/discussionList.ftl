[#assign discussions=rsfn.service("http://192.168.99.100:3004/").GET("api/v1/discussions")![]]


<!-- list of last discussions -->
<h3>Last discussions</h3>
<div class="discussionList">

[#list discussions as discussion]

  <div class="media discussionItem">
    <div class="media-left media-top">
      <h4 class="stats"><span class="label label-default"><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span> 10</span></h4>
      <h4 class="stats"><span class="label label-default"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span> 3</span></h4>
      <h4 class="stats"><span class="label label-default"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> 212</span></h4>
    </div>
    <div class="media-body">
      <h4 class="media-heading"><a href="discussion?id=${discussion.id}">${discussion.title}</a></h4>
      ${discussion.description}
      <div class="pull-right">
      asked XXX ago by ${discussion.initiator}
      </div>
    </div>
  </div>
  

[/#list]
</div>
