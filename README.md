About Rubberduck
================

Rubberduck is an on demand mentoring service.  Students can request help with coding problems and meet up with any online mentor in a virtual classroom with code sharing and video chat technologies.

## Live Demo

Visit [Rubberduckapp](https://rubberduckapp.herokuapp.com/) to sign up as a student. From there, you can articulate your coding questions and be paired with a live mentor, using an interactive code pad. Both students and mentors can simultaneously code their way through the problem.

## Technologies

Rubberduck utilized the pre-release of Rails 5 for it's integrated action cable technology. Action cables are used to match students with their mentors and to send alerts when questions are available to be answered.

Broadcasting question:
```
controllers/questions_controller.rb
```

```
ActionCable.server.broadcast 'questions',
content: @question.content,
title: @question.title,
skill: @question.skill.sub_type,
tag: @question.tag,
url: @question.id
redirect_to @question
```

Receiving channel:
```
javascrips/channels/zquestions.js
```
```
var $this = $(this);
$this.button('loading');
event.preventDefault();
App.questions = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    return $('body').append(this.renderMessage(data));
  },
  ```

Rubberduck uses other built in Rails technologies like iframe and multi-user authentication as well as a RESTful CRUD structure to make the site easy to use initially and regularly. We also threw in a handful of jQuery for good measure.

As for design, Rubberduck also implements Bootstrap for dynamically styled features (modals, tooltips, loading buttons) and a clean, functional look.

## Codeshare

Rubberduck uses Codeshare's real-time browser-based collaborative codepad to link users and allow them to work on a code-based project together. This incorporates WebRTC's video chat functionality, which makes communication quicker, easier, and more effective.


## Contributors

This project was created by:

[Ben Sanecki](https://github.com/BenSanex)

[Denny Jovic](https://github.com/DennyJovic)

[Scott Southard](https://github.com/scottsouthard)
