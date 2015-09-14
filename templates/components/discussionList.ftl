[#assign discussions=httpfn.service("http://192.168.99.100:3004/", "v1", "discussions").GET()![]]

[#setting datetime_format="iso"]

<!-- list of last discussions -->
<h3>Last questions</h3>
<div class="discussionList">

[#list discussions as discussion]

  <div class="media discussionItem">
    <div class="media-left media-top">
      <h4 class="stats"><span class="label label-default"><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>#{discussion.up}</span></h4>
      <h4 class="stats"><span class="label label-default"><span class="glyphicon glyphicon-comment" aria-hidden="true"></span> #{discussion.answers?size}</span></h4>
      <h4 class="stats"><span class="label label-default"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> #{discussion.views}</span></h4>
    </div>
    <div class="media-body">
      <button type="submit" class="btn btn-primary pull-right">Answer</button>
            

      <h4 class="media-heading"><a href="discussion?id=${discussion.id}">${discussion.title}</a></h4>
      <p>
      ${discussion.description}
    </p>

    </div>

      <div class="pull-right">
      asked ${discussion.createdAt?datetime?date} by ${discussion.initiator}
      </div>
  </div>
  

[/#list]
</div>
