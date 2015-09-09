var form;

submitFormDiscussion = function (e) {
  // stop the regular form submission
  e.preventDefault();

  // collect the form data while iterating over the inputs
  var discussion = {
    title : form[0],
    description : form[1],
    initiator : nbarbe
    createdAt : 
  };

  // construct an HTTP request
  var xhr = new XMLHttpRequest();
  xhr.open(form.method, form.action, true);
  xhr.setRequestHeader('Content-Type', 'application/json; charset=UTF-8');

  // send the collected data as JSON
  xhr.send(JSON.stringify(data));

  xhr.onloadend = function () {
    // done
  };
};