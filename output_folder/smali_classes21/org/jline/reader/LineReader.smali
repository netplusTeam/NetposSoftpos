.class public interface abstract Lorg/jline/reader/LineReader;
.super Ljava/lang/Object;
.source "LineReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/reader/LineReader$SuggestionType;,
        Lorg/jline/reader/LineReader$RegionType;,
        Lorg/jline/reader/LineReader$Option;
    }
.end annotation


# static fields
.field public static final ACCEPT_AND_HOLD:Ljava/lang/String; = "accept-and-hold"

.field public static final ACCEPT_AND_INFER_NEXT_HISTORY:Ljava/lang/String; = "accept-and-infer-next-history"

.field public static final ACCEPT_LINE:Ljava/lang/String; = "accept-line"

.field public static final ACCEPT_LINE_AND_DOWN_HISTORY:Ljava/lang/String; = "accept-line-and-down-history"

.field public static final AMBIGUOUS_BINDING:Ljava/lang/String; = "ambiguous-binding"

.field public static final ARGUMENT_BASE:Ljava/lang/String; = "argument-base"

.field public static final BACKWARD_CHAR:Ljava/lang/String; = "backward-char"

.field public static final BACKWARD_DELETE_CHAR:Ljava/lang/String; = "backward-delete-char"

.field public static final BACKWARD_DELETE_WORD:Ljava/lang/String; = "backward-delete-word"

.field public static final BACKWARD_KILL_LINE:Ljava/lang/String; = "backward-kill-line"

.field public static final BACKWARD_KILL_WORD:Ljava/lang/String; = "backward-kill-word"

.field public static final BACKWARD_WORD:Ljava/lang/String; = "backward-word"

.field public static final BEEP:Ljava/lang/String; = "beep"

.field public static final BEGINNING_OF_BUFFER_OR_HISTORY:Ljava/lang/String; = "beginning-of-buffer-or-history"

.field public static final BEGINNING_OF_HISTORY:Ljava/lang/String; = "beginning-of-history"

.field public static final BEGINNING_OF_LINE:Ljava/lang/String; = "beginning-of-line"

.field public static final BEGINNING_OF_LINE_HIST:Ljava/lang/String; = "beginning-of-line-hist"

.field public static final BEGIN_PASTE:Ljava/lang/String; = "begin-paste"

.field public static final BELL_STYLE:Ljava/lang/String; = "bell-style"

.field public static final BIND_TTY_SPECIAL_CHARS:Ljava/lang/String; = "bind-tty-special-chars"

.field public static final BLINK_MATCHING_PAREN:Ljava/lang/String; = "blink-matching-paren"

.field public static final CALLBACK_FINISH:Ljava/lang/String; = "callback-finish"

.field public static final CALLBACK_INIT:Ljava/lang/String; = "callback-init"

.field public static final CALLBACK_KEYMAP:Ljava/lang/String; = "callback-keymap"

.field public static final CAPITALIZE_WORD:Ljava/lang/String; = "capitalize-word"

.field public static final CHARACTER_SEARCH:Ljava/lang/String; = "character-search"

.field public static final CHARACTER_SEARCH_BACKWARD:Ljava/lang/String; = "character-search-backward"

.field public static final CLEAR:Ljava/lang/String; = "clear"

.field public static final CLEAR_SCREEN:Ljava/lang/String; = "clear-screen"

.field public static final COMMENT_BEGIN:Ljava/lang/String; = "comment-begin"

.field public static final COMPLETE_PREFIX:Ljava/lang/String; = "complete-prefix"

.field public static final COMPLETE_WORD:Ljava/lang/String; = "complete-word"

.field public static final COMPLETION_STYLE_BACKGROUND:Ljava/lang/String; = "COMPLETION_STYLE_BACKGROUND"

.field public static final COMPLETION_STYLE_DESCRIPTION:Ljava/lang/String; = "COMPLETION_STYLE_DESCRIPTION"

.field public static final COMPLETION_STYLE_GROUP:Ljava/lang/String; = "COMPLETION_STYLE_GROUP"

.field public static final COMPLETION_STYLE_LIST_BACKGROUND:Ljava/lang/String; = "COMPLETION_STYLE_LIST_BACKGROUND"

.field public static final COMPLETION_STYLE_LIST_DESCRIPTION:Ljava/lang/String; = "COMPLETION_STYLE_LIST_DESCRIPTION"

