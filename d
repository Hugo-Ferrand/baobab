[1mHelp[0m
  help               Show a list of commands or information about a specific command.

[1mContext[0m
  cd                 Move into a new context (object or scope).
  find-method        Recursively search for a method within a class/module or the current namespace.
  ls                 Show the list of vars and methods in the current scope.
  pry-backtrace      Show the backtrace for the pry session.
  raise-up           Raise an exception out of the current pry instance.
  reset              Reset the repl to a clean state.
  watch              Watch the value of an expression and print a notification whenever it changes.
  whereami           Show code surrounding the current context.
  wtf?               Show the backtrace of the most recent exception.

[1mEditing[0m
  !                  Clear the input buffer.
  amend-line         Amend a line of input in multi-line mode.
  edit               Invoke the default editor on a file.
  hist               Show and replay readline history.
  play               Playback a string variable, method, line, or file as input.
  show-input         Show the contents of the input buffer for the current multi-line expression.

[1mIntrospection[0m
  ri                 View ri documentation.
  show-doc           Show the documentation for a method or class.
  show-source        Show the source for a method or class.
  stat               View method information and set _file_ and _dir_ locals.

[1mCommands[0m
  import-set         Import a pry command set.

[1mAliases[0m
  !!!                Alias for `exit-program`
  !!@                Alias for `exit-all`
  $                  Alias for `show-source`
  /whereami[!?]+/    Alias for `whereami`
  ?                  Alias for `show-doc`
  @                  Alias for `whereami`
  file-mode          Alias for `shell-mode`
  find-routes        Alias for `find-route`
  history            Alias for `hist`
  quit               Alias for `exit`
  quit-program       Alias for `exit-program`
  reload-method      Alias for `reload-code`
  show-method        Alias for `show-source`

[1mByebug[0m
  backtrace          Display the current stack.
  break              Set or edit a breakpoint.
  continue           Continue program execution and end the pry session.
  down               Move current frame down.
  finish             Execute until current stack frame returns.
  frame              Move to specified frame #.
  next               Execute the next line within the current stack frame.
  step               Step execution into the next line or method.
  up                 Move current frame up.

[1mInput and output[0m
  .<shell command>   All text following a '.' is forwarded to the shell.
  cat                Show code from a file, pry's input buffer, or the last exception.
  change-inspector   Change the current inspector proc.
  change-prompt      Change the current prompt.
  clear-screen       Clear the contents of the screen/window pry is running in.
  fix-indent         Correct the indentation for contents of the input buffer
  list-inspectors    List the inspector procs available for use.
  save-file          Export to a file using content from the repl.
  shell-mode         Toggle shell mode. bring in pwd prompt and file completion.

[1mMisc[0m
  pry-version        Show pry version.
  reload-code        Reload the source file that contains the specified code object.
  toggle-color       Toggle syntax highlighting.

[1mNavigating pry[0m
  !pry               Start a pry session on current self.
  disable-pry        Stops all future calls to pry and exits the current session.
  exit               Pop the previous binding.
  exit-program       End the current program.
  jump-to            Jump to a binding further up the stack.
  nesting            Show nesting information.
  switch-to          Start a new subsession on a binding in the current stack.

[1mRails[0m
  find-route         See which urls match a given controller.
  recognize-path     See which route matches a url.
  show-middleware    Show all middleware (that rails knows about).
  show-model         Show the given model.
  show-models        Show all models.
  show-routes        Show all routes in match order.

[1mPry-byebug (v3.9.0)[0m
  exit-all           End the current pry session.