[#assign id=ctx.getParameter("id")]

[#assign discussion=httpfn.service("http://192.168.99.100:3004/", "v1", "discussions/"+id).GET()]
[#assign answerIds=discussion.answers]

[#setting datetime_format="iso"]

[#if discussion??]
  <!-- discussion -->
  <div class="row discussion">
    
    <!-- topic -->
    <div class="col-md-12">

      <div class="row">

        <h2>${discussion.title}</h2>
        <h4>${discussion.initiator}</h4>
        <p class="lead">
       ${discussion.description}
        </p>
        <div class="pull-right">Asked ${discussion.createdAt?datetime?date} at ${discussion.createdAt?datetime?time}</div>
      </div>

      <!-- answers -->
      <div class="row">

        <h4>${answerIds?size} answers</h4>
        
        <ul class="media-list">

        <!-- TODO Replace this stupid list with a bucket of comment -->
        [#list answerIds as answerId]

          [#assign answer=httpfn.service("http://192.168.99.100:3007/", "v1", "answers/"+answerId).GET()]


          <li class="comment media">
            <div class="media-left">
              <a href=""> 
                <img src="${ctx.contextPath}/.resources/ms-frontend-resources/webresources/images/${answer.author}.png" class="avatar-small img-responsive img-rounded"></img> 
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
              <h4>${answer.author}</h4>
              
              <div class="metadata">Answered ${answer.createdAt?datetime?date} at ${answer.createdAt?datetime?time}</div>
              <p>
                ${answer.content}
              </p>
              <div class="actions pull-right">
                <button type="button" class="btn btn-sm btn-default">Share</button>
                <button type="button" class="btn btn-sm btn-default">Flag</button>
              </div>
            </div>
          </li>
        </ul>

        [/#list]

      </div>

      <div class="youranswer row">
        <h4>Your answer</h4>
        <form>
          <div class="form-group">
              <textarea rows="5" class="form-control" id="inputDescription" placeholder="Your answer"></textarea>
        </div>

          <button type="submit" class="btn btn-primary pull-right">Submit</button>
      </form>
      </div>

    </div>
  </div>
[#else]
<p>Unknown discusion</p>
[/#if]