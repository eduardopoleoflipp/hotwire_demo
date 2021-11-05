# Topics
- Stimulus vs Turbo

## Stimulus:
- Controllers
- Targets
- Values
- Controller Scoping
  - Target Scoping and multiple controller per element
  - Break away from Stimulus if necessary
- Fomantic + JQuery + Stimulus
  - Use Jquery When neccessary
- Life cycle
  - connect
  - Stimulus 3 support for `target` lifecycle
- Debugging
  - Debugger
- Controller - Controller communication
  - Stimulus 3 support for events
  - window dispatch as workaround

## Turbo
- Drive
  - Links and forms
- Frames
  - Twitter create form
  - 
- Streams
  - Updating multiple parts of the app 
- Web Sockets

## Gotchas
- Creating a turbo form request from the FE
- Tables are a pain cuz the hoist wrappers to before where the table is






Tutorial:
- Broadcasting (on a index page of sort)
  - Frame around the list
    - To append a new tweet to the list when it gets created
  - Frame around the actual tweet for when it gets updated
    - To replace / destroy tweets when changes occur
  GOTCHA: turbo_stream_from -> makes us think that streams are only for broadcasting.
  The event will get picked up by where the stream is defined and then will find a frame to re

- Turbo Stream requests
  - If there is not turbo_stream format rails will default to html

Requirements:
- Routing
- Controllers
  - Requests formats
- Views (IMPORTANT)
  - Form Helpers
  - Links
  - Partials and locals
- Models
  - Persistance
  - Callbacks (not very important mostly for broadcasting)



Scratch pad

```ruby
# This will render the corresponding views/projects/create_turbo_stream.erb
format.turbo_stream

# You can also render directly from the controller using this syntax:
format.turbo_stream {
  render turbo_stream: turbo_stream.prepend(
    'project-container',
    partial: "project", locals: { project: @project }
  )
}
# Yet using views is preferred.

# If not turbo_stream format is defined then rails will default to a
# html response which in this case just does a redirect
# JSON will never be used
```