.field public static final COMPLETION_STYLE_LIST_GROUP:Ljava/lang/String; = "COMPLETION_STYLE_LIST_GROUP"

.field public static final COMPLETION_STYLE_LIST_SELECTION:Ljava/lang/String; = "COMPLETION_STYLE_LIST_SELECTION"

.field public static final COMPLETION_STYLE_LIST_STARTING:Ljava/lang/String; = "COMPLETION_STYLE_LIST_STARTING"

.field public static final COMPLETION_STYLE_SELECTION:Ljava/lang/String; = "COMPLETION_STYLE_SELECTION"

.field public static final COMPLETION_STYLE_STARTING:Ljava/lang/String; = "COMPLETION_STYLE_STARTING"

.field public static final COPY_PREV_WORD:Ljava/lang/String; = "copy-prev-word"

.field public static final COPY_REGION_AS_KILL:Ljava/lang/String; = "copy-region-as-kill"

.field public static final DELETE_CHAR:Ljava/lang/String; = "delete-char"

.field public static final DELETE_CHAR_OR_LIST:Ljava/lang/String; = "delete-char-or-list"

.field public static final DELETE_WORD:Ljava/lang/String; = "delete-word"

.field public static final DIGIT_ARGUMENT:Ljava/lang/String; = "digit-argument"

.field public static final DISABLE_COMPLETION:Ljava/lang/String; = "disable-completion"

.field public static final DISABLE_HISTORY:Ljava/lang/String; = "disable-history"

.field public static final DOWN_CASE_WORD:Ljava/lang/String; = "down-case-word"

.field public static final DOWN_HISTORY:Ljava/lang/String; = "down-history"

.field public static final DOWN_LINE:Ljava/lang/String; = "down-line"

.field public static final DOWN_LINE_OR_HISTORY:Ljava/lang/String; = "down-line-or-history"

.field public static final DOWN_LINE_OR_SEARCH:Ljava/lang/String; = "down-line-or-search"

.field public static final DO_LOWERCASE_VERSION:Ljava/lang/String; = "do-lowercase-version"

.field public static final EDITING_MODE:Ljava/lang/String; = "editing-mode"

.field public static final EDIT_AND_EXECUTE_COMMAND:Ljava/lang/String; = "edit-and-execute-command"

.field public static final EMACS:Ljava/lang/String; = "emacs"

.field public static final EMACS_BACKWARD_WORD:Ljava/lang/String; = "emacs-backward-word"

.field public static final EMACS_EDITING_MODE:Ljava/lang/String; = "emacs-editing-mode"

.field public static final EMACS_FORWARD_WORD:Ljava/lang/String; = "emacs-forward-word"

.field public static final END_OF_BUFFER_OR_HISTORY:Ljava/lang/String; = "end-of-buffer-or-history"

.field public static final END_OF_HISTORY:Ljava/lang/String; = "end-of-history"

.field public static final END_OF_LINE:Ljava/lang/String; = "end-of-line"

.field public static final END_OF_LINE_HIST:Ljava/lang/String; = "end-of-line-hist"

.field public static final ERRORS:Ljava/lang/String; = "errors"

.field public static final EXCHANGE_POINT_AND_MARK:Ljava/lang/String; = "exchange-point-and-mark"

.field public static final EXECUTE_NAMED_CMD:Ljava/lang/String; = "execute-named-cmd"

.field public static final EXPAND_HISTORY:Ljava/lang/String; = "expand-history"

.field public static final EXPAND_OR_COMPLETE:Ljava/lang/String; = "expand-or-complete"

.field public static final EXPAND_OR_COMPLETE_PREFIX:Ljava/lang/String; = "expand-or-complete-prefix"

.field public static final EXPAND_WORD:Ljava/lang/String; = "expand-word"

.field public static final FEATURES_MAX_BUFFER_SIZE:Ljava/lang/String; = "features-max-buffer-size"

.field public static final FOCUS_IN:Ljava/lang/String; = "terminal-focus-in"

.field public static final FOCUS_OUT:Ljava/lang/String; = "terminal-focus-out"

.field public static final FORWARD_CHAR:Ljava/lang/String; = "forward-char"

.field public static final FORWARD_WORD:Ljava/lang/String; = "forward-word"

.field public static final FRESH_LINE:Ljava/lang/String; = "fresh-line"

.field public static final HISTORY_BEGINNING_SEARCH_BACKWARD:Ljava/lang/String; = "history-beginning-search-backward"

.field public static final HISTORY_BEGINNING_SEARCH_FORWARD:Ljava/lang/String; = "history-beginning-search-forward"

.field public static final HISTORY_FILE:Ljava/lang/String; = "history-file"

.field public static final HISTORY_FILE_SIZE:Ljava/lang/String; = "history-file-size"

.field public static final HISTORY_IGNORE:Ljava/lang/String; = "history-ignore"

.field public static final HISTORY_INCREMENTAL_PATTERN_SEARCH_BACKWARD:Ljava/lang/String; = "history-incremental-pattern-search-backward"

.field public static final HISTORY_INCREMENTAL_PATTERN_SEARCH_FORWARD:Ljava/lang/String; = "history-incremental-pattern-search-forward"

.field public static final HISTORY_INCREMENTAL_SEARCH_BACKWARD:Ljava/lang/String; = "history-incremental-search-backward"

.field public static final HISTORY_INCREMENTAL_SEARCH_FORWARD:Ljava/lang/String; = "history-incremental-search-forward"

.field public static final HISTORY_SEARCH_BACKWARD:Ljava/lang/String; = "history-search-backward"

.field public static final HISTORY_SEARCH_FORWARD:Ljava/lang/String; = "history-search-forward"

.field public static final HISTORY_SIZE:Ljava/lang/String; = "history-size"

.field public static final INDENTATION:Ljava/lang/String; = "indentation"

.field public static final INFER_NEXT_HISTORY:Ljava/lang/String; = "infer-next-history"

.field public static final INSERT_CLOSE_CURLY:Ljava/lang/String; = "insert-close-curly"

.field public static final INSERT_CLOSE_PAREN:Ljava/lang/String; = "insert-close-paren"

.field public static final INSERT_CLOSE_SQUARE:Ljava/lang/String; = "insert-close-square"

.field public static final INSERT_COMMENT:Ljava/lang/String; = "insert-comment"

.field public static final INSERT_LAST_WORD:Ljava/lang/String; = "insert-last-word"

.field public static final KEYMAP:Ljava/lang/String; = "keymap"

.field public static final KILL_BUFFER:Ljava/lang/String; = "kill-buffer"

.field public static final KILL_LINE:Ljava/lang/String; = "kill-line"

.field public static final KILL_REGION:Ljava/lang/String; = "kill-region"

.field public static final KILL_WHOLE_LINE:Ljava/lang/String; = "kill-whole-line"

.field public static final KILL_WORD:Ljava/lang/String; = "kill-word"

.field public static final LINE_OFFSET:Ljava/lang/String; = "line-offset"

.field public static final LIST_CHOICES:Ljava/lang/String; = "list-choices"

.field public static final LIST_EXPAND:Ljava/lang/String; = "list-expand"

.field public static final LIST_MAX:Ljava/lang/String; = "list-max"

.field public static final MAGIC_SPACE:Ljava/lang/String; = "magic-space"

.field public static final MAIN:Ljava/lang/String; = "main"

.field public static final MENU:Ljava/lang/String; = "menu"

.field public static final MENU_COMPLETE:Ljava/lang/String; = "menu-complete"

.field public static final MENU_EXPAND_OR_COMPLETE:Ljava/lang/String; = "menu-expand-or-complete"

.field public static final MENU_LIST_MAX:Ljava/lang/String; = "menu-list-max"

.field public static final MENU_SELECT:Ljava/lang/String; = "menu-select"

.field public static final MOUSE:Ljava/lang/String; = "mouse"

.field public static final NEG_ARGUMENT:Ljava/lang/String; = "neg-argument"

.field public static final ORIGINAL_GROUP_NAME:Ljava/lang/String; = "ORIGINAL_GROUP_NAME"

.field public static final OTHERS_GROUP_NAME:Ljava/lang/String; = "OTHERS_GROUP_NAME"

.field public static final OVERWRITE_MODE:Ljava/lang/String; = "overwrite-mode"

.field public static final PREFER_VISIBLE_BELL:Ljava/lang/String; = "prefer-visible-bell"

.field public static final PROP_SUPPORT_PARSEDLINE:Ljava/lang/String; = "org.jline.reader.support.parsedline"

.field public static final PUT_REPLACE_SELECTION:Ljava/lang/String; = "put-replace-selection"

.field public static final QUOTED_INSERT:Ljava/lang/String; = "quoted-insert"

.field public static final READ_COMMAND:Ljava/lang/String; = "read-command"

.field public static final RECURSIVE_EDIT:Ljava/lang/String; = "recursive-edit"

.field public static final REDISPLAY:Ljava/lang/String; = "redisplay"

.field public static final REDO:Ljava/lang/String; = "redo"

.field public static final REDRAW_LINE:Ljava/lang/String; = "redraw-line"

.field public static final REMOVE_SUFFIX_CHARS:Ljava/lang/String; = "REMOVE_SUFFIX_CHARS"

.field public static final REVERSE_MENU_COMPLETE:Ljava/lang/String; = "reverse-menu-complete"

.field public static final SAFE:Ljava/lang/String; = ".safe"

.field public static final SEARCH_TERMINATORS:Ljava/lang/String; = "search-terminators"

.field public static final SECONDARY_PROMPT_PATTERN:Ljava/lang/String; = "secondary-prompt-pattern"

.field public static final SELF_INSERT:Ljava/lang/String; = "self-insert"

.field public static final SELF_INSERT_UNMETA:Ljava/lang/String; = "self-insert-unmeta"

.field public static final SEND_BREAK:Ljava/lang/String; = "abort"

.field public static final SET_LOCAL_HISTORY:Ljava/lang/String; = "set-local-history"

.field public static final SET_MARK_COMMAND:Ljava/lang/String; = "set-mark-command"

.field public static final SPELL_WORD:Ljava/lang/String; = "spell-word"

.field public static final SPLIT_UNDO:Ljava/lang/String; = "split-undo"

.field public static final SUGGESTIONS_MIN_BUFFER_SIZE:Ljava/lang/String; = "suggestions-min-buffer-size"

.field public static final TRANSPOSE_CHARS:Ljava/lang/String; = "transpose-chars"

.field public static final TRANSPOSE_WORDS:Ljava/lang/String; = "transpose-words"

.field public static final UNDEFINED_KEY:Ljava/lang/String; = "undefined-key"

.field public static final UNDO:Ljava/lang/String; = "undo"

.field public static final UNIVERSAL_ARGUMENT:Ljava/lang/String; = "universal-argument"

.field public static final UP_CASE_WORD:Ljava/lang/String; = "up-case-word"

.field public static final UP_HISTORY:Ljava/lang/String; = "up-history"

.field public static final UP_LINE:Ljava/lang/String; = "up-line"

.field public static final UP_LINE_OR_HISTORY:Ljava/lang/String; = "up-line-or-history"

.field public static final UP_LINE_OR_SEARCH:Ljava/lang/String; = "up-line-or-search"

.field public static final VICMD:Ljava/lang/String; = "vicmd"

.field public static final VIINS:Ljava/lang/String; = "viins"

.field public static final VIOPP:Ljava/lang/String; = "viopp"

.field public static final VISUAL:Ljava/lang/String; = "visual"

.field public static final VISUAL_LINE_MODE:Ljava/lang/String; = "visual-line-mode"

.field public static final VISUAL_MODE:Ljava/lang/String; = "visual-mode"

.field public static final VI_ADD_EOL:Ljava/lang/String; = "vi-add-eol"

.field public static final VI_ADD_NEXT:Ljava/lang/String; = "vi-add-next"

.field public static final VI_BACKWARD_BLANK_WORD:Ljava/lang/String; = "vi-backward-blank-word"

.field public static final VI_BACKWARD_BLANK_WORD_END:Ljava/lang/String; = "vi-backward-blank-word-end"

.field public static final VI_BACKWARD_CHAR:Ljava/lang/String; = "vi-backward-char"

.field public static final VI_BACKWARD_DELETE_CHAR:Ljava/lang/String; = "vi-backward-delete-char"

.field public static final VI_BACKWARD_KILL_WORD:Ljava/lang/String; = "vi-backward-kill-word"

.field public static final VI_BACKWARD_WORD:Ljava/lang/String; = "vi-backward-word"

.field public static final VI_BACKWARD_WORD_END:Ljava/lang/String; = "vi-backward-word-end"

.field public static final VI_BEGINNING_OF_LINE:Ljava/lang/String; = "vi-beginning-of-line"

.field public static final VI_CHANGE:Ljava/lang/String; = "vi-change-to"

.field public static final VI_CHANGE_EOL:Ljava/lang/String; = "vi-change-eol"

.field public static final VI_CHANGE_WHOLE_LINE:Ljava/lang/String; = "vi-change-whole-line"

.field public static final VI_CMD_MODE:Ljava/lang/String; = "vi-cmd-mode"

.field public static final VI_DELETE:Ljava/lang/String; = "vi-delete"

.field public static final VI_DELETE_CHAR:Ljava/lang/String; = "vi-delete-char"

.field public static final VI_DIGIT_OR_BEGINNING_OF_LINE:Ljava/lang/String; = "vi-digit-or-beginning-of-line"

.field public static final VI_DOWN_LINE_OR_HISTORY:Ljava/lang/String; = "vi-down-line-or-history"

.field public static final VI_END_OF_LINE:Ljava/lang/String; = "vi-end-of-line"

.field public static final VI_FETCH_HISTORY:Ljava/lang/String; = "vi-fetch-history"

.field public static final VI_FIND_NEXT_CHAR:Ljava/lang/String; = "vi-find-next-char"

.field public static final VI_FIND_NEXT_CHAR_SKIP:Ljava/lang/String; = "vi-find-next-char-skip"

.field public static final VI_FIND_PREV_CHAR:Ljava/lang/String; = "vi-find-prev-char"

.field public static final VI_FIND_PREV_CHAR_SKIP:Ljava/lang/String; = "vi-find-prev-char-skip"

.field public static final VI_FIRST_NON_BLANK:Ljava/lang/String; = "vi-first-non-blank"

.field public static final VI_FORWARD_BLANK_WORD:Ljava/lang/String; = "vi-forward-blank-word"

.field public static final VI_FORWARD_BLANK_WORD_END:Ljava/lang/String; = "vi-forward-blank-word-end"

.field public static final VI_FORWARD_CHAR:Ljava/lang/String; = "vi-forward-char"

.field public static final VI_FORWARD_WORD:Ljava/lang/String; = "vi-forward-word"

.field public static final VI_FORWARD_WORD_END:Ljava/lang/String; = "vi-forward-word-end"

.field public static final VI_GOTO_COLUMN:Ljava/lang/String; = "vi-goto-column"

.field public static final VI_HISTORY_SEARCH_BACKWARD:Ljava/lang/String; = "vi-history-search-backward"

.field public static final VI_HISTORY_SEARCH_FORWARD:Ljava/lang/String; = "vi-history-search-forward"

.field public static final VI_INSERT:Ljava/lang/String; = "vi-insert"

.field public static final VI_INSERT_BOL:Ljava/lang/String; = "vi-insert-bol"

.field public static final VI_INSERT_COMMENT:Ljava/lang/String; = "vi-insert-comment"

.field public static final VI_JOIN:Ljava/lang/String; = "vi-join"

.field public static final VI_KILL_EOL:Ljava/lang/String; = "vi-kill-eol"

.field public static final VI_KILL_LINE:Ljava/lang/String; = "vi-kill-line"

.field public static final VI_MATCH_BRACKET:Ljava/lang/String; = "vi-match-bracket"

.field public static final VI_OPEN_LINE_ABOVE:Ljava/lang/String; = "vi-open-line-above"

.field public static final VI_OPEN_LINE_BELOW:Ljava/lang/String; = "vi-open-line-below"

.field public static final VI_OPER_SWAP_CASE:Ljava/lang/String; = "vi-oper-swap-case"

.field public static final VI_PUT_AFTER:Ljava/lang/String; = "vi-put-after"

.field public static final VI_PUT_BEFORE:Ljava/lang/String; = "vi-put-before"

.field public static final VI_QUOTED_INSERT:Ljava/lang/String; = "vi-quoted-insert"

.field public static final VI_REPEAT_CHANGE:Ljava/lang/String; = "vi-repeat-change"

.field public static final VI_REPEAT_FIND:Ljava/lang/String; = "vi-repeat-find"

.field public static final VI_REPEAT_SEARCH:Ljava/lang/String; = "vi-repeat-search"

.field public static final VI_REPLACE:Ljava/lang/String; = "vi-replace"

.field public static final VI_REPLACE_CHARS:Ljava/lang/String; = "vi-replace-chars"

.field public static final VI_REV_REPEAT_FIND:Ljava/lang/String; = "vi-rev-repeat-find"

.field public static final VI_REV_REPEAT_SEARCH:Ljava/lang/String; = "vi-rev-repeat-search"

.field public static final VI_SET_BUFFER:Ljava/lang/String; = "vi-set-buffer"

.field public static final VI_SUBSTITUTE:Ljava/lang/String; = "vi-substitute"

.field public static final VI_SWAP_CASE:Ljava/lang/String; = "vi-swap-case"

.field public static final VI_UNDO_CHANGE:Ljava/lang/String; = "vi-undo-change"

.field public static final VI_UP_LINE_OR_HISTORY:Ljava/lang/String; = "vi-up-line-or-history"

.field public static final VI_YANK:Ljava/lang/String; = "vi-yank"

.field public static final VI_YANK_EOL:Ljava/lang/String; = "vi-yank-eol"

.field public static final VI_YANK_WHOLE_LINE:Ljava/lang/String; = "vi-yank-whole-line"

.field public static final WHAT_CURSOR_POSITION:Ljava/lang/String; = "what-cursor-position"

.field public static final WORDCHARS:Ljava/lang/String; = "WORDCHARS"

.field public static final YANK:Ljava/lang/String; = "yank"

.field public static final YANK_POP:Ljava/lang/String; = "yank-pop"


# virtual methods
.method public abstract addCommandsInBuffer(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract callWidget(Ljava/lang/String;)V
.end method

.method public abstract defaultKeyMaps()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract editAndAddInBuffer(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getAutosuggestion()Lorg/jline/reader/LineReader$SuggestionType;
.end method

.method public abstract getBuffer()Lorg/jline/reader/Buffer;
.end method

.method public abstract getBuiltinWidgets()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExpander()Lorg/jline/reader/Expander;
.end method

.method public abstract getHighlighter()Lorg/jline/reader/Highlighter;
.end method

.method public abstract getHistory()Lorg/jline/reader/History;
.end method

.method public abstract getKeyMap()Ljava/lang/String;
.end method

.method public abstract getKeyMaps()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getKeys()Lorg/jline/keymap/KeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastBinding()Ljava/lang/String;
.end method

.method public abstract getParsedLine()Lorg/jline/reader/ParsedLine;
.end method

.method public abstract getParser()Lorg/jline/reader/Parser;
.end method

.method public abstract getRegionActive()Lorg/jline/reader/LineReader$RegionType;
.end method

.method public abstract getRegionMark()I
.end method

.method public abstract getSearchTerm()Ljava/lang/String;
.end method

.method public abstract getTailTip()Ljava/lang/String;
.end method

.method public abstract getTerminal()Lorg/jline/terminal/Terminal;
.end method

.method public abstract getVariable(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getVariables()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidgets()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isReading()Z
.end method

.method public abstract isSet(Lorg/jline/reader/LineReader$Option;)Z
.end method

.method public abstract option(Lorg/jline/reader/LineReader$Option;Z)Lorg/jline/reader/LineReader;
.end method

.method public abstract printAbove(Ljava/lang/String;)V
.end method

.method public abstract printAbove(Lorg/jline/utils/AttributedString;)V
.end method

.method public abstract readLine()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation
.end method

.method public abstract readLine(Ljava/lang/Character;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation
.end method

.method public abstract readLine(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation
.end method

.method public abstract readLine(Ljava/lang/String;Ljava/lang/Character;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation
.end method

.method public abstract readLine(Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation
.end method

.method public abstract readLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation
.end method

.method public abstract readLine(Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/MaskingCallback;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation
.end method

.method public abstract readMouseEvent()Lorg/jline/terminal/MouseEvent;
.end method

.method public abstract runMacro(Ljava/lang/String;)V
.end method

.method public abstract setAutosuggestion(Lorg/jline/reader/LineReader$SuggestionType;)V
.end method

.method public abstract setKeyMap(Ljava/lang/String;)Z
.end method

.method public abstract setOpt(Lorg/jline/reader/LineReader$Option;)V
.end method

.method public abstract setTailTip(Ljava/lang/String;)V
.end method

.method public abstract setVariable(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract unsetOpt(Lorg/jline/reader/LineReader$Option;)V
.end method

.method public abstract variable(Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/reader/LineReader;
.end method
