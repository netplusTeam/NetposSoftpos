.class public Lorg/jline/reader/impl/LineReaderImpl;
.super Ljava/lang/Object;
.source "LineReaderImpl.java"

# interfaces
.implements Lorg/jline/reader/LineReader;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;,
        Lorg/jline/reader/impl/LineReaderImpl$PostResult;,
        Lorg/jline/reader/impl/LineReaderImpl$CompletingWord;,
        Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;,
        Lorg/jline/reader/impl/LineReaderImpl$CompletionType;,
        Lorg/jline/reader/impl/LineReaderImpl$Pair;,
        Lorg/jline/reader/impl/LineReaderImpl$BellType;,
        Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;,
        Lorg/jline/reader/impl/LineReaderImpl$State;
    }
.end annotation


# static fields
.field public static final BRACKETED_PASTE_BEGIN:Ljava/lang/String; = "\u001b[200~"

.field public static final BRACKETED_PASTE_END:Ljava/lang/String; = "\u001b[201~"

.field public static final BRACKETED_PASTE_OFF:Ljava/lang/String; = "\u001b[?2004l"

.field public static final BRACKETED_PASTE_ON:Ljava/lang/String; = "\u001b[?2004h"

.field public static final DEFAULT_AMBIGUOUS_BINDING:J = 0x3e8L

.field public static final DEFAULT_BELL_STYLE:Ljava/lang/String; = ""

.field public static final DEFAULT_BLINK_MATCHING_PAREN:J = 0x1f4L

.field public static final DEFAULT_COMMENT_BEGIN:Ljava/lang/String; = "#"

.field public static final DEFAULT_COMPLETION_STYLE_BACKGROUND:Ljava/lang/String; = "bg:default"

.field public static final DEFAULT_COMPLETION_STYLE_DESCRIPTION:Ljava/lang/String; = "fg:bright-black"

.field public static final DEFAULT_COMPLETION_STYLE_GROUP:Ljava/lang/String; = "fg:bright-magenta,bold"

.field public static final DEFAULT_COMPLETION_STYLE_LIST_BACKGROUND:Ljava/lang/String; = "bg:bright-magenta"

.field public static final DEFAULT_COMPLETION_STYLE_LIST_DESCRIPTION:Ljava/lang/String; = "fg:bright-black"

.field public static final DEFAULT_COMPLETION_STYLE_LIST_GROUP:Ljava/lang/String; = "fg:black,bold"

.field public static final DEFAULT_COMPLETION_STYLE_LIST_SELECTION:Ljava/lang/String; = "inverse"

.field public static final DEFAULT_COMPLETION_STYLE_LIST_STARTING:Ljava/lang/String; = "fg:cyan"

.field public static final DEFAULT_COMPLETION_STYLE_SELECTION:Ljava/lang/String; = "inverse"

.field public static final DEFAULT_COMPLETION_STYLE_STARTING:Ljava/lang/String; = "fg:cyan"

.field public static final DEFAULT_ERRORS:I = 0x2

.field public static final DEFAULT_FEATURES_MAX_BUFFER_SIZE:I = 0x3e8

.field public static final DEFAULT_INDENTATION:I = 0x0

.field public static final DEFAULT_LIST_MAX:I = 0x64

.field public static final DEFAULT_MENU_LIST_MAX:I = 0x7fffffff

.field public static final DEFAULT_ORIGINAL_GROUP_NAME:Ljava/lang/String; = "original"

.field public static final DEFAULT_OTHERS_GROUP_NAME:Ljava/lang/String; = "others"

.field public static final DEFAULT_REMOVE_SUFFIX_CHARS:Ljava/lang/String; = " \t\n;&|"

.field public static final DEFAULT_SEARCH_TERMINATORS:Ljava/lang/String; = "\u001b\n"

.field public static final DEFAULT_SECONDARY_PROMPT_PATTERN:Ljava/lang/String; = "%M> "

.field public static final DEFAULT_SUGGESTIONS_MIN_BUFFER_SIZE:I = 0x1

.field public static final DEFAULT_WORDCHARS:Ljava/lang/String; = "*?_-.[]~=/&;!#$%^(){}<>"

.field private static final DESC_PREFIX:Ljava/lang/String; = "("

.field private static final DESC_SUFFIX:Ljava/lang/String; = ")"

.field public static final FOCUS_IN_SEQ:Ljava/lang/String; = "\u001b[I"

.field public static final FOCUS_OUT_SEQ:Ljava/lang/String; = "\u001b[O"

.field private static final MARGIN_BETWEEN_COLUMNS:I = 0x3

.field private static final MARGIN_BETWEEN_DISPLAY_AND_DESC:I = 0x1

.field private static final MENU_LIST_WIDTH:I = 0x19

.field private static final MIN_ROWS:I = 0x3

.field public static final NULL_MASK:C = '\u0000'

.field public static final TAB_WIDTH:I = 0x4


# instance fields
.field protected final appName:Ljava/lang/String;

.field protected autosuggestion:Lorg/jline/reader/LineReader$SuggestionType;

.field protected final bindingReader:Lorg/jline/keymap/BindingReader;

.field protected final buf:Lorg/jline/reader/Buffer;

.field protected builtinWidgets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;"
        }
    .end annotation
.end field

.field candidateStartPosition:I

.field protected commandsBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected completer:Lorg/jline/reader/Completer;

.field protected completionMatcher:Lorg/jline/reader/CompletionMatcher;

.field protected count:I

.field protected display:Lorg/jline/utils/Display;

.field protected doAutosuggestion:Z

.field protected expander:Lorg/jline/reader/Expander;

.field protected findChar:I

.field protected findDir:I

.field protected findTailAdd:I

.field private forceChar:Z

.field private forceLine:Z

.field protected highlighter:Lorg/jline/reader/Highlighter;

.field protected history:Lorg/jline/reader/History;

.field protected historyBuffer:Lorg/jline/reader/Buffer;

.field protected isArgDigit:Z

.field protected isUndo:Z

.field protected keyMap:Ljava/lang/String;

.field protected final keyMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;>;"
        }
    .end annotation
.end field

.field protected killRing:Lorg/jline/reader/impl/KillRing;

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected maskingCallback:Lorg/jline/reader/MaskingCallback;

.field protected modifiedHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mult:I

.field protected nextCommandFromHistory:Z

.field protected nextHistoryId:I

.field protected final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jline/reader/LineReader$Option;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected overTyping:Z

.field protected parsedLine:Lorg/jline/reader/ParsedLine;

.field protected parser:Lorg/jline/reader/Parser;

.field protected post:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation
.end field

.field protected prompt:Lorg/jline/utils/AttributedString;

.field protected reading:Z

.field protected regionActive:Lorg/jline/reader/LineReader$RegionType;

.field protected regionMark:I

.field protected repeatCount:I

.field protected rightPrompt:Lorg/jline/utils/AttributedString;

.field protected searchBackward:Z

.field protected searchBuffer:Ljava/lang/CharSequence;

.field private searchDir:I

.field protected searchFailing:Z

.field protected searchIndex:I

.field private searchString:Ljava/lang/String;

.field protected searchTerm:Ljava/lang/StringBuffer;

.field protected final size:Lorg/jline/terminal/Size;

.field protected skipRedisplay:Z

.field protected smallTerminalOffset:I

.field protected final startedReading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected state:Lorg/jline/reader/impl/LineReaderImpl$State;

.field protected tailTip:Ljava/lang/String;

.field protected final terminal:Lorg/jline/terminal/Terminal;

.field protected undo:Lorg/jline/reader/impl/UndoTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jline/reader/impl/UndoTree<",
            "Lorg/jline/reader/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field protected universal:I

.field protected final variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected viMoveMode:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

.field protected widgets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;"
        }
    .end annotation
.end field

.field protected yankBuffer:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2OfCv1b0WmzNKNpya5EgKSdIz8U(Lorg/jline/reader/impl/LineReaderImpl;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;)V
    .locals 1
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/jline/reader/impl/LineReaderImpl;-><init>(Lorg/jline/terminal/Terminal;Ljava/lang/String;Ljava/util/Map;)V

    .line 285
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/lang/String;)V
    .locals 1
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/reader/impl/LineReaderImpl;-><init>(Lorg/jline/terminal/Terminal;Ljava/lang/String;Ljava/util/Map;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/terminal/Terminal;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 291
    .local p3, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lorg/jline/reader/impl/history/DefaultHistory;

    invoke-direct {v0}, Lorg/jline/reader/impl/history/DefaultHistory;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->completer:Lorg/jline/reader/Completer;

    .line 169
    new-instance v1, Lorg/jline/reader/impl/DefaultHighlighter;

    invoke-direct {v1}, Lorg/jline/reader/impl/DefaultHighlighter;-><init>()V

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->highlighter:Lorg/jline/reader/Highlighter;

    .line 170
    new-instance v1, Lorg/jline/reader/impl/DefaultParser;

    invoke-direct {v1}, Lorg/jline/reader/impl/DefaultParser;-><init>()V

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->parser:Lorg/jline/reader/Parser;

    .line 171
    new-instance v1, Lorg/jline/reader/impl/DefaultExpander;

    invoke-direct {v1}, Lorg/jline/reader/impl/DefaultExpander;-><init>()V

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->expander:Lorg/jline/reader/Expander;

    .line 172
    new-instance v1, Lorg/jline/reader/impl/CompletionMatcherImpl;

    invoke-direct {v1}, Lorg/jline/reader/impl/CompletionMatcherImpl;-><init>()V

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->completionMatcher:Lorg/jline/reader/CompletionMatcher;

    .line 178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->options:Ljava/util/Map;

    .line 180
    new-instance v1, Lorg/jline/reader/impl/BufferImpl;

    invoke-direct {v1}, Lorg/jline/reader/impl/BufferImpl;-><init>()V

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 181
    const-string v1, ""

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->tailTip:Ljava/lang/String;

    .line 182
    sget-object v2, Lorg/jline/reader/LineReader$SuggestionType;->NONE:Lorg/jline/reader/LineReader$SuggestionType;

    iput-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->autosuggestion:Lorg/jline/reader/LineReader$SuggestionType;

    .line 184
    new-instance v2, Lorg/jline/terminal/Size;

    invoke-direct {v2}, Lorg/jline/terminal/Size;-><init>()V

    iput-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    .line 186
    sget-object v2, Lorg/jline/utils/AttributedString;->EMPTY:Lorg/jline/utils/AttributedString;

    iput-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    .line 187
    sget-object v2, Lorg/jline/utils/AttributedString;->EMPTY:Lorg/jline/utils/AttributedString;

    iput-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->rightPrompt:Lorg/jline/utils/AttributedString;

    .line 191
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->modifiedHistory:Ljava/util/Map;

    .line 192
    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->historyBuffer:Lorg/jline/reader/Buffer;

    .line 194
    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    .line 229
    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    .line 231
    sget-object v1, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->NORMAL:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->viMoveMode:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 233
    new-instance v1, Lorg/jline/reader/impl/KillRing;

    invoke-direct {v1}, Lorg/jline/reader/impl/KillRing;-><init>()V

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    .line 235
    new-instance v1, Lorg/jline/reader/impl/UndoTree;

    new-instance v2, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda91;

    invoke-direct {v2, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda91;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {v1, v2}, Lorg/jline/reader/impl/UndoTree;-><init>(Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->undo:Lorg/jline/reader/impl/UndoTree;

    .line 241
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 245
    sget-object v1, Lorg/jline/reader/impl/LineReaderImpl$State;->DONE:Lorg/jline/reader/impl/LineReaderImpl$State;

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->state:Lorg/jline/reader/impl/LineReaderImpl$State;

    .line 246
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->startedReading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 256
    const/4 v1, 0x4

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->universal:I

    .line 265
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->overTyping:Z

    .line 269
    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->smallTerminalOffset:I

    .line 273
    iput-boolean v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextCommandFromHistory:Z

    .line 274
    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextHistoryId:I

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->commandsBuffer:Ljava/util/List;

    .line 281
    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->candidateStartPosition:I

    .line 292
    const-string v0, "terminal can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    .line 294
    if-nez p2, :cond_0

    .line 295
    const-string p2, "JLine"

    .line 297
    :cond_0
    iput-object p2, p0, Lorg/jline/reader/impl/LineReaderImpl;->appName:Ljava/lang/String;

    .line 298
    if-eqz p3, :cond_1

    .line 299
    iput-object p3, p0, Lorg/jline/reader/impl/LineReaderImpl;->variables:Ljava/util/Map;

    goto :goto_0

    .line 301
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->variables:Ljava/util/Map;

    .line 303
    :goto_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->defaultKeyMaps()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMaps:Ljava/util/Map;

    .line 305
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->builtinWidgets()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->builtinWidgets:Ljava/util/Map;

    .line 306
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->builtinWidgets:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->widgets:Ljava/util/Map;

    .line 307
    new-instance v0, Lorg/jline/keymap/BindingReader;

    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->reader()Lorg/jline/utils/NonBlockingReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/keymap/BindingReader;-><init>(Lorg/jline/utils/NonBlockingReader;)V

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    .line 308
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->doDisplay()V

    .line 309
    return-void
.end method

.method static synthetic access$000(Lorg/jline/reader/impl/LineReaderImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/jline/reader/impl/LineReaderImpl;

    .line 69
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->displayRows()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/jline/reader/impl/LineReaderImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/jline/reader/impl/LineReaderImpl;

    .line 69
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->promptLines()I

    move-result v0

    return v0
.end method

.method private addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "widget"    # Lorg/jline/reader/Widget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ")V"
        }
    .end annotation

    .line 3798
    .local p1, "widgets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Widget;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/jline/reader/impl/LineReaderImpl;->namedWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)Lorg/jline/reader/Widget;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3799
    return-void
.end method

.method private addRightPrompt(Lorg/jline/utils/AttributedString;Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedString;
    .locals 8
    .param p1, "prompt"    # Lorg/jline/utils/AttributedString;
    .param p2, "line"    # Lorg/jline/utils/AttributedString;

    .line 4255
    invoke-virtual {p1}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v0

    .line 4256
    .local v0, "width":I
    invoke-virtual {p2}, Lorg/jline/utils/AttributedString;->length()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_0

    .line 4257
    invoke-virtual {p2}, Lorg/jline/utils/AttributedString;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p2, v1}, Lorg/jline/utils/AttributedString;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 4259
    .local v1, "endsWithNl":Z
    :goto_0
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v5}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v5

    sub-int/2addr v5, v0

    .line 4260
    invoke-virtual {p2}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v6

    if-eqz v1, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 4261
    .local v5, "nb":I
    const/4 v6, 0x3

    if-lt v5, v6, :cond_5

    .line 4262
    new-instance v6, Lorg/jline/utils/AttributedStringBuilder;

    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v7}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v7

    invoke-direct {v6, v7}, Lorg/jline/utils/AttributedStringBuilder;-><init>(I)V

    .line 4263
    .local v6, "sb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {p2}, Lorg/jline/utils/AttributedString;->length()I

    move-result v7

    if-eqz v1, :cond_2

    sub-int/2addr v7, v4

    :cond_2
    invoke-virtual {v6, p2, v3, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;II)Lorg/jline/utils/AttributedStringBuilder;

    .line 4264
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 4265
    const/16 v4, 0x20

    invoke-virtual {v6, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 4264
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4267
    .end local v3    # "j":I
    :cond_3
    invoke-virtual {v6, p1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4268
    if-eqz v1, :cond_4

    .line 4269
    invoke-virtual {v6, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 4271
    :cond_4
    invoke-virtual {v6}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object p2

    .line 4273
    .end local v6    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_5
    return-object p2
.end method

.method private bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .param p2, "widget"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 6209
    .local p1, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .local p3, "keySeqs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    new-instance v0, Lorg/jline/reader/Reference;

    invoke-direct {v0, p2}, Lorg/jline/reader/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/Iterable;)V

    .line 6210
    return-void
.end method

.method private varargs bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "widget"    # Ljava/lang/String;
    .param p3, "keySeqs"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 6213
    .local p1, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    new-instance v0, Lorg/jline/reader/Reference;

    invoke-direct {v0, p2}, Lorg/jline/reader/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 6214
    return-void
.end method

.method private varargs bind(Lorg/jline/keymap/KeyMap;Lorg/jline/reader/Widget;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "widget"    # Lorg/jline/reader/Widget;
    .param p3, "keySeqs"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;",
            "Lorg/jline/reader/Widget;",
            "[",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 6217
    .local p1, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    invoke-virtual {p1, p2, p3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 6218
    return-void
.end method

.method private bindArrowKeys(Lorg/jline/keymap/KeyMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;)V"
        }
    .end annotation

    .line 6233
    .local p1, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/CharSequence;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_up:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "up-line-or-search"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6234
    new-array v1, v0, [Ljava/lang/CharSequence;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_down:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "down-line-or-search"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6235
    new-array v1, v0, [Ljava/lang/CharSequence;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "backward-char"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6236
    new-array v1, v0, [Ljava/lang/CharSequence;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "forward-char"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6237
    new-array v1, v0, [Ljava/lang/CharSequence;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_home:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "beginning-of-line"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6238
    new-array v1, v0, [Ljava/lang/CharSequence;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_end:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "end-of-line"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6239
    new-array v1, v0, [Ljava/lang/CharSequence;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_dc:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "delete-char"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6240
    new-array v1, v0, [Ljava/lang/CharSequence;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_dl:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "kill-whole-line"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6241
    new-array v1, v0, [Ljava/lang/CharSequence;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_ic:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "overwrite-mode"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6242
    new-array v1, v0, [Ljava/lang/CharSequence;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_mouse:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "mouse"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6243
    new-array v1, v0, [Ljava/lang/CharSequence;

    const-string v2, "\u001b[200~"

    aput-object v2, v1, v3

    const-string v2, "begin-paste"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6244
    new-array v1, v0, [Ljava/lang/CharSequence;

    const-string v2, "\u001b[I"

    aput-object v2, v1, v3

    const-string v2, "terminal-focus-in"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6245
    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "\u001b[O"

    aput-object v1, v0, v3

    const-string v1, "terminal-focus-out"

    invoke-direct {p0, p1, v1, v0}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6246
    return-void
.end method

.method private bindConsoleChars(Lorg/jline/keymap/KeyMap;Lorg/jline/terminal/Attributes;)V
    .locals 3
    .param p2, "attr"    # Lorg/jline/terminal/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;",
            "Lorg/jline/terminal/Attributes;",
            ")V"
        }
    .end annotation

    .line 6253
    .local p1, "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    if-eqz p2, :cond_0

    .line 6254
    nop

    .line 6255
    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p2, v1}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v1

    int-to-char v1, v1

    .line 6254
    const-string v2, "backward-delete-char"

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->rebind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/String;C)V

    .line 6256
    const/16 v0, 0x57

    .line 6257
    invoke-static {v0}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p2, v1}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v1

    int-to-char v1, v1

    .line 6256
    const-string v2, "backward-kill-word"

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->rebind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/String;C)V

    .line 6258
    const/16 v0, 0x55

    .line 6259
    invoke-static {v0}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p2, v1}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v1

    int-to-char v1, v1

    .line 6258
    const-string v2, "kill-whole-line"

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->rebind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/String;C)V

    .line 6260
    const/16 v0, 0x56

    .line 6261
    invoke-static {v0}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {p2, v1}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v1

    int-to-char v1, v1

    .line 6260
    const-string v2, "quoted-insert"

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->rebind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/String;C)V

    .line 6263
    :cond_0
    return-void
.end method

.method private bindKeys(Lorg/jline/keymap/KeyMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;)V"
        }
    .end annotation

    .line 6225
    .local p1, "emacs":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda109;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda109;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v1, "beep"

    invoke-direct {p0, v1, v0}, Lorg/jline/reader/impl/LineReaderImpl;->namedWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)Lorg/jline/reader/Widget;

    move-result-object v0

    .line 6226
    .local v0, "beep":Lorg/jline/reader/Widget;
    invoke-static {}, Lorg/jline/utils/InfoCmp$Capability;->values()[Lorg/jline/utils/InfoCmp$Capability;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda63;

    invoke-direct {v2}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda63;-><init>()V

    .line 6227
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda64;

    invoke-direct {v2, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda64;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    .line 6228
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda65;

    invoke-direct {v2, p0, p1, v0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda65;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Lorg/jline/keymap/KeyMap;Lorg/jline/reader/Widget;)V

    .line 6229
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 6230
    return-void
.end method

.method private callNeg(Lorg/jline/reader/Widget;)Z
    .locals 2
    .param p1, "widget"    # Lorg/jline/reader/Widget;

    .line 2040
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    neg-int v0, v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    .line 2041
    invoke-interface {p1}, Lorg/jline/reader/Widget;->apply()Z

    move-result v0

    .line 2042
    .local v0, "ret":Z
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    neg-int v1, v1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    .line 2043
    return v0
.end method

.method private candidateStartPosition(Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)I"
        }
    .end annotation

    .line 5186
    .local p1, "cands":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda70;

    invoke-direct {v1}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda70;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda71;

    invoke-direct {v1}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda71;-><init>()V

    .line 5187
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5188
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5189
    .local v1, "notDelimiters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda72;

    invoke-direct {v2, v1}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda72;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 5192
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    .line 5193
    .local v2, "width":I
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/jline/utils/AttributedString;->length()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 5194
    .local v3, "promptLength":I
    :goto_0
    if-lez v3, :cond_1

    .line 5195
    new-instance v5, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;

    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    invoke-virtual {v6}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4, v2}, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;-><init>(Ljava/lang/String;II)V

    .line 5196
    .local v5, "tp":Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;
    invoke-virtual {v5}, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->getEndLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 5198
    .end local v5    # "tp":Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;
    :cond_1
    new-instance v5, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;

    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v6}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v7

    invoke-interface {v6, v4, v7}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3, v2}, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;-><init>(Ljava/lang/String;II)V

    .line 5199
    .local v5, "tl":Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;
    invoke-virtual {v5}, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->getStartPos()I

    move-result v6

    .line 5200
    .local v6, "out":I
    invoke-virtual {v5}, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->getEndLine()Ljava/lang/String;

    move-result-object v7

    .line 5201
    .local v7, "buffer":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, "i":I
    :goto_1
    if-lez v8, :cond_3

    .line 5202
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, ".*\\W"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v9, v8, -0x1

    .line 5203
    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 5204
    add-int/2addr v6, v8

    .line 5205
    goto :goto_2

    .line 5201
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 5208
    .end local v8    # "i":I
    :cond_3
    :goto_2
    return v6
.end method

.method private concat(Ljava/util/List;Lorg/jline/utils/AttributedStringBuilder;)V
    .locals 3
    .param p2, "sb"    # Lorg/jline/utils/AttributedStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;",
            "Lorg/jline/utils/AttributedStringBuilder;",
            ")V"
        }
    .end annotation

    .line 3962
    .local p1, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3963
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 3964
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/utils/AttributedString;

    invoke-virtual {p2, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3965
    invoke-virtual {p2}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jline/utils/AttributedStyle;->inverse()Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3966
    const-string v2, "\\n"

    invoke-virtual {p2, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3967
    invoke-virtual {p2}, Lorg/jline/utils/AttributedStringBuilder;->style()Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jline/utils/AttributedStyle;->inverseOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3963
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3970
    .end local v0    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/utils/AttributedString;

    invoke-virtual {p2, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3971
    return-void
.end method

.method private displayRows()I
    .locals 2

    .line 4652
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jline/utils/Status;->getStatus(Lorg/jline/terminal/Terminal;Z)Lorg/jline/utils/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->displayRows(Lorg/jline/utils/Status;)I

    move-result v0

    return v0
.end method

.method private displayRows(Lorg/jline/utils/Status;)I
    .locals 2
    .param p1, "status"    # Lorg/jline/utils/Status;

    .line 4656
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getRows()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jline/utils/Status;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    return v0
.end method

.method private doCopyKillRegion(Z)Z
    .locals 6
    .param p1, "kill"    # Z

    .line 5657
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 5658
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->length()I

    move-result v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    .line 5660
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    sget-object v1, Lorg/jline/reader/LineReader$RegionType;->LINE:Lorg/jline/reader/LineReader$RegionType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9

    .line 5661
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    .line 5662
    .local v0, "start":I
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    .line 5663
    .local v1, "end":I
    const/16 v3, 0xa

    if-ge v0, v1, :cond_4

    .line 5664
    :goto_0
    if-lez v0, :cond_1

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 5665
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5667
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 5668
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5670
    :cond_2
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViCmdMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5671
    add-int/lit8 v1, v1, 0x1

    .line 5673
    :cond_3
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v0, v1}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jline/reader/impl/KillRing;->add(Ljava/lang/String;)V

    .line 5674
    if-eqz p1, :cond_8

    .line 5675
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    sub-int v4, v1, v0

    invoke-interface {v3, v4}, Lorg/jline/reader/Buffer;->backspace(I)I

    goto :goto_4

    .line 5678
    :cond_4
    :goto_2
    if-lez v1, :cond_5

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 5679
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 5681
    :cond_5
    :goto_3
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v4

    if-eq v4, v3, :cond_6

    .line 5682
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5684
    :cond_6
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViCmdMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5685
    add-int/lit8 v0, v0, 0x1

    .line 5687
    :cond_7
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v1, v0}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jline/reader/impl/KillRing;->addBackwards(Ljava/lang/String;)V

    .line 5688
    if-eqz p1, :cond_8

    .line 5689
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v1}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 5690
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    sub-int v4, v0, v1

    invoke-interface {v3, v4}, Lorg/jline/reader/Buffer;->delete(I)I

    .line 5693
    .end local v0    # "start":I
    .end local v1    # "end":I
    :cond_8
    :goto_4
    goto :goto_5

    :cond_9
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    if-le v0, v1, :cond_b

    .line 5694
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViCmdMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5695
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    .line 5697
    :cond_a
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    iget v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    invoke-interface {v1, v3, v4}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/KillRing;->add(Ljava/lang/String;)V

    .line 5698
    if-eqz p1, :cond_d

    .line 5699
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->delete(I)I

    goto :goto_5

    .line 5702
    :cond_b
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViCmdMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5703
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 5705
    :cond_c
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/KillRing;->add(Ljava/lang/String;)V

    .line 5706
    if-eqz p1, :cond_d

    .line 5707
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 5710
    :cond_d
    :goto_5
    if-eqz p1, :cond_e

    .line 5711
    sget-object v0, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    .line 5713
    :cond_e
    return v2
.end method

.method private doDisplay()V
    .locals 3

    .line 755
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->getBufferSize()Lorg/jline/terminal/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 757
    new-instance v0, Lorg/jline/utils/Display;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/utils/Display;-><init>(Lorg/jline/terminal/Terminal;Z)V

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    .line 758
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getRows()I

    move-result v1

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/utils/Display;->resize(II)V

    .line 759
    sget-object v0, Lorg/jline/reader/LineReader$Option;->DELAY_LINE_WRAP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jline/utils/Display;->setDelayLineWrap(Z)V

    .line 761
    :cond_0
    return-void
.end method

.method private doGetSearchPattern()Ljava/lang/String;
    .locals 6

    .line 2738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2739
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2740
    .local v1, "inQuote":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const-string v4, "\\E"

    if-ge v2, v3, :cond_3

    .line 2741
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    .line 2742
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2743
    if-eqz v1, :cond_0

    .line 2744
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2745
    const/4 v1, 0x0

    .line 2747
    :cond_0
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2749
    :cond_1
    if-nez v1, :cond_2

    .line 2750
    const-string v4, "\\Q"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2751
    const/4 v1, 0x1

    .line 2753
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2740
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2756
    .end local v2    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    .line 2757
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2759
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private expandPromptPattern(Ljava/lang/String;ILjava/lang/String;I)Lorg/jline/utils/AttributedString;
    .locals 20
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "padToWidth"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "line"    # I

    .line 4078
    move-object/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4079
    .local v1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jline/utils/AttributedString;>;"
    const/4 v2, 0x0

    .line 4080
    .local v2, "isHidden":Z
    const/4 v3, -0x1

    .line 4081
    .local v3, "padPartIndex":I
    const/4 v4, 0x0

    .line 4082
    .local v4, "padPartString":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4084
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "%{"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4085
    .end local p1    # "pattern":Ljava/lang/String;
    .local v6, "pattern":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 4086
    .local v7, "plen":I
    const/4 v8, -0x1

    .line 4087
    .local v8, "padChar":I
    const/4 v9, -0x1

    .line 4088
    .local v9, "padPos":I
    const/4 v10, 0x0

    .line 4089
    .local v10, "cols":I
    const/4 v11, 0x0

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move-object v8, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    move/from16 v2, p2

    .end local p2    # "padToWidth":I
    .local v2, "padToWidth":I
    .local v3, "isHidden":Z
    .local v4, "padPartIndex":I
    .local v5, "padPartString":Ljava/lang/StringBuilder;
    .local v8, "sb":Ljava/lang/StringBuilder;
    .local v9, "padChar":I
    .local v10, "padPos":I
    .local v11, "cols":I
    .local v12, "i":I
    :goto_0
    if-ge v12, v7, :cond_c

    .line 4090
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "i":I
    .local v13, "i":I
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 4091
    .local v12, "ch":C
    const/16 v14, 0x25

    if-ne v12, v14, :cond_b

    if-ge v13, v7, :cond_b

    .line 4092
    const/4 v14, 0x0

    .line 4093
    .local v14, "count":I
    const/4 v15, 0x0

    .line 4095
    .local v15, "countSeen":Z
    :goto_1
    move/from16 p1, v12

    .end local v12    # "ch":C
    .local p1, "ch":C
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "i":I
    .local v12, "i":I
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 4096
    .end local p1    # "ch":C
    .local v13, "ch":C
    move/from16 p1, v10

    .end local v10    # "padPos":I
    .local p1, "padPos":I
    sparse-switch v13, :sswitch_data_0

    .line 4166
    move-object/from16 v10, p0

    move/from16 v16, v3

    move-object/from16 v17, v5

    .end local v3    # "isHidden":Z
    .end local v5    # "padPartString":Ljava/lang/StringBuilder;
    .local v16, "isHidden":Z
    .local v17, "padPartString":Ljava/lang/StringBuilder;
    goto/16 :goto_8

    .line 4099
    .end local v16    # "isHidden":Z
    .end local v17    # "padPartString":Ljava/lang/StringBuilder;
    .restart local v3    # "isHidden":Z
    .restart local v5    # "padPartString":Ljava/lang/StringBuilder;
    :sswitch_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4101
    .local v10, "str":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 4102
    invoke-static {v10}, Lorg/jline/utils/AttributedString;->fromAnsi(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v16

    .line 4103
    .local v16, "astr":Lorg/jline/utils/AttributedString;
    invoke-virtual/range {v16 .. v16}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v17

    add-int v11, v11, v17

    move-object/from16 v17, v5

    move-object/from16 v19, v16

    move/from16 v16, v3

    move-object/from16 v3, v19

    goto :goto_2

    .line 4105
    .end local v16    # "astr":Lorg/jline/utils/AttributedString;
    :cond_0
    move/from16 v16, v3

    .end local v3    # "isHidden":Z
    .local v16, "isHidden":Z
    new-instance v3, Lorg/jline/utils/AttributedString;

    move-object/from16 v17, v5

    .end local v5    # "padPartString":Ljava/lang/StringBuilder;
    .restart local v17    # "padPartString":Ljava/lang/StringBuilder;
    sget-object v5, Lorg/jline/utils/AttributedStyle;->HIDDEN:Lorg/jline/utils/AttributedStyle;

    invoke-direct {v3, v10, v5}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)V

    .line 4107
    .local v3, "astr":Lorg/jline/utils/AttributedString;
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 4108
    move-object v5, v8

    .line 4109
    .end local v17    # "padPartString":Ljava/lang/StringBuilder;
    .restart local v5    # "padPartString":Ljava/lang/StringBuilder;
    if-ge v12, v7, :cond_2

    .line 4110
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v17

    goto :goto_3

    .line 4113
    .end local v5    # "padPartString":Ljava/lang/StringBuilder;
    .restart local v17    # "padPartString":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v5, v17

    .line 4115
    .end local v17    # "padPartString":Ljava/lang/StringBuilder;
    .restart local v5    # "padPartString":Ljava/lang/StringBuilder;
    :cond_2
    :goto_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4116
    move-object/from16 v18, v3

    .end local v3    # "astr":Lorg/jline/utils/AttributedString;
    .local v18, "astr":Lorg/jline/utils/AttributedString;
    const/16 v3, 0x7b

    if-ne v13, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    .line 4117
    .end local v16    # "isHidden":Z
    .local v3, "isHidden":Z
    :goto_4
    move-object/from16 v10, p0

    move v14, v12

    move v12, v11

    move/from16 v11, p1

    goto/16 :goto_9

    .line 4129
    .end local v10    # "str":Ljava/lang/String;
    .end local v18    # "astr":Lorg/jline/utils/AttributedString;
    :sswitch_1
    move/from16 v16, v3

    move-object/from16 v17, v5

    .end local v3    # "isHidden":Z
    .end local v5    # "padPartString":Ljava/lang/StringBuilder;
    .restart local v16    # "isHidden":Z
    .restart local v17    # "padPartString":Ljava/lang/StringBuilder;
    if-eqz v15, :cond_4

    if-ltz v14, :cond_4

    .line 4130
    move v2, v14

    .line 4131
    :cond_4
    if-ge v12, v7, :cond_5

    .line 4132
    add-int/lit8 v3, v12, 0x1

    .end local v12    # "i":I
    .local v3, "i":I
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v12, v3

    .line 4135
    .end local v3    # "i":I
    .restart local v12    # "i":I
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 4136
    .end local p1    # "padPos":I
    .local v10, "padPos":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4137
    move v14, v12

    move/from16 v3, v16

    move-object/from16 v5, v17

    move v12, v11

    move v11, v10

    move-object/from16 v10, p0

    goto/16 :goto_9

    .line 4122
    .end local v10    # "padPos":I
    .end local v16    # "isHidden":Z
    .end local v17    # "padPartString":Ljava/lang/StringBuilder;
    .local v3, "isHidden":Z
    .restart local v5    # "padPartString":Ljava/lang/StringBuilder;
    .restart local p1    # "padPos":I
    :sswitch_2
    move/from16 v16, v3

    move-object/from16 v17, v5

    .end local v3    # "isHidden":Z
    .end local v5    # "padPartString":Ljava/lang/StringBuilder;
    .restart local v16    # "isHidden":Z
    .restart local v17    # "padPartString":Ljava/lang/StringBuilder;
    const-string v3, "line-offset"

    const/4 v5, 0x0

    move-object/from16 v10, p0

    invoke-virtual {v10, v3, v5}, Lorg/jline/reader/impl/LineReaderImpl;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int v3, v3, p4

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4123
    goto/16 :goto_8

    .line 4125
    .end local v16    # "isHidden":Z
    .end local v17    # "padPartString":Ljava/lang/StringBuilder;
    .restart local v3    # "isHidden":Z
    .restart local v5    # "padPartString":Ljava/lang/StringBuilder;
    :sswitch_3
    move-object/from16 v10, p0

    move/from16 v16, v3

    move-object/from16 v17, v5

    .end local v3    # "isHidden":Z
    .end local v5    # "padPartString":Ljava/lang/StringBuilder;
    .restart local v16    # "isHidden":Z
    .restart local v17    # "padPartString":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_a

    .line 4126
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 4149
    .end local v16    # "isHidden":Z
    .end local v17    # "padPartString":Ljava/lang/StringBuilder;
    .restart local v3    # "isHidden":Z
    .restart local v5    # "padPartString":Ljava/lang/StringBuilder;
    :sswitch_4
    move-object/from16 v10, p0

    move/from16 v16, v3

    move-object/from16 v17, v5

    const/4 v5, 0x0

    .end local v3    # "isHidden":Z
    .end local v5    # "padPartString":Ljava/lang/StringBuilder;
    .restart local v16    # "isHidden":Z
    .restart local v17    # "padPartString":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 4150
    .local v3, "neg":Z
    const/16 v5, 0x2d

    if-ne v13, v5, :cond_6

    .line 4151
    const/4 v3, 0x1

    .line 4152
    add-int/lit8 v5, v12, 0x1

    .end local v12    # "i":I
    .local v5, "i":I
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v12, v5

    .line 4154
    .end local v5    # "i":I
    .restart local v12    # "i":I
    :cond_6
    const/4 v15, 0x1

    .line 4155
    const/4 v5, 0x0

    move/from16 v19, v13

    move v13, v12

    move/from16 v12, v19

    .line 4156
    .end local v14    # "count":I
    .local v5, "count":I
    .local v12, "ch":C
    .local v13, "i":I
    :goto_5
    const/16 v14, 0x30

    if-lt v12, v14, :cond_8

    const/16 v14, 0x39

    if-gt v12, v14, :cond_8

    .line 4157
    if-gez v5, :cond_7

    const/4 v14, 0x0

    goto :goto_6

    :cond_7
    mul-int/lit8 v14, v5, 0xa

    :goto_6
    add-int/lit8 v18, v12, -0x30

    add-int v5, v14, v18

    .line 4158
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "i":I
    .local v14, "i":I
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v13, v14

    goto :goto_5

    .line 4160
    .end local v14    # "i":I
    .restart local v13    # "i":I
    :cond_8
    if-eqz v3, :cond_9

    .line 4161
    neg-int v5, v5

    move v14, v5

    goto :goto_7

    .line 4160
    :cond_9
    move v14, v5

    .line 4163
    .end local v5    # "count":I
    .local v14, "count":I
    :goto_7
    add-int/lit8 v13, v13, -0x1

    .line 4164
    move/from16 v10, p1

    move/from16 v3, v16

    move-object/from16 v5, v17

    goto/16 :goto_1

    .line 4119
    .end local v16    # "isHidden":Z
    .end local v17    # "padPartString":Ljava/lang/StringBuilder;
    .local v3, "isHidden":Z
    .local v5, "padPartString":Ljava/lang/StringBuilder;
    .local v12, "i":I
    .local v13, "ch":C
    :sswitch_5
    move-object/from16 v10, p0

    move/from16 v16, v3

    move-object/from16 v17, v5

    .end local v3    # "isHidden":Z
    .end local v5    # "padPartString":Ljava/lang/StringBuilder;
    .restart local v16    # "isHidden":Z
    .restart local v17    # "padPartString":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4120
    nop

    .line 4169
    .end local v14    # "count":I
    .end local v15    # "countSeen":Z
    :cond_a
    :goto_8
    move v14, v12

    move/from16 v3, v16

    move-object/from16 v5, v17

    move v12, v11

    move/from16 v11, p1

    .end local v16    # "isHidden":Z
    .end local v17    # "padPartString":Ljava/lang/StringBuilder;
    .end local p1    # "padPos":I
    .restart local v3    # "isHidden":Z
    .restart local v5    # "padPartString":Ljava/lang/StringBuilder;
    .local v11, "padPos":I
    .local v12, "cols":I
    .local v14, "i":I
    :goto_9
    move v13, v14

    goto :goto_a

    .line 4091
    .end local v14    # "i":I
    .restart local v10    # "padPos":I
    .local v11, "cols":I
    .local v12, "ch":C
    .local v13, "i":I
    :cond_b
    move/from16 v16, v3

    move-object/from16 v17, v5

    move/from16 p1, v10

    move-object/from16 v10, p0

    .line 4170
    .end local v3    # "isHidden":Z
    .end local v5    # "padPartString":Ljava/lang/StringBuilder;
    .end local v10    # "padPos":I
    .restart local v16    # "isHidden":Z
    .restart local v17    # "padPartString":Ljava/lang/StringBuilder;
    .restart local p1    # "padPos":I
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v11

    move/from16 v3, v16

    move-object/from16 v5, v17

    move/from16 v11, p1

    .line 4171
    .end local v16    # "isHidden":Z
    .end local v17    # "padPartString":Ljava/lang/StringBuilder;
    .end local p1    # "padPos":I
    .restart local v3    # "isHidden":Z
    .restart local v5    # "padPartString":Ljava/lang/StringBuilder;
    .local v11, "padPos":I
    .local v12, "cols":I
    :goto_a
    move v10, v11

    move v11, v12

    move v12, v13

    goto/16 :goto_0

    .line 4089
    .end local v13    # "i":I
    .restart local v10    # "padPos":I
    .local v11, "cols":I
    .local v12, "i":I
    :cond_c
    move/from16 v16, v3

    move-object/from16 v17, v5

    move/from16 p1, v10

    move-object/from16 v10, p0

    .line 4172
    .end local v3    # "isHidden":Z
    .end local v5    # "padPartString":Ljava/lang/StringBuilder;
    .end local v10    # "padPos":I
    .end local v12    # "i":I
    .restart local v16    # "isHidden":Z
    .restart local v17    # "padPartString":Ljava/lang/StringBuilder;
    .restart local p1    # "padPos":I
    if-le v2, v11, :cond_e

    .line 4173
    invoke-static {v9}, Lorg/jline/utils/WCWidth;->wcwidth(I)I

    move-result v3

    .line 4174
    .local v3, "padCharCols":I
    sub-int v5, v2, v11

    div-int/2addr v5, v3

    .line 4175
    .local v5, "padCount":I
    move-object/from16 v8, v17

    .line 4176
    :goto_b
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_d

    .line 4177
    int-to-char v12, v9

    move/from16 v13, p1

    .end local p1    # "padPos":I
    .local v13, "padPos":I
    invoke-virtual {v8, v13, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 4178
    .end local v13    # "padPos":I
    .restart local p1    # "padPos":I
    :cond_d
    move/from16 v13, p1

    .end local p1    # "padPos":I
    .restart local v13    # "padPos":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/jline/utils/AttributedString;->fromAnsi(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v12

    invoke-virtual {v1, v4, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 4172
    .end local v3    # "padCharCols":I
    .end local v5    # "padCount":I
    .end local v13    # "padPos":I
    .restart local p1    # "padPos":I
    :cond_e
    move/from16 v13, p1

    .line 4180
    .end local p1    # "padPos":I
    .restart local v13    # "padPos":I
    :goto_c
    const/4 v3, 0x0

    invoke-static {v3, v1}, Lorg/jline/utils/AttributedString;->join(Lorg/jline/utils/AttributedString;Ljava/lang/Iterable;)Lorg/jline/utils/AttributedString;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_5
        0x2d -> :sswitch_4
        0x30 -> :sswitch_4
        0x31 -> :sswitch_4
        0x32 -> :sswitch_4
        0x33 -> :sswitch_4
        0x34 -> :sswitch_4
        0x35 -> :sswitch_4
        0x36 -> :sswitch_4
        0x37 -> :sswitch_4
        0x38 -> :sswitch_4
        0x39 -> :sswitch_4
        0x4d -> :sswitch_3
        0x4e -> :sswitch_2
        0x50 -> :sswitch_1
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private findbol()I
    .locals 3

    .line 1899
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 1900
    .local v0, "x":I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 1901
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1903
    :cond_0
    return v0
.end method

.method private findeol()I
    .locals 3

    .line 1907
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 1908
    .local v0, "x":I
    :goto_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 1909
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1911
    :cond_0
    return v0
.end method

.method private getFirstWord()Ljava/lang/CharSequence;
    .locals 3

    .line 2815
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2816
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2817
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2818
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2820
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getHighlightedBuffer(Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/String;

    .line 4066
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->maskingCallback:Lorg/jline/reader/MaskingCallback;

    if-eqz v0, :cond_0

    .line 4067
    invoke-interface {v0, p1}, Lorg/jline/reader/MaskingCallback;->display(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4069
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->highlighter:Lorg/jline/reader/Highlighter;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/jline/reader/LineReader$Option;->DISABLE_HIGHLIGHTER:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4070
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    const-string v2, "features-max-buffer-size"

    invoke-virtual {p0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4071
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->highlighter:Lorg/jline/reader/Highlighter;

    invoke-interface {v0, p0, p1}, Lorg/jline/reader/Highlighter;->highlight(Lorg/jline/reader/LineReader;Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0

    .line 4073
    :cond_1
    new-instance v0, Lorg/jline/utils/AttributedString;

    invoke-direct {v0, p1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getViSearchString()Z
    .locals 10

    .line 2096
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchDir:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2097
    return v1

    .line 2099
    :cond_0
    if-gez v0, :cond_1

    const-string v0, "?"

    goto :goto_0

    :cond_1
    const-string v0, "/"

    .line 2100
    .local v0, "searchPrompt":Ljava/lang/String;
    :goto_0
    new-instance v2, Lorg/jline/reader/impl/BufferImpl;

    invoke-direct {v2}, Lorg/jline/reader/impl/BufferImpl;-><init>()V

    .line 2102
    .local v2, "searchBuffer":Lorg/jline/reader/Buffer;
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMaps:Ljava/util/Map;

    const-string v4, "main"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/keymap/KeyMap;

    .line 2103
    .local v3, "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    if-nez v3, :cond_2

    .line 2104
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMaps:Ljava/util/Map;

    const-string v5, ".safe"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lorg/jline/keymap/KeyMap;

    .line 2107
    :cond_2
    :goto_1
    new-instance v4, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda68;

    invoke-direct {v4, v0, v2}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda68;-><init>(Ljava/lang/String;Lorg/jline/reader/Buffer;)V

    iput-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 2108
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay()Z

    .line 2109
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/jline/reader/impl/LineReaderImpl;->doReadBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/reader/Binding;

    .line 2110
    .local v5, "b":Lorg/jline/reader/Binding;
    instance-of v6, v5, Lorg/jline/reader/Reference;

    if-eqz v6, :cond_7

    .line 2111
    move-object v6, v5

    check-cast v6, Lorg/jline/reader/Reference;

    invoke-virtual {v6}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v6

    .line 2112
    .local v6, "func":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x1

    sparse-switch v8, :sswitch_data_0

    :cond_3
    goto/16 :goto_2

    :sswitch_0
    const-string v8, "redisplay"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x4

    goto/16 :goto_2

    :sswitch_1
    const-string v8, "self-insert-unmeta"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x7

    goto/16 :goto_2

    :sswitch_2
    const-string v8, "vi-cmd-mode"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v8, "self-insert"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x6

    goto/16 :goto_2

    :sswitch_4
    const-string v8, "quoted-insert"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v7, 0xc

    goto :goto_2

    :sswitch_5
    const-string v8, "accept-line"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v7, v9

    goto :goto_2

    :sswitch_6
    const-string v8, "backward-kill-word"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v7, 0xa

    goto :goto_2

    :sswitch_7
    const-string v8, "vi-backward-kill-word"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v7, 0xb

    goto :goto_2

    :sswitch_8
    const-string v8, "backward-delete-char"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v7, 0x8

    goto :goto_2

    :sswitch_9
    const-string v8, "abort"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v7, v1

    goto :goto_2

    :sswitch_a
    const-string v8, "magic-space"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x3

    goto :goto_2

    :sswitch_b
    const-string v8, "clear-screen"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x5

    goto :goto_2

    :sswitch_c
    const-string v8, "vi-quoted-insert"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v7, 0xd

    goto :goto_2

    :sswitch_d
    const-string v8, "vi-backward-delete-char"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v7, 0x9

    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 2167
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->beep()Z

    goto/16 :goto_3

    .line 2159
    :pswitch_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->readCharacter()I

    move-result v4

    .line 2160
    .local v4, "c":I
    if-ltz v4, :cond_4

    .line 2161
    invoke-interface {v2, v4}, Lorg/jline/reader/Buffer;->write(I)V

    goto/16 :goto_3

    .line 2163
    :cond_4
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->beep()Z

    .line 2165
    goto/16 :goto_3

    .line 2150
    .end local v4    # "c":I
    :pswitch_1
    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2151
    invoke-interface {v2}, Lorg/jline/reader/Buffer;->backspace()Z

    .line 2153
    :cond_5
    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2154
    invoke-interface {v2}, Lorg/jline/reader/Buffer;->backspace()Z

    goto :goto_3

    .line 2144
    :pswitch_2
    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 2145
    invoke-interface {v2}, Lorg/jline/reader/Buffer;->backspace()Z

    goto :goto_3

    .line 2134
    :pswitch_3
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x1b

    if-ne v4, v7, :cond_7

    .line 2135
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2136
    .local v4, "s":Ljava/lang/String;
    const-string v7, "\r"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2137
    const-string v4, "\n"

    .line 2139
    :cond_6
    invoke-interface {v2, v4}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 2140
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_3

    .line 2131
    :pswitch_4
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 2132
    goto :goto_3

    .line 2128
    :pswitch_5
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->clearScreen()Z

    .line 2129
    goto :goto_3

    .line 2125
    :pswitch_6
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay()Z

    .line 2126
    goto :goto_3

    .line 2122
    :pswitch_7
    const/16 v4, 0x20

    invoke-interface {v2, v4}, Lorg/jline/reader/Buffer;->write(I)V

    .line 2123
    goto :goto_3

    .line 2118
    :pswitch_8
    invoke-interface {v2}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchString:Ljava/lang/String;

    .line 2119
    iput-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 2120
    return v9

    .line 2114
    :pswitch_9
    iput-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 2115
    return v1

    .line 2171
    .end local v5    # "b":Lorg/jline/reader/Binding;
    .end local v6    # "func":Ljava/lang/String;
    :cond_7
    :goto_3
    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x590185d8 -> :sswitch_d
        -0x5272fedc -> :sswitch_c
        -0x4e45cc14 -> :sswitch_b
        0x73f8e6 -> :sswitch_a
        0x5852330 -> :sswitch_9
        0x1065234e -> :sswitch_8
        0x1655cc09 -> :sswitch_7
        0x1f8086af -> :sswitch_6
        0x22b50199 -> :sswitch_5
        0x2555b6be -> :sswitch_4
        0x3a35d05a -> :sswitch_3
        0x42fedc30 -> :sswitch_2
        0x642a90f1 -> :sswitch_1
        0x65f53b2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private insertSecondaryPrompts(Lorg/jline/utils/AttributedString;Ljava/util/List;)Lorg/jline/utils/AttributedString;
    .locals 1
    .param p1, "str"    # Lorg/jline/utils/AttributedString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/utils/AttributedString;",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;)",
            "Lorg/jline/utils/AttributedString;"
        }
    .end annotation

    .line 4184
    .local p2, "prompts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/reader/impl/LineReaderImpl;->insertSecondaryPrompts(Lorg/jline/utils/AttributedString;Ljava/util/List;Z)Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method private insertSecondaryPrompts(Lorg/jline/utils/AttributedString;Ljava/util/List;Z)Lorg/jline/utils/AttributedString;
    .locals 16
    .param p1, "strAtt"    # Lorg/jline/utils/AttributedString;
    .param p3, "computePrompts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/utils/AttributedString;",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;Z)",
            "Lorg/jline/utils/AttributedString;"
        }
    .end annotation

    .line 4188
    .local p2, "prompts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4189
    const v0, 0x7fffffff

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Lorg/jline/utils/AttributedString;->columnSplitLength(I)Ljava/util/List;

    move-result-object v4

    .line 4190
    .local v4, "lines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    move-object v5, v0

    .line 4191
    .local v5, "sb":Lorg/jline/utils/AttributedStringBuilder;
    const-string v0, "secondary-prompt-pattern"

    const-string v6, "%M> "

    invoke-virtual {v1, v0, v6}, Lorg/jline/reader/impl/LineReaderImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4192
    .local v6, "secondaryPromptPattern":Ljava/lang/String;
    const-string v0, "%M"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    .line 4193
    invoke-virtual/range {p1 .. p1}, Lorg/jline/utils/AttributedString;->length()I

    move-result v0

    const/16 v9, 0x3e8

    const-string v10, "features-max-buffer-size"

    invoke-virtual {v1, v10, v9}, Lorg/jline/reader/impl/LineReaderImpl;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ge v0, v9, :cond_0

    move v0, v8

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    move v9, v0

    .line 4194
    .local v9, "needsMessage":Z
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    move-object v10, v0

    .line 4195
    .local v10, "buf":Lorg/jline/utils/AttributedStringBuilder;
    const/4 v0, 0x0

    .line 4196
    .local v0, "width":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4197
    .local v11, "missings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "\n"

    if-eqz p3, :cond_5

    const-string v13, "%P"

    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 4198
    iget-object v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    invoke-virtual {v13}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v0

    .line 4199
    iget-object v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v13}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v13

    if-gt v0, v13, :cond_1

    iget-object v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Lorg/jline/utils/AttributedString;->contains(C)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 4200
    :cond_1
    new-instance v13, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;

    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    invoke-virtual {v14}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v15}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v15

    invoke-direct {v13, v14, v7, v15}, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v13}, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->getEndLine()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    .line 4202
    :cond_2
    const/4 v13, 0x0

    move v14, v13

    move v13, v0

    .end local v0    # "width":I
    .local v13, "width":I
    .local v14, "line":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v8

    if-ge v14, v0, :cond_4

    .line 4204
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/utils/AttributedString;

    invoke-virtual {v10, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4205
    const-string v15, ""

    .line 4206
    .local v15, "missing":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 4208
    :try_start_0
    iget-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->parser:Lorg/jline/reader/Parser;

    invoke-virtual {v10}, Lorg/jline/utils/AttributedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v7

    sget-object v3, Lorg/jline/reader/Parser$ParseContext;->SECONDARY_PROMPT:Lorg/jline/reader/Parser$ParseContext;

    invoke-interface {v0, v8, v7, v3}, Lorg/jline/reader/Parser;->parse(Ljava/lang/String;ILorg/jline/reader/Parser$ParseContext;)Lorg/jline/reader/ParsedLine;
    :try_end_0
    .catch Lorg/jline/reader/EOFError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jline/reader/SyntaxError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4211
    :catch_0
    move-exception v0

    goto :goto_2

    .line 4209
    :catch_1
    move-exception v0

    .line 4210
    .local v0, "e":Lorg/jline/reader/EOFError;
    invoke-virtual {v0}, Lorg/jline/reader/EOFError;->getMissing()Ljava/lang/String;

    move-result-object v15

    .line 4215
    .end local v0    # "e":Lorg/jline/reader/EOFError;
    :cond_3
    :goto_2
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4216
    add-int/lit8 v0, v14, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v6, v3, v15, v0}, Lorg/jline/reader/impl/LineReaderImpl;->expandPromptPattern(Ljava/lang/String;ILjava/lang/String;I)Lorg/jline/utils/AttributedString;

    move-result-object v0

    .line 4217
    .local v0, "prompt":Lorg/jline/utils/AttributedString;
    invoke-virtual {v0}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v7

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 4202
    .end local v0    # "prompt":Lorg/jline/utils/AttributedString;
    .end local v15    # "missing":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move v7, v3

    const/4 v8, 0x1

    move-object/from16 v3, p1

    goto :goto_1

    :cond_4
    move v3, v7

    .line 4219
    .end local v14    # "line":I
    invoke-virtual {v10, v3}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    goto :goto_3

    .line 4221
    .end local v13    # "width":I
    .local v0, "width":I
    :cond_5
    move v13, v0

    .end local v0    # "width":I
    .restart local v13    # "width":I
    :goto_3
    const/4 v0, 0x0

    move v3, v0

    .line 4222
    .local v3, "line":I
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    if-ge v3, v0, :cond_9

    .line 4223
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/utils/AttributedString;

    invoke-virtual {v5, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4224
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/utils/AttributedString;

    invoke-virtual {v10, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4226
    if-eqz p3, :cond_8

    .line 4227
    const-string v8, ""

    .line 4228
    .local v8, "missing":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 4229
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4231
    :try_start_1
    iget-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->parser:Lorg/jline/reader/Parser;

    invoke-virtual {v10}, Lorg/jline/utils/AttributedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v15

    sget-object v7, Lorg/jline/reader/Parser$ParseContext;->SECONDARY_PROMPT:Lorg/jline/reader/Parser$ParseContext;

    invoke-interface {v0, v14, v15, v7}, Lorg/jline/reader/Parser;->parse(Ljava/lang/String;ILorg/jline/reader/Parser$ParseContext;)Lorg/jline/reader/ParsedLine;
    :try_end_1
    .catch Lorg/jline/reader/EOFError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/jline/reader/SyntaxError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    .line 4234
    :catch_2
    move-exception v0

    goto :goto_5

    .line 4232
    :catch_3
    move-exception v0

    .line 4233
    .local v0, "e":Lorg/jline/reader/EOFError;
    invoke-virtual {v0}, Lorg/jline/reader/EOFError;->getMissing()Ljava/lang/String;

    move-result-object v8

    .line 4236
    .end local v0    # "e":Lorg/jline/reader/EOFError;
    :goto_5
    goto :goto_6

    .line 4238
    :cond_6
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 4241
    :cond_7
    :goto_6
    add-int/lit8 v0, v3, 0x1

    invoke-direct {v1, v6, v13, v8, v0}, Lorg/jline/reader/impl/LineReaderImpl;->expandPromptPattern(Ljava/lang/String;ILjava/lang/String;I)Lorg/jline/utils/AttributedString;

    move-result-object v0

    .line 4242
    .end local v8    # "missing":Ljava/lang/String;
    .local v0, "prompt":Lorg/jline/utils/AttributedString;
    goto :goto_7

    .line 4243
    .end local v0    # "prompt":Lorg/jline/utils/AttributedString;
    :cond_8
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/utils/AttributedString;

    .line 4245
    .restart local v0    # "prompt":Lorg/jline/utils/AttributedString;
    :goto_7
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4246
    invoke-virtual {v5, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4247
    nop

    .end local v0    # "prompt":Lorg/jline/utils/AttributedString;
    add-int/lit8 v3, v3, 0x1

    .line 4248
    goto :goto_4

    .line 4249
    :cond_9
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/utils/AttributedString;

    invoke-virtual {v5, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4250
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/utils/AttributedString;

    invoke-virtual {v10, v0}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4251
    invoke-virtual {v5}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v0

    return-object v0
.end method

.method private isTerminalDumb()Z
    .locals 2

    .line 748
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dumb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    .line 749
    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dumb-color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 748
    :goto_1
    return v0
.end method

.method private key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;
    .locals 1
    .param p1, "capability"    # Lorg/jline/utils/InfoCmp$Capability;

    .line 6221
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-static {v0, p1}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$bindKeys$30(Lorg/jline/utils/InfoCmp$Capability;)Z
    .locals 2
    .param p0, "c"    # Lorg/jline/utils/InfoCmp$Capability;

    .line 6227
    invoke-virtual {p0}, Lorg/jline/utils/InfoCmp$Capability;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$candidateStartPosition$21(Lorg/jline/reader/Candidate;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Lorg/jline/reader/Candidate;

    .line 5186
    invoke-virtual {p0}, Lorg/jline/reader/Candidate;->displ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jline/utils/AttributedString;->stripAnsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$candidateStartPosition$22(Ljava/lang/String;)Z
    .locals 2
    .param p0, "c"    # Ljava/lang/String;

    .line 5187
    const-string v0, "\\w+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$candidateStartPosition$23(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 5190
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$candidateStartPosition$24(Ljava/util/Set;I)V
    .locals 1
    .param p0, "notDelimiters"    # Ljava/util/Set;
    .param p1, "c"    # I

    .line 5191
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$candidateStartPosition$25(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .param p0, "notDelimiters"    # Ljava/util/Set;
    .param p1, "v"    # Ljava/lang/String;

    .line 5189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda89;

    invoke-direct {v1}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda89;-><init>()V

    .line 5190
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda90;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda90;-><init>(Ljava/util/Set;)V

    .line 5191
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 5189
    return-void
.end method

.method static synthetic lambda$computePost$20(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 5112
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$getCandidateComparator$15(Ljava/lang/String;ZLjava/lang/String;)I
    .locals 1
    .param p0, "wdi"    # Ljava/lang/String;
    .param p1, "caseInsensitive"    # Z
    .param p2, "w"    # Ljava/lang/String;

    .line 4592
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-static {p0, v0}, Lorg/jline/reader/impl/ReaderUtils;->distance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getViSearchString$7(Ljava/lang/String;Lorg/jline/reader/Buffer;)Lorg/jline/utils/AttributedString;
    .locals 3
    .param p0, "searchPrompt"    # Ljava/lang/String;
    .param p1, "searchBuffer"    # Lorg/jline/reader/Buffer;

    .line 2107
    new-instance v0, Lorg/jline/utils/AttributedString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$getWidget$2(Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1184
    new-instance v0, Lorg/jline/utils/AttributedString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such widget `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$getWidget$4()Lorg/jline/utils/AttributedString;
    .locals 2

    .line 1190
    new-instance v0, Lorg/jline/utils/AttributedString;

    const-string v1, "Unsupported widget"

    invoke-direct {v0, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$mergeCandidates$17(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 4617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$mouse$29(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p0, "tsb"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # I

    .line 5751
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic lambda$readLine$0(Ljava/lang/Thread;Lorg/jline/terminal/Terminal$Signal;)V
    .locals 0
    .param p0, "readLineThread"    # Ljava/lang/Thread;
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 611
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method static synthetic lambda$toColumns$26(III)I
    .locals 1
    .param p0, "columns"    # I
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 5313
    mul-int v0, p1, p0

    add-int/2addr v0, p2

    return v0
.end method

.method static synthetic lambda$toColumns$27(III)I
    .locals 1
    .param p0, "lines"    # I
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 5315
    mul-int v0, p2, p0

    add-int/2addr v0, p1

    return v0
.end method

.method private listChoices(Z)Z
    .locals 3
    .param p1, "forSuggestion"    # Z

    .line 4366
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->List:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->MENU_COMPLETE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/jline/reader/impl/LineReaderImpl;->doComplete(Lorg/jline/reader/impl/LineReaderImpl$CompletionType;ZZZ)Z

    move-result v0

    return v0
.end method

.method private matchPreviousCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "buffer"    # Ljava/lang/String;

    .line 3974
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 3975
    const-string v0, ""

    return-object v0

    .line 3977
    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getHistory()Lorg/jline/reader/History;

    move-result-object v0

    .line 3978
    .local v0, "history":Lorg/jline/reader/History;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3979
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-char v5, v2, v4

    .line 3980
    .local v5, "c":C
    const/16 v6, 0x28

    if-eq v5, v6, :cond_1

    const/16 v6, 0x29

    if-eq v5, v6, :cond_1

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_1

    const/16 v6, 0x5d

    if-eq v5, v6, :cond_1

    const/16 v6, 0x7b

    if-eq v5, v6, :cond_1

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_1

    const/16 v6, 0x5e

    if-eq v5, v6, :cond_1

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_1

    const/16 v6, 0x24

    if-eq v5, v6, :cond_1

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_1

    const/16 v6, 0x3f

    if-eq v5, v6, :cond_1

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_2

    .line 3982
    :cond_1
    const/16 v6, 0x5c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3984
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3979
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3986
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3987
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-interface {v0}, Lorg/jline/reader/History;->last()I

    move-result v3

    invoke-interface {v0, v3}, Lorg/jline/reader/History;->reverseIterator(I)Ljava/util/Iterator;

    move-result-object v3

    .line 3988
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jline/reader/History$Entry;>;"
    const-string v4, ""

    .line 3989
    .local v4, "suggestion":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3990
    .local v5, "tot":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3991
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jline/reader/History$Entry;

    .line 3992
    .local v6, "entry":Lorg/jline/reader/History$Entry;
    invoke-interface {v6}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 3993
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3994
    invoke-interface {v6}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3995
    goto :goto_2

    .line 3996
    :cond_4
    const/16 v8, 0xc8

    if-le v5, v8, :cond_5

    .line 3997
    goto :goto_2

    .line 3999
    :cond_5
    nop

    .end local v6    # "entry":Lorg/jline/reader/History$Entry;
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    add-int/lit8 v5, v5, 0x1

    .line 4000
    goto :goto_1

    .line 4001
    :cond_6
    :goto_2
    return-object v4
.end method

.method private matches(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "p"    # Ljava/util/regex/Pattern;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lorg/jline/reader/impl/LineReaderImpl$Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 2729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2730
    .local v0, "starts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/impl/LineReaderImpl$Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2731
    .local v1, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2732
    new-instance v2, Lorg/jline/reader/impl/LineReaderImpl$Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jline/reader/impl/LineReaderImpl$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2734
    :cond_0
    return-object v0
.end method

.method private mergeCandidates(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)V"
        }
    .end annotation

    .line 4614
    .local p1, "possible":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4615
    .local v0, "keyedCandidates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lorg/jline/reader/Candidate;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/reader/Candidate;

    .line 4616
    .local v2, "candidate":Lorg/jline/reader/Candidate;
    invoke-virtual {v2}, Lorg/jline/reader/Candidate;->key()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4617
    invoke-virtual {v2}, Lorg/jline/reader/Candidate;->key()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda100;

    invoke-direct {v4}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda100;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 4618
    .local v3, "cands":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4620
    .end local v2    # "candidate":Lorg/jline/reader/Candidate;
    .end local v3    # "cands":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    :cond_0
    goto :goto_0

    .line 4621
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4622
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 4623
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    .line 4624
    invoke-interface {p1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 4627
    new-instance v3, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda111;

    invoke-direct {v3}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda111;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 4628
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/reader/Candidate;

    .line 4629
    .local v3, "first":Lorg/jline/reader/Candidate;
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda122;

    invoke-direct {v5}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda122;-><init>()V

    .line 4630
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 4631
    const-string v5, " "

    invoke-static {v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4632
    .local v4, "disp":Ljava/lang/String;
    new-instance v13, Lorg/jline/reader/Candidate;

    invoke-virtual {v3}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/jline/reader/Candidate;->group()Ljava/lang/String;

    move-result-object v8

    .line 4633
    invoke-virtual {v3}, Lorg/jline/reader/Candidate;->descr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lorg/jline/reader/Candidate;->suffix()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3}, Lorg/jline/reader/Candidate;->complete()Z

    move-result v12

    move-object v5, v13

    move-object v7, v4

    invoke-direct/range {v5 .. v12}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4632
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4635
    .end local v2    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v3    # "first":Lorg/jline/reader/Candidate;
    .end local v4    # "disp":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 4637
    :cond_3
    return-void
.end method

.method private namedWidget(Ljava/lang/String;Lorg/jline/reader/Widget;)Lorg/jline/reader/Widget;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "widget"    # Lorg/jline/reader/Widget;

    .line 3802
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/jline/reader/impl/LineReaderImpl$1;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    return-object v0
.end method

.method private promptLines()I
    .locals 4

    .line 4660
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/jline/utils/AttributedStringBuilder;->append([Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->insertSecondaryPrompts(Lorg/jline/utils/AttributedString;Ljava/util/List;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    .line 4661
    .local v0, "text":Lorg/jline/utils/AttributedString;
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-virtual {v3}, Lorg/jline/utils/Display;->delayLineWrap()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/jline/utils/AttributedString;->columnSplitLength(IZZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method private pushBackBinding()V
    .locals 1

    .line 2763
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->pushBackBinding(Z)V

    .line 2764
    return-void
.end method

.method private pushBackBinding(Z)V
    .locals 2
    .param p1, "skip"    # Z

    .line 2767
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v0

    .line 2768
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2769
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v1, v0}, Lorg/jline/keymap/BindingReader;->runMacro(Ljava/lang/String;)V

    .line 2770
    iput-boolean p1, p0, Lorg/jline/reader/impl/LineReaderImpl;->skipRedisplay:Z

    .line 2772
    :cond_0
    return-void
.end method

.method private rebind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 3
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "prevBinding"    # Ljava/lang/String;
    .param p4, "newBinding"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 6266
    .local p1, "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    if-lez p4, :cond_0

    const/16 v0, 0x80

    if-ge p4, v0, :cond_0

    .line 6267
    new-instance v0, Lorg/jline/reader/Reference;

    invoke-direct {v0, p2}, Lorg/jline/reader/Reference;-><init>(Ljava/lang/String;)V

    .line 6268
    .local v0, "ref":Lorg/jline/reader/Reference;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string v2, "self-insert"

    invoke-direct {p0, p1, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6269
    invoke-static {p4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 6271
    .end local v0    # "ref":Lorg/jline/reader/Reference;
    :cond_0
    return-void
.end method

.method private removeIndentation()V
    .locals 6

    .line 2212
    const-string v0, "indentation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2213
    .local v0, "indent":I
    if-lez v0, :cond_2

    .line 2214
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 2215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 2216
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 2217
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 2218
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->delete()Z

    .line 2215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2220
    :cond_0
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->move(I)I

    .line 2224
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->move(I)I

    .line 2226
    :cond_2
    return-void
.end method

.method private vifindchar(Z)Z
    .locals 6
    .param p1, "repeat"    # Z

    .line 2000
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findDir:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2001
    return v1

    .line 2003
    :cond_0
    iget v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v2, :cond_1

    .line 2004
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda0;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 2006
    :cond_1
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->findTailAdd:I

    if-eqz v3, :cond_3

    .line 2007
    if-lez v0, :cond_2

    .line 2008
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->nextChar()I

    move-result v0

    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->findChar:I

    if-ne v0, v3, :cond_3

    .line 2009
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_0

    .line 2012
    :cond_2
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v0

    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->findChar:I

    if-ne v0, v3, :cond_3

    .line 2013
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v3, -0x1

    invoke-interface {v0, v3}, Lorg/jline/reader/Buffer;->move(I)I

    .line 2017
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 2018
    .local v0, "cursor":I
    :cond_4
    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v3, :cond_8

    .line 2020
    :cond_5
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->findDir:I

    invoke-interface {v3, v4}, Lorg/jline/reader/Buffer;->move(I)I

    .line 2021
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    const/16 v4, 0xa

    if-lez v3, :cond_6

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->length()I

    move-result v5

    if-ge v3, v5, :cond_6

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 2022
    invoke-interface {v3}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v3

    iget v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->findChar:I

    if-eq v3, v5, :cond_6

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 2023
    invoke-interface {v3}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 2024
    :cond_6
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 2025
    invoke-interface {v3}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 2026
    :cond_7
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v0}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 2027
    return v1

    .line 2030
    :cond_8
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->findTailAdd:I

    if-eqz v1, :cond_9

    .line 2031
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 2033
    :cond_9
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->findDir:I

    if-ne v1, v2, :cond_a

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViMoveOperation()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2034
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 2036
    :cond_a
    return v2
.end method

.method private vigetkey()I
    .locals 5

    .line 1985
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->readCharacter()I

    move-result v0

    .line 1986
    .local v0, "ch":I
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMaps:Ljava/util/Map;

    const-string v2, "main"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/keymap/KeyMap;

    .line 1987
    .local v1, "km":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    if-eqz v1, :cond_0

    .line 1988
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Lorg/jline/keymap/KeyMap;->getBound(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/reader/Binding;

    .line 1989
    .local v2, "b":Lorg/jline/reader/Binding;
    instance-of v3, v2, Lorg/jline/reader/Reference;

    if-eqz v3, :cond_0

    .line 1990
    move-object v3, v2

    check-cast v3, Lorg/jline/reader/Reference;

    invoke-virtual {v3}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v3

    .line 1991
    .local v3, "func":Ljava/lang/String;
    const-string v4, "abort"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1992
    const/4 v4, -0x1

    return v4

    .line 1996
    .end local v2    # "b":Lorg/jline/reader/Binding;
    .end local v3    # "func":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private wrap(Lorg/jline/reader/ParsedLine;)Lorg/jline/reader/CompletingParsedLine;
    .locals 1
    .param p1, "line"    # Lorg/jline/reader/ParsedLine;

    .line 4555
    instance-of v0, p1, Lorg/jline/reader/CompletingParsedLine;

    if-eqz v0, :cond_0

    .line 4556
    move-object v0, p1

    check-cast v0, Lorg/jline/reader/CompletingParsedLine;

    return-object v0

    .line 4558
    :cond_0
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$2;

    invoke-direct {v0, p0, p1}, Lorg/jline/reader/impl/LineReaderImpl$2;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Lorg/jline/reader/ParsedLine;)V

    return-object v0
.end method


# virtual methods
.method protected acceptAndHold()Z
    .locals 1

    .line 2940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextCommandFromHistory:Z

    .line 2941
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->acceptLine()Z

    .line 2942
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2943
    const v0, 0x7fffffff

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextHistoryId:I

    .line 2944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextCommandFromHistory:Z

    .line 2946
    :cond_0
    iget-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextCommandFromHistory:Z

    return v0
.end method

.method protected acceptAndInferNextHistory()Z
    .locals 3

    .line 2963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextCommandFromHistory:Z

    .line 2964
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->acceptLine()Z

    .line 2965
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2966
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->last()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->searchBackwards(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextHistoryId:I

    .line 2967
    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->size()I

    move-result v0

    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextHistoryId:I

    add-int/lit8 v2, v1, 0x1

    if-le v0, v2, :cond_0

    .line 2968
    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextHistoryId:I

    .line 2969
    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextCommandFromHistory:Z

    .line 2972
    :cond_0
    iget-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextCommandFromHistory:Z

    return v0
.end method

.method protected acceptLine()Z
    .locals 7

    .line 2976
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->parsedLine:Lorg/jline/reader/ParsedLine;

    .line 2977
    const/4 v0, 0x0

    .line 2978
    .local v0, "curPos":I
    sget-object v1, Lorg/jline/reader/LineReader$Option;->DISABLE_EVENT_EXPANSION:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2980
    :try_start_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2981
    .local v1, "str":Ljava/lang/String;
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->expander:Lorg/jline/reader/Expander;

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v3, v4, v1}, Lorg/jline/reader/Expander;->expandHistory(Lorg/jline/reader/History;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2982
    .local v3, "exp":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2983
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->clear()Z

    .line 2984
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v3}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 2985
    sget-object v4, Lorg/jline/reader/LineReader$Option;->HISTORY_VERIFY:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 2986
    return v2

    .line 2991
    .end local v1    # "str":Ljava/lang/String;
    .end local v3    # "exp":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2989
    :catch_0
    move-exception v1

    .line 2994
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    move v0, v1

    .line 2995
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->parser:Lorg/jline/reader/Parser;

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v4

    sget-object v5, Lorg/jline/reader/Parser$ParseContext;->ACCEPT_LINE:Lorg/jline/reader/Parser$ParseContext;

    invoke-interface {v1, v3, v4, v5}, Lorg/jline/reader/Parser;->parse(Ljava/lang/String;ILorg/jline/reader/Parser$ParseContext;)Lorg/jline/reader/ParsedLine;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->parsedLine:Lorg/jline/reader/ParsedLine;
    :try_end_1
    .catch Lorg/jline/reader/EOFError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/jline/reader/SyntaxError; {:try_start_1 .. :try_end_1} :catch_1

    .line 3010
    goto :goto_1

    .line 3008
    :catch_1
    move-exception v1

    .line 3011
    :goto_1
    const-string v1, "callback-finish"

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->callWidget(Ljava/lang/String;)V

    .line 3012
    sget-object v1, Lorg/jline/reader/impl/LineReaderImpl$State;->DONE:Lorg/jline/reader/impl/LineReaderImpl$State;

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->state:Lorg/jline/reader/impl/LineReaderImpl$State;

    .line 3013
    return v2

    .line 2996
    :catch_2
    move-exception v1

    .line 2997
    .local v1, "e":Lorg/jline/reader/EOFError;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2998
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lorg/jline/reader/EOFError;->getOpenBrackets()I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->indention(ILjava/lang/StringBuilder;)V

    .line 2999
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 3000
    .local v4, "curMove":I
    sget-object v5, Lorg/jline/reader/LineReader$Option;->INSERT_BRACKET:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v5}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lorg/jline/reader/EOFError;->getOpenBrackets()I

    move-result v5

    if-le v5, v2, :cond_2

    invoke-virtual {v1}, Lorg/jline/reader/EOFError;->getNextClosingBracket()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3001
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3002
    invoke-virtual {v1}, Lorg/jline/reader/EOFError;->getOpenBrackets()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5, v3}, Lorg/jline/reader/impl/LineReaderImpl;->indention(ILjava/lang/StringBuilder;)V

    .line 3003
    invoke-virtual {v1}, Lorg/jline/reader/EOFError;->getNextClosingBracket()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3005
    :cond_2
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 3006
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int v6, v0, v4

    invoke-interface {v5, v6}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 3007
    return v2
.end method

.method protected acceptLineAndDownHistory()Z
    .locals 3

    .line 2950
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextCommandFromHistory:Z

    .line 2951
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->acceptLine()Z

    .line 2952
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextHistoryId:I

    if-gez v0, :cond_0

    .line 2953
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->index()I

    move-result v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextHistoryId:I

    .line 2955
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->size()I

    move-result v0

    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextHistoryId:I

    add-int/lit8 v2, v1, 0x1

    if-le v0, v2, :cond_1

    .line 2956
    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextHistoryId:I

    .line 2957
    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextCommandFromHistory:Z

    .line 2959
    :cond_1
    iget-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->nextCommandFromHistory:Z

    return v0
.end method

.method public addCommandsInBuffer(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1077
    .local p1, "commands":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->commandsBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1078
    return-void
.end method

.method protected argumentBase()Z
    .locals 2

    .line 2393
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->repeatCount:I

    if-lez v0, :cond_0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 2394
    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->universal:I

    .line 2395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->isArgDigit:Z

    .line 2396
    return v0

    .line 2398
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected backwardChar()Z
    .locals 2

    .line 2371
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected backwardDeleteChar()Z
    .locals 2

    .line 3250
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 3251
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda151;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda151;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 3253
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    if-nez v0, :cond_1

    .line 3254
    const/4 v0, 0x0

    return v0

    .line 3256
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 3257
    const/4 v0, 0x1

    return v0
.end method

.method protected backwardDeleteWord()Z
    .locals 3

    .line 1620
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1621
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda153;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda153;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1623
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 1624
    .local v0, "cursor":I
    :cond_1
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v1, :cond_3

    .line 1625
    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1626
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1628
    :cond_2
    :goto_1
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1629
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1632
    :cond_3
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 1633
    const/4 v1, 0x1

    return v1
.end method

.method public backwardKillLine()Z
    .locals 5

    .line 5620
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 5621
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda5;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 5623
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    if-nez v0, :cond_1

    .line 5624
    const/4 v0, 0x0

    return v0

    .line 5626
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 5627
    .local v0, "cp":I
    move v1, v0

    .line 5628
    .local v1, "beg":I
    :cond_2
    :goto_0
    iget v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v2, :cond_5

    .line 5629
    if-nez v1, :cond_3

    .line 5630
    goto :goto_2

    .line 5632
    :cond_3
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 5633
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5635
    :cond_4
    :goto_1
    if-lez v1, :cond_2

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v2, v4}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v2, v4}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 5636
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 5640
    :cond_5
    :goto_2
    sub-int v2, v0, v1

    .line 5641
    .local v2, "num":I
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    sub-int v4, v0, v1

    invoke-interface {v3, v4, v0}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5642
    .local v3, "killed":Ljava/lang/String;
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v1}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 5643
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v2}, Lorg/jline/reader/Buffer;->delete(I)I

    .line 5644
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    invoke-virtual {v4, v3}, Lorg/jline/reader/impl/KillRing;->add(Ljava/lang/String;)V

    .line 5645
    const/4 v4, 0x1

    return v4
.end method

.method protected backwardKillWord()Z
    .locals 4

    .line 1664
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1665
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda9;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1667
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 1668
    .local v0, "x":I
    :cond_1
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v1, :cond_3

    .line 1669
    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1670
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1672
    :cond_2
    :goto_1
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1673
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1676
    :cond_3
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    invoke-interface {v2, v0, v3}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/reader/impl/KillRing;->addBackwards(Ljava/lang/String;)V

    .line 1677
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 1678
    const/4 v1, 0x1

    return v1
.end method

.method protected backwardWord()Z
    .locals 4

    .line 1480
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1481
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda181;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda181;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1483
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 1484
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    const/4 v2, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1485
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_0

    .line 1487
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_1

    .line 1491
    :cond_2
    return v1
.end method

.method public beep()Z
    .locals 6

    .line 5824
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$BellType;->AUDIBLE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

    .line 5825
    .local v0, "bell_preference":Lorg/jline/reader/impl/LineReaderImpl$BellType;
    const-string v1, "bell-style"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "visible"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "audible"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 5837
    :pswitch_0
    const-string v1, "prefer-visible-bell"

    invoke-virtual {p0, v1, v4}, Lorg/jline/reader/impl/LineReaderImpl;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5838
    sget-object v1, Lorg/jline/reader/impl/LineReaderImpl$BellType;->VISIBLE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

    goto :goto_2

    :cond_1
    sget-object v1, Lorg/jline/reader/impl/LineReaderImpl$BellType;->AUDIBLE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

    :goto_2
    move-object v0, v1

    goto :goto_3

    .line 5834
    :pswitch_1
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$BellType;->VISIBLE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

    .line 5835
    goto :goto_3

    .line 5831
    :pswitch_2
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$BellType;->AUDIBLE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

    .line 5832
    goto :goto_3

    .line 5828
    :pswitch_3
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$BellType;->NONE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

    .line 5829
    nop

    .line 5841
    :goto_3
    sget-object v1, Lorg/jline/reader/impl/LineReaderImpl$BellType;->VISIBLE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

    if-ne v0, v1, :cond_3

    .line 5842
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->flash_screen:Lorg/jline/utils/InfoCmp$Capability;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v5}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->bell:Lorg/jline/utils/InfoCmp$Capability;

    new-array v4, v4, [Ljava/lang/Object;

    .line 5843
    invoke-interface {v1, v2, v4}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5844
    :cond_2
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->flush()V

    goto :goto_4

    .line 5846
    :cond_3
    sget-object v1, Lorg/jline/reader/impl/LineReaderImpl$BellType;->AUDIBLE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

    if-ne v0, v1, :cond_4

    .line 5847
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->bell:Lorg/jline/utils/InfoCmp$Capability;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5848
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->flush()V

    .line 5851
    :cond_4
    :goto_4
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x276a24fe -> :sswitch_4
        0xddf -> :sswitch_3
        0x1ad6f -> :sswitch_2
        0x33af38 -> :sswitch_1
        0x1bd1f072 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public beginPaste()Z
    .locals 4

    .line 5773
    const-string v0, "\u001b[201~"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->doReadStringUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5774
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lorg/jline/reader/LineReader$RegionType;->PASTE:Lorg/jline/reader/LineReader$RegionType;

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    .line 5775
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getBuffer()Lorg/jline/reader/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    .line 5776
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getBuffer()Lorg/jline/reader/Buffer;

    move-result-object v1

    const/16 v2, 0xd

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 5777
    const/4 v1, 0x1

    return v1
.end method

.method protected beginningOfBufferOrHistory()Z
    .locals 2

    .line 3056
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->findbol()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3057
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 3058
    const/4 v0, 0x1

    return v0

    .line 3060
    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->beginningOfHistory()Z

    move-result v0

    return v0
.end method

.method protected beginningOfHistory()Z
    .locals 1

    .line 3065
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3066
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->current()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setBuffer(Ljava/lang/String;)V

    .line 3067
    const/4 v0, 0x1

    return v0

    .line 3069
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected beginningOfLine()Z
    .locals 2

    .line 3285
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v0, :cond_1

    .line 3286
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3288
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected beginningOfLineHist()Z
    .locals 3

    .line 3092
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 3093
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda172;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda172;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 3095
    :cond_0
    :goto_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v0, :cond_2

    .line 3096
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->findbol()I

    move-result v0

    .line 3097
    .local v0, "bol":I
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3098
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v0}, Lorg/jline/reader/Buffer;->cursor(I)Z

    goto :goto_1

    .line 3100
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->moveHistory(Z)Z

    .line 3101
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v1}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 3103
    .end local v0    # "bol":I
    :goto_1
    goto :goto_0

    .line 3104
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected buildStyle(Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 5470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u001b["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jline/utils/AttributedString;->fromAnsi(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedString;->styleAt(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method protected builtinWidgets()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;"
        }
    .end annotation

    .line 3646
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3647
    .local v0, "widgets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Widget;>;"
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda177;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda177;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "accept-and-infer-next-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3648
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda147;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda147;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "accept-and-hold"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3649
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda159;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda159;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "accept-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3650
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda171;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda171;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "accept-line-and-down-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3651
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda183;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda183;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "argument-base"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3652
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda7;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "backward-char"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3653
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda19;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "backward-delete-char"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3654
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda31;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "backward-delete-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3655
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda41;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "backward-kill-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3656
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda53;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "backward-kill-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3657
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda144;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda144;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "backward-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3658
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda109;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda109;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "beep"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3659
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda121;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda121;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "beginning-of-buffer-or-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3660
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda132;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda132;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "beginning-of-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3661
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda140;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda140;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "beginning-of-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3662
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda141;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda141;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "beginning-of-line-hist"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3663
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda142;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda142;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "capitalize-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3664
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda143;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda143;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "clear"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3665
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda145;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda145;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "clear-screen"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3666
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda146;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda146;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "complete-prefix"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3667
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda148;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda148;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "complete-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3668
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda149;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda149;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "copy-prev-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3669
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda150;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda150;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "copy-region-as-kill"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3670
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda151;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda151;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "delete-char"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3671
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda152;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda152;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "delete-char-or-list"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3672
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda153;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda153;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "delete-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3673
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda154;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda154;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "digit-argument"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3674
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda156;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda156;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "do-lowercase-version"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3675
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda157;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda157;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "down-case-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3676
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda158;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda158;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "down-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3677
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda160;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda160;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "down-line-or-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3678
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda161;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda161;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "down-line-or-search"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3679
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda162;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda162;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "down-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3680
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda163;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda163;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "edit-and-execute-command"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3681
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda164;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda164;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "emacs-editing-mode"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3682
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda165;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda165;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "emacs-backward-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3683
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda167;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda167;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "emacs-forward-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3684
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda168;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda168;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "end-of-buffer-or-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3685
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda169;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda169;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "end-of-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3686
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda170;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda170;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "end-of-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3687
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda172;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda172;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "end-of-line-hist"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3688
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda173;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda173;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "exchange-point-and-mark"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3689
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda174;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda174;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "expand-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3690
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda175;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda175;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "expand-or-complete"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3691
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda176;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda176;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "expand-or-complete-prefix"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3692
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda178;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda178;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "expand-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3693
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda179;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda179;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "fresh-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3694
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda180;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda180;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "forward-char"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3695
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda181;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda181;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "forward-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3696
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda182;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda182;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "history-incremental-search-backward"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3697
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda184;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda184;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "history-incremental-search-forward"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3698
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda185;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda185;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "history-search-backward"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3699
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda186;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda186;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "history-search-forward"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3700
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda187;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda187;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "insert-close-curly"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3701
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda1;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "insert-close-paren"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3702
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda2;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "insert-close-square"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3703
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda3;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "insert-comment"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3704
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda4;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "kill-buffer"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3705
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda5;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "kill-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3706
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda6;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "kill-region"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3707
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda8;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "kill-whole-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3708
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda9;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "kill-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3709
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda10;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "list-choices"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3710
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda12;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "menu-complete"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3711
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda13;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "menu-expand-or-complete"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3712
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda14;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "neg-argument"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3713
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda15;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "overwrite-mode"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3715
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda16;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "quoted-insert"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3716
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda17;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "redisplay"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3717
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda18;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "redraw-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3718
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda20;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "redo"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3719
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda21;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "self-insert"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3720
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda23;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "self-insert-unmeta"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3721
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda24;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "abort"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3722
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda25;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "set-mark-command"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3723
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda26;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "transpose-chars"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3724
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda27;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "transpose-words"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3725
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda28;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "undefined-key"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3726
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda29;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "universal-argument"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3727
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda30;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "undo"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3728
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda32;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "up-case-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3729
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda34;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "up-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3730
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda35;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "up-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3731
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda36;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "up-line-or-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3732
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda37;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "up-line-or-search"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3733
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda38;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-add-eol"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3734
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda39;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-add-next"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3735
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda166;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda166;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-backward-char"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3736
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda40;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-backward-delete-char"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3737
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda155;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda155;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-backward-blank-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3738
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda42;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-backward-blank-word-end"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3739
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda43;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-backward-kill-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3740
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda45;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-backward-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3741
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda46;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-backward-word-end"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3742
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda47;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-beginning-of-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3743
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda48;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-cmd-mode"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3744
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda49;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-digit-or-beginning-of-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3745
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda50;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-down-line-or-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3746
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda51;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-change-to"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3747
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda52;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-change-eol"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3748
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda188;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda188;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-change-whole-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3749
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda11;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-delete-char"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3750
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda22;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-delete"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3751
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda33;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-end-of-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3752
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda44;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-kill-eol"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3753
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda55;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-first-non-blank"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3754
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda66;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda66;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-find-next-char"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3755
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda77;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda77;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-find-next-char-skip"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3756
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda88;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda88;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-find-prev-char"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3757
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda98;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda98;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-find-prev-char-skip"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3758
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda99;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda99;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-forward-blank-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3759
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda101;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda101;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-forward-blank-word-end"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3760
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda102;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda102;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-forward-char"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3761
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda103;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda103;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-forward-word"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3762
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda103;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda103;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3763
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda104;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda104;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-forward-word-end"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3764
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda105;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda105;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-history-search-backward"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3765
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda106;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda106;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-history-search-forward"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3766
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda107;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda107;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-insert"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3767
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda108;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda108;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-insert-bol"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3768
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda110;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda110;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-insert-comment"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3769
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda112;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda112;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-join"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3770
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda113;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda113;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-kill-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3771
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda114;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda114;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-match-bracket"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3772
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda115;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda115;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-open-line-above"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3773
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda116;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda116;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-open-line-below"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3774
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda117;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda117;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-put-after"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3775
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda118;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda118;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-put-before"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3776
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda119;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda119;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-repeat-find"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3777
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda120;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda120;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-repeat-search"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3778
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda123;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda123;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-replace-chars"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3779
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda0;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-rev-repeat-find"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3780
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda124;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda124;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-rev-repeat-search"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3781
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda125;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda125;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-swap-case"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3782
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda126;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda126;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-up-line-or-history"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3783
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda127;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda127;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-yank"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3784
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda128;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda128;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "vi-yank-whole-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3785
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda129;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda129;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "visual-line-mode"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3786
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda130;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda130;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "visual-mode"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3787
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda131;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda131;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "what-cursor-position"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3788
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda134;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda134;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "yank"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3789
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda135;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda135;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "yank-pop"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3790
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda136;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda136;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "mouse"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3791
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda137;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda137;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "begin-paste"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3792
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda138;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda138;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "terminal-focus-in"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3793
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda139;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda139;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    const-string v2, "terminal-focus-out"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->addBuiltinWidget(Ljava/util/Map;Ljava/lang/String;Lorg/jline/reader/Widget;)V

    .line 3794
    return-object v0
.end method

.method public callWidget(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 840
    :try_start_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 841
    iget-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->reading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 846
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->builtinWidgets:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/Widget;

    .local v1, "w":Lorg/jline/reader/Widget;
    goto :goto_0

    .line 849
    .end local v1    # "w":Lorg/jline/reader/Widget;
    :cond_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->widgets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/Widget;

    .line 851
    .restart local v1    # "w":Lorg/jline/reader/Widget;
    :goto_0
    if-eqz v1, :cond_1

    .line 852
    invoke-interface {v1}, Lorg/jline/reader/Widget;->apply()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    .end local v1    # "w":Lorg/jline/reader/Widget;
    :cond_1
    goto :goto_1

    .line 854
    :catchall_0
    move-exception v1

    .line 855
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x4

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Error executing widget \'"

    aput-object v4, v2, v3

    aput-object p1, v2, v0

    const/4 v0, 0x2

    const-string v3, "\'"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 858
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 859
    nop

    .line 860
    return-void

    .line 842
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Widgets can only be called during a `readLine` call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "name":Ljava/lang/String;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 858
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 859
    throw v0
.end method

.method protected capitalizeWord()Z
    .locals 6

    .line 1742
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1743
    .local v0, "count":I
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    .line 1744
    .local v1, "cursor":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "count":I
    .local v2, "count":I
    const/4 v3, 0x1

    if-lez v0, :cond_4

    .line 1745
    const/4 v0, 0x1

    .line 1746
    .local v0, "first":Z
    :goto_1
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v4

    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1747
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v3}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_1

    .line 1749
    :cond_0
    :goto_2
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v4

    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->isAlpha(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1750
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v3}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_2

    .line 1752
    :cond_1
    :goto_3
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v4

    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1753
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    if-eqz v0, :cond_2

    .line 1754
    invoke-interface {v4}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    goto :goto_4

    .line 1755
    :cond_2
    invoke-interface {v4}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    .line 1753
    :goto_4
    invoke-interface {v4, v5}, Lorg/jline/reader/Buffer;->currChar(I)Z

    .line 1756
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v3}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1757
    const/4 v0, 0x0

    goto :goto_3

    .line 1759
    .end local v0    # "first":Z
    :cond_3
    move v0, v2

    goto/16 :goto_0

    .line 1760
    :cond_4
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_5

    .line 1761
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 1763
    :cond_5
    return v3
.end method

.method protected cleanup()V
    .locals 4

    .line 2548
    sget-object v0, Lorg/jline/reader/LineReader$Option;->ERASE_LINE_ON_FINISH:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2549
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->copy()Lorg/jline/reader/Buffer;

    move-result-object v0

    .line 2550
    .local v0, "oldBuffer":Lorg/jline/reader/Buffer;
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    .line 2551
    .local v1, "oldPrompt":Lorg/jline/utils/AttributedString;
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->clear()Z

    .line 2552
    new-instance v2, Lorg/jline/utils/AttributedString;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    .line 2553
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->doCleanup(Z)V

    .line 2554
    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    .line 2555
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v0}, Lorg/jline/reader/Buffer;->copyFrom(Lorg/jline/reader/Buffer;)V

    .line 2556
    .end local v0    # "oldBuffer":Lorg/jline/reader/Buffer;
    .end local v1    # "oldPrompt":Lorg/jline/utils/AttributedString;
    goto :goto_0

    .line 2557
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->doCleanup(Z)V

    .line 2559
    :goto_0
    return-void
.end method

.method public clear()Z
    .locals 3

    .line 5793
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jline/utils/Display;->update(Ljava/util/List;I)V

    .line 5794
    const/4 v0, 0x1

    return v0
.end method

.method protected clearChoices()Z
    .locals 6

    .line 4909
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/jline/reader/impl/LineReaderImpl;->doList(Ljava/util/List;Ljava/lang/String;ZLjava/util/function/BiFunction;Z)Z

    move-result v0

    return v0
.end method

.method public clearScreen()Z
    .locals 4

    .line 5802
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->clear_screen:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5804
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "windows-conemu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5805
    const-string v0, "org.jline.terminal.conemu.disable-activate"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5806
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\u001b[9999E"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 5808
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-static {v0, v2}, Lorg/jline/utils/Status;->getStatus(Lorg/jline/terminal/Terminal;Z)Lorg/jline/utils/Status;

    move-result-object v0

    .line 5809
    .local v0, "status":Lorg/jline/utils/Status;
    if-eqz v0, :cond_1

    .line 5810
    invoke-virtual {v0}, Lorg/jline/utils/Status;->reset()V

    .line 5812
    :cond_1
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->redrawLine()Z

    .line 5813
    .end local v0    # "status":Lorg/jline/utils/Status;
    goto :goto_0

    .line 5814
    :cond_2
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->println()V

    .line 5816
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected completePrefix()Z
    .locals 3

    .line 4354
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->insertTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4355
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->selfInsert()Z

    move-result v0

    return v0

    .line 4357
    :cond_0
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->Complete:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->MENU_COMPLETE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->doComplete(Lorg/jline/reader/impl/LineReaderImpl$CompletionType;ZZ)Z

    move-result v0

    return v0
.end method

.method protected completeWord()Z
    .locals 3

    .line 4330
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->insertTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4331
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->selfInsert()Z

    move-result v0

    return v0

    .line 4333
    :cond_0
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->Complete:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->MENU_COMPLETE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->doComplete(Lorg/jline/reader/impl/LineReaderImpl$CompletionType;ZZ)Z

    move-result v0

    return v0
.end method

.method protected computePost(Ljava/util/List;Lorg/jline/reader/Candidate;Ljava/util/List;Ljava/lang/String;)Lorg/jline/reader/impl/LineReaderImpl$PostResult;
    .locals 11
    .param p2, "selection"    # Lorg/jline/reader/Candidate;
    .param p4, "completed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;",
            "Lorg/jline/reader/Candidate;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/jline/reader/impl/LineReaderImpl$PostResult;"
        }
    .end annotation

    .line 5099
    .local p1, "possible":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local p3, "ordered":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda73;

    invoke-direct {v6, v0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda73;-><init>(Lorg/jline/utils/Display;)V

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v7

    sget-object v0, Lorg/jline/reader/LineReader$Option;->AUTO_GROUP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v8

    sget-object v0, Lorg/jline/reader/LineReader$Option;->GROUP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v9

    sget-object v0, Lorg/jline/reader/LineReader$Option;->LIST_ROWS_FIRST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v10}, Lorg/jline/reader/impl/LineReaderImpl;->computePost(Ljava/util/List;Lorg/jline/reader/Candidate;Ljava/util/List;Ljava/lang/String;Ljava/util/function/Function;IZZZ)Lorg/jline/reader/impl/LineReaderImpl$PostResult;

    move-result-object v0

    return-object v0
.end method

.method protected computePost(Ljava/util/List;Lorg/jline/reader/Candidate;Ljava/util/List;Ljava/lang/String;Ljava/util/function/Function;IZZZ)Lorg/jline/reader/impl/LineReaderImpl$PostResult;
    .locals 9
    .param p2, "selection"    # Lorg/jline/reader/Candidate;
    .param p4, "completed"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "autoGroup"    # Z
    .param p8, "groupName"    # Z
    .param p9, "rowsFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;",
            "Lorg/jline/reader/Candidate;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;IZZZ)",
            "Lorg/jline/reader/impl/LineReaderImpl$PostResult;"
        }
    .end annotation

    .line 5103
    .local p1, "possible":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local p3, "ordered":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local p5, "wcwidth":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5104
    .local v1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p8, :cond_7

    .line 5105
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getGroupComparator()Ljava/util/Comparator;

    move-result-object v2

    .line 5107
    .local v2, "groupComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 5108
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_0

    .line 5109
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    nop

    .line 5110
    .local v3, "sorted":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Candidate;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/reader/Candidate;

    .line 5111
    .local v5, "cand":Lorg/jline/reader/Candidate;
    invoke-virtual {v5}, Lorg/jline/reader/Candidate;->group()Ljava/lang/String;

    move-result-object v6

    .line 5112
    .local v6, "group":Ljava/lang/String;
    if-eqz v6, :cond_1

    move-object v7, v6

    goto :goto_2

    :cond_1
    const-string v7, ""

    :goto_2
    new-instance v8, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda87;

    invoke-direct {v8}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda87;-><init>()V

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 5113
    invoke-virtual {v5}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5114
    .end local v5    # "cand":Lorg/jline/reader/Candidate;
    .end local v6    # "group":Ljava/lang/String;
    goto :goto_1

    .line 5115
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 5116
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Candidate;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5117
    .restart local v6    # "group":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 5118
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getOthersGroupName()Ljava/lang/String;

    move-result-object v6

    .line 5120
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz p7, :cond_4

    .line 5121
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5123
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5124
    if-eqz v0, :cond_5

    .line 5125
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5127
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Candidate;>;>;"
    .end local v6    # "group":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 5128
    .end local v2    # "groupComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    .end local v3    # "sorted":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lorg/jline/reader/Candidate;>;>;"
    :cond_6
    goto :goto_5

    .line 5129
    :cond_7
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 5130
    .local v2, "groups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 5131
    .local v3, "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lorg/jline/reader/Candidate;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/reader/Candidate;

    .line 5132
    .local v5, "cand":Lorg/jline/reader/Candidate;
    invoke-virtual {v5}, Lorg/jline/reader/Candidate;->group()Ljava/lang/String;

    move-result-object v6

    .line 5133
    .restart local v6    # "group":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 5134
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5136
    :cond_8
    invoke-virtual {v5}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5137
    .end local v5    # "cand":Lorg/jline/reader/Candidate;
    .end local v6    # "group":Ljava/lang/String;
    goto :goto_4

    .line 5138
    :cond_9
    if-eqz p7, :cond_a

    .line 5139
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5141
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5142
    if-eqz v0, :cond_b

    .line 5143
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5146
    .end local v2    # "groups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "sorted":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lorg/jline/reader/Candidate;>;"
    :cond_b
    :goto_5
    move-object v2, p0

    move-object v3, v1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Lorg/jline/reader/impl/LineReaderImpl;->toColumns(Ljava/util/List;Lorg/jline/reader/Candidate;Ljava/lang/String;Ljava/util/function/Function;IZ)Lorg/jline/reader/impl/LineReaderImpl$PostResult;

    move-result-object v2

    return-object v2
.end method

.method protected copyPrevWord()Z
    .locals 5

    .line 1682
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 1683
    return v1

    .line 1685
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 1687
    .local v0, "t0":I
    :goto_0
    move v2, v0

    .line 1688
    .local v2, "t1":I
    :goto_1
    if-lez v0, :cond_1

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1689
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1691
    :cond_1
    :goto_2
    if-lez v0, :cond_2

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1692
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1694
    :cond_2
    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-nez v3, :cond_3

    .line 1695
    nop

    .line 1701
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v0, v2}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 1702
    return v4

    .line 1697
    :cond_3
    if-nez v0, :cond_4

    .line 1698
    return v1

    .line 1697
    :cond_4
    goto :goto_0
.end method

.method public copyRegionAsKill()Z
    .locals 1

    .line 5653
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->doCopyKillRegion(Z)Z

    move-result v0

    return v0
.end method

.method protected deactivateRegion()Z
    .locals 1

    .line 3578
    sget-object v0, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    .line 3579
    const/4 v0, 0x1

    return v0
.end method

.method public defaultKeyMaps()Ljava/util/Map;
    .locals 7
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

    .line 5914
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5915
    .local v0, "keyMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;>;"
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->emacs()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    const-string v2, "emacs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5916
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->viCmd()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    const-string v3, "vicmd"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5917
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->viInsertion()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    const-string v3, "viins"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5918
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->menu()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    const-string v4, "menu"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5919
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->viOpp()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    const-string v4, "viopp"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5920
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->visual()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    const-string v4, "visual"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5921
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->safe()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    const-string v4, ".safe"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5922
    const-string v1, "bind-tty-special-chars"

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lorg/jline/reader/impl/LineReaderImpl;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5923
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v1

    .line 5924
    .local v1, "attr":Lorg/jline/terminal/Attributes;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/keymap/KeyMap;

    invoke-direct {p0, v4, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bindConsoleChars(Lorg/jline/keymap/KeyMap;Lorg/jline/terminal/Attributes;)V

    .line 5925
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/keymap/KeyMap;

    invoke-direct {p0, v3, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bindConsoleChars(Lorg/jline/keymap/KeyMap;Lorg/jline/terminal/Attributes;)V

    .line 5928
    .end local v1    # "attr":Lorg/jline/terminal/Attributes;
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/keymap/KeyMap;

    .line 5929
    .local v3, "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    new-instance v4, Lorg/jline/reader/Reference;

    const-string v5, "self-insert"

    invoke-direct {v4, v5}, Lorg/jline/reader/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jline/keymap/KeyMap;->setUnicode(Ljava/lang/Object;)V

    .line 5930
    const-wide/16 v4, 0x3e8

    const-string v6, "ambiguous-binding"

    invoke-virtual {p0, v6, v4, v5}, Lorg/jline/reader/impl/LineReaderImpl;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/jline/keymap/KeyMap;->setAmbiguousTimeout(J)V

    .line 5931
    .end local v3    # "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    goto :goto_0

    .line 5933
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/keymap/KeyMap;

    const-string v2, "main"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5934
    return-object v0
.end method

.method protected deleteChar()Z
    .locals 2

    .line 3299
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 3300
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda19;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 3302
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3303
    const/4 v0, 0x0

    return v0

    .line 3305
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->delete(I)I

    .line 3306
    const/4 v0, 0x1

    return v0
.end method

.method protected deleteCharOrList()Z
    .locals 3

    .line 4370
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4373
    :cond_0
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->List:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->MENU_COMPLETE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->doComplete(Lorg/jline/reader/impl/LineReaderImpl$CompletionType;ZZ)Z

    move-result v0

    return v0

    .line 4371
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->deleteChar()Z

    move-result v0

    return v0
.end method

.method protected deleteWord()Z
    .locals 3

    .line 1767
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1768
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda31;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1770
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 1771
    .local v0, "x":I
    :cond_1
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v1, :cond_3

    .line 1772
    :goto_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1775
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1776
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1779
    :cond_3
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->delete(I)I

    .line 1780
    const/4 v1, 0x1

    return v1
.end method

.method protected digitArgument()Z
    .locals 4

    .line 2409
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v0

    .line 2410
    .local v0, "s":Ljava/lang/String;
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->repeatCount:I

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x30

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->repeatCount:I

    .line 2411
    iput-boolean v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->isArgDigit:Z

    .line 2412
    return v3
.end method

.method protected doCleanup(Z)V
    .locals 3
    .param p1, "nl"    # Z

    .line 2562
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 2563
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 2564
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getRows()I

    move-result v0

    if-lez v0, :cond_3

    .line 2565
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->doAutosuggestion:Z

    .line 2566
    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay(Z)V

    .line 2567
    if-eqz p1, :cond_1

    .line 2568
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->println()V

    .line 2570
    :cond_1
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->keypad_local:Lorg/jline/utils/InfoCmp$Capability;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 2571
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v1, Lorg/jline/terminal/Terminal$MouseTracking;->Off:Lorg/jline/terminal/Terminal$MouseTracking;

    invoke-interface {v0, v1}, Lorg/jline/terminal/Terminal;->trackMouse(Lorg/jline/terminal/Terminal$MouseTracking;)Z

    .line 2572
    sget-object v0, Lorg/jline/reader/LineReader$Option;->BRACKETED_PASTE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isTerminalDumb()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2573
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\u001b[?2004l"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 2574
    :cond_2
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->flush()V

    .line 2576
    :cond_3
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->moveToEnd()V

    .line 2577
    return-void
.end method

.method protected doComplete(Lorg/jline/reader/impl/LineReaderImpl$CompletionType;ZZ)Z
    .locals 1
    .param p1, "lst"    # Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .param p2, "useMenu"    # Z
    .param p3, "prefix"    # Z

    .line 4378
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jline/reader/impl/LineReaderImpl;->doComplete(Lorg/jline/reader/impl/LineReaderImpl$CompletionType;ZZZ)Z

    move-result v0

    return v0
.end method

.method protected doComplete(Lorg/jline/reader/impl/LineReaderImpl$CompletionType;ZZZ)Z
    .locals 18
    .param p1, "lst"    # Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .param p2, "useMenu"    # Z
    .param p3, "prefix"    # Z
    .param p4, "forSuggestion"    # Z

    .line 4383
    move-object/from16 v7, p0

    move-object/from16 v1, p1

    const-string v0, "disable-completion"

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v15, 0x1

    if-eqz v0, :cond_0

    .line 4384
    return v15

    .line 4388
    :cond_0
    sget-object v0, Lorg/jline/reader/LineReader$Option;->DISABLE_EVENT_EXPANSION:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v7, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    .line 4390
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->expandHistory()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 4391
    return v15

    .line 4396
    :cond_1
    goto :goto_0

    .line 4393
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 4394
    .local v0, "e":Ljava/lang/Exception;
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error while expanding history"

    aput-object v4, v3, v2

    aput-object v0, v3, v15

    invoke-static {v3}, Lorg/jline/utils/Log;->info([Ljava/lang/Object;)V

    .line 4395
    return v2

    .line 4402
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, v7, Lorg/jline/reader/impl/LineReaderImpl;->parser:Lorg/jline/reader/Parser;

    iget-object v4, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v5

    sget-object v6, Lorg/jline/reader/Parser$ParseContext;->COMPLETE:Lorg/jline/reader/Parser$ParseContext;

    invoke-interface {v0, v4, v5, v6}, Lorg/jline/reader/Parser;->parse(Ljava/lang/String;ILorg/jline/reader/Parser$ParseContext;)Lorg/jline/reader/ParsedLine;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/jline/reader/impl/LineReaderImpl;->wrap(Lorg/jline/reader/ParsedLine;)Lorg/jline/reader/CompletingParsedLine;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v6, v0

    .line 4406
    .local v6, "line":Lorg/jline/reader/CompletingParsedLine;
    nop

    .line 4409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 4411
    .local v5, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    :try_start_2
    iget-object v0, v7, Lorg/jline/reader/impl/LineReaderImpl;->completer:Lorg/jline/reader/Completer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_3

    .line 4412
    :try_start_3
    invoke-interface {v0, v7, v6, v5}, Lorg/jline/reader/Completer;->complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 4414
    :catch_1
    move-exception v0

    move-object v11, v5

    move-object v9, v6

    goto/16 :goto_c

    .line 4420
    :cond_3
    :goto_1
    nop

    .line 4422
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->ExpandComplete:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    if-eq v1, v0, :cond_5

    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->Expand:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v1

    goto :goto_4

    .line 4423
    :cond_5
    :goto_2
    iget-object v0, v7, Lorg/jline/reader/impl/LineReaderImpl;->expander:Lorg/jline/reader/Expander;

    invoke-interface {v6}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/jline/reader/Expander;->expandVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4424
    .local v0, "w":Ljava/lang/String;
    invoke-interface {v6}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 4425
    if-eqz p3, :cond_6

    .line 4426
    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v6}, Lorg/jline/reader/CompletingParsedLine;->wordCursor()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->backspace(I)I

    goto :goto_3

    .line 4428
    :cond_6
    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v6}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v6}, Lorg/jline/reader/CompletingParsedLine;->wordCursor()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->move(I)I

    .line 4429
    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v6}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 4431
    :goto_3
    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v0}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 4432
    return v15

    .line 4434
    :cond_7
    sget-object v4, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->Expand:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    if-ne v1, v4, :cond_8

    .line 4435
    return v2

    .line 4437
    :cond_8
    sget-object v1, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->Complete:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    move-object v4, v1

    .line 4441
    .end local v0    # "w":Ljava/lang/String;
    .end local p1    # "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .local v4, "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    :goto_4
    sget-object v0, Lorg/jline/reader/LineReader$Option;->CASE_INSENSITIVE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v7, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v16

    .line 4442
    .local v16, "caseInsensitive":Z
    const-string v0, "errors"

    invoke-virtual {v7, v0, v3}, Lorg/jline/reader/impl/LineReaderImpl;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 4444
    .local v17, "errors":I
    iget-object v8, v7, Lorg/jline/reader/impl/LineReaderImpl;->completionMatcher:Lorg/jline/reader/CompletionMatcher;

    iget-object v9, v7, Lorg/jline/reader/impl/LineReaderImpl;->options:Ljava/util/Map;

    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getOriginalGroupName()Ljava/lang/String;

    move-result-object v14

    move/from16 v10, p3

    move-object v11, v6

    move/from16 v12, v16

    move/from16 v13, v17

    invoke-interface/range {v8 .. v14}, Lorg/jline/reader/CompletionMatcher;->compile(Ljava/util/Map;ZLorg/jline/reader/CompletingParsedLine;ZILjava/lang/String;)V

    .line 4446
    iget-object v0, v7, Lorg/jline/reader/impl/LineReaderImpl;->completionMatcher:Lorg/jline/reader/CompletionMatcher;

    invoke-interface {v0, v5}, Lorg/jline/reader/CompletionMatcher;->matches(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 4448
    .local v8, "possible":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4449
    return v2

    .line 4451
    :cond_9
    iget-object v0, v7, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 4454
    :try_start_4
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->List:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    if-ne v4, v0, :cond_a

    .line 4455
    invoke-interface {v6}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda69;

    invoke-direct {v9, v6}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda69;-><init>(Lorg/jline/reader/CompletingParsedLine;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v10, v4

    .end local v4    # "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .local v10, "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    move v4, v0

    move-object v11, v5

    .end local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local v11, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    move-object v5, v9

    move-object v9, v6

    .end local v6    # "line":Lorg/jline/reader/CompletingParsedLine;
    .local v9, "line":Lorg/jline/reader/CompletingParsedLine;
    move/from16 v6, p4

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lorg/jline/reader/impl/LineReaderImpl;->doList(Ljava/util/List;Ljava/lang/String;ZLjava/util/function/BiFunction;Z)Z

    .line 4456
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4550
    xor-int/2addr v0, v15

    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->getBufferSize()Lorg/jline/terminal/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 4456
    return v0

    .line 4460
    .end local v9    # "line":Lorg/jline/reader/CompletingParsedLine;
    .end local v10    # "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .end local v11    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .restart local v4    # "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .restart local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .restart local v6    # "line":Lorg/jline/reader/CompletingParsedLine;
    :cond_a
    move-object v10, v4

    move-object v11, v5

    move-object v9, v6

    .end local v4    # "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .end local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v6    # "line":Lorg/jline/reader/CompletingParsedLine;
    .restart local v9    # "line":Lorg/jline/reader/CompletingParsedLine;
    .restart local v10    # "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .restart local v11    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    const/4 v0, 0x0

    .line 4462
    .local v0, "completion":Lorg/jline/reader/Candidate;
    :try_start_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v15, :cond_b

    .line 4463
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/Candidate;

    move-object v0, v1

    goto :goto_5

    .line 4466
    :cond_b
    sget-object v1, Lorg/jline/reader/LineReader$Option;->RECOGNIZE_EXACT:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v7, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4467
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->completionMatcher:Lorg/jline/reader/CompletionMatcher;

    invoke-interface {v1}, Lorg/jline/reader/CompletionMatcher;->exactMatch()Lorg/jline/reader/Candidate;

    move-result-object v1

    move-object v0, v1

    .line 4470
    :cond_c
    :goto_5
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 4471
    if-eqz p3, :cond_d

    .line 4472
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->rawWordCursor()I

    move-result v3

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->backspace(I)I

    goto :goto_6

    .line 4474
    :cond_d
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->rawWordLength()I

    move-result v3

    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->rawWordCursor()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->move(I)I

    .line 4475
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->rawWordLength()I

    move-result v3

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 4477
    :goto_6
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-virtual {v0}, Lorg/jline/reader/Candidate;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jline/reader/Candidate;->complete()Z

    move-result v4

    invoke-interface {v9, v3, v4}, Lorg/jline/reader/CompletingParsedLine;->escape(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 4478
    invoke-virtual {v0}, Lorg/jline/reader/Candidate;->complete()Z

    move-result v1

    const/16 v3, 0x20

    if-eqz v1, :cond_f

    .line 4479
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v1

    if-eq v1, v3, :cond_e

    .line 4480
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const-string v4, " "

    invoke-interface {v1, v4}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 4482
    :cond_e
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v15}, Lorg/jline/reader/Buffer;->move(I)I

    .line 4485
    :cond_f
    :goto_7
    invoke-virtual {v0}, Lorg/jline/reader/Candidate;->suffix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 4486
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->autosuggestion:Lorg/jline/reader/LineReader$SuggestionType;

    sget-object v4, Lorg/jline/reader/LineReader$SuggestionType;->COMPLETER:Lorg/jline/reader/LineReader$SuggestionType;

    if-ne v1, v4, :cond_10

    .line 4487
    invoke-direct {v7, v15}, Lorg/jline/reader/impl/LineReaderImpl;->listChoices(Z)Z

    .line 4489
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay()Z

    .line 4490
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getKeys()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/jline/reader/impl/LineReaderImpl;->readBinding(Lorg/jline/keymap/KeyMap;)Lorg/jline/reader/Binding;

    move-result-object v1

    .line 4491
    .local v1, "op":Lorg/jline/reader/Binding;
    if-eqz v1, :cond_15

    .line 4492
    const-string v4, "REMOVE_SUFFIX_CHARS"

    const-string v5, " \t\n;&|"

    invoke-virtual {v7, v4, v5}, Lorg/jline/reader/impl/LineReaderImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4493
    .local v4, "chars":Ljava/lang/String;
    instance-of v5, v1, Lorg/jline/reader/Reference;

    if-eqz v5, :cond_11

    move-object v5, v1

    check-cast v5, Lorg/jline/reader/Reference;

    invoke-virtual {v5}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    .line 4494
    .local v5, "ref":Ljava/lang/String;
    :goto_8
    const-string v6, "self-insert"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_13

    :cond_12
    const-string v6, "accept-line"

    .line 4495
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 4496
    :cond_13
    iget-object v6, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-virtual {v0}, Lorg/jline/reader/Candidate;->suffix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-interface {v6, v12}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 4497
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_14

    .line 4498
    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->write(I)V

    .line 4501
    :cond_14
    invoke-direct {v7, v15}, Lorg/jline/reader/impl/LineReaderImpl;->pushBackBinding(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4504
    .end local v1    # "op":Lorg/jline/reader/Binding;
    .end local v4    # "chars":Ljava/lang/String;
    .end local v5    # "ref":Ljava/lang/String;
    :cond_15
    nop

    .line 4550
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->getBufferSize()Lorg/jline/terminal/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 4504
    return v15

    .line 4507
    :cond_16
    if-eqz p2, :cond_17

    .line 4508
    :try_start_7
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->wordCursor()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 4509
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 4510
    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda69;

    invoke-direct {v2, v9}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda69;-><init>(Lorg/jline/reader/CompletingParsedLine;)V

    invoke-virtual {v7, v8, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->doMenu(Ljava/util/List;Ljava/lang/String;Ljava/util/function/BiFunction;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4511
    nop

    .line 4550
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->getBufferSize()Lorg/jline/terminal/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 4511
    return v15

    .line 4516
    :cond_17
    if-eqz p3, :cond_18

    .line 4517
    :try_start_8
    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->wordCursor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "current":Ljava/lang/String;
    goto :goto_9

    .line 4519
    .end local v1    # "current":Ljava/lang/String;
    :cond_18
    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v1

    .line 4520
    .restart local v1    # "current":Ljava/lang/String;
    iget-object v3, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->rawWordLength()I

    move-result v4

    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->rawWordCursor()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Lorg/jline/reader/Buffer;->move(I)I

    .line 4524
    :goto_9
    iget-object v3, v7, Lorg/jline/reader/impl/LineReaderImpl;->completionMatcher:Lorg/jline/reader/CompletionMatcher;

    invoke-interface {v3}, Lorg/jline/reader/CompletionMatcher;->getCommonPrefix()Ljava/lang/String;

    move-result-object v3

    .line 4525
    .local v3, "commonPrefix":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    move v4, v15

    goto :goto_a

    :cond_19
    move v4, v2

    .line 4527
    .local v4, "hasUnambiguous":Z
    :goto_a
    if-eqz v4, :cond_1c

    .line 4528
    iget-object v5, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->rawWordLength()I

    move-result v6

    invoke-interface {v5, v6}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 4529
    iget-object v5, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v9, v3, v2}, Lorg/jline/reader/CompletingParsedLine;->escape(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 4530
    const-string v2, "redisplay"

    invoke-virtual {v7, v2}, Lorg/jline/reader/impl/LineReaderImpl;->callWidget(Ljava/lang/String;)V

    .line 4531
    move-object v1, v3

    .line 4532
    sget-object v2, Lorg/jline/reader/LineReader$Option;->AUTO_LIST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v7, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v2

    if-nez v2, :cond_1a

    sget-object v2, Lorg/jline/reader/LineReader$Option;->AUTO_MENU:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v7, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    sget-object v2, Lorg/jline/reader/LineReader$Option;->AUTO_LIST:Lorg/jline/reader/LineReader$Option;

    .line 4533
    invoke-virtual {v7, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lorg/jline/reader/LineReader$Option;->LIST_AMBIGUOUS:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v7, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4534
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->nextBindingIsComplete()Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v2, :cond_1c

    .line 4535
    nop

    .line 4550
    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    iget-object v5, v7, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v5}, Lorg/jline/terminal/Terminal;->getBufferSize()Lorg/jline/terminal/Size;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 4535
    return v15

    .line 4539
    :cond_1c
    :try_start_9
    sget-object v2, Lorg/jline/reader/LineReader$Option;->AUTO_LIST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v7, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4540
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda69;

    invoke-direct {v2, v9}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda69;-><init>(Lorg/jline/reader/CompletingParsedLine;)V

    invoke-virtual {v7, v8, v1, v15, v2}, Lorg/jline/reader/impl/LineReaderImpl;->doList(Ljava/util/List;Ljava/lang/String;ZLjava/util/function/BiFunction;)Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v2, :cond_1d

    .line 4541
    nop

    .line 4550
    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    iget-object v5, v7, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v5}, Lorg/jline/terminal/Terminal;->getBufferSize()Lorg/jline/terminal/Size;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 4541
    return v15

    .line 4544
    :cond_1d
    :try_start_a
    sget-object v2, Lorg/jline/reader/LineReader$Option;->AUTO_MENU:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v7, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4545
    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v2, v5}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 4546
    invoke-interface {v9}, Lorg/jline/reader/CompletingParsedLine;->word()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda69;

    invoke-direct {v5, v9}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda69;-><init>(Lorg/jline/reader/CompletingParsedLine;)V

    invoke-virtual {v7, v8, v2, v5}, Lorg/jline/reader/impl/LineReaderImpl;->doMenu(Ljava/util/List;Ljava/lang/String;Ljava/util/function/BiFunction;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4548
    :cond_1e
    nop

    .line 4550
    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    iget-object v5, v7, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v5}, Lorg/jline/terminal/Terminal;->getBufferSize()Lorg/jline/terminal/Size;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 4548
    return v15

    .line 4550
    .end local v0    # "completion":Lorg/jline/reader/Candidate;
    .end local v1    # "current":Ljava/lang/String;
    .end local v3    # "commonPrefix":Ljava/lang/String;
    .end local v4    # "hasUnambiguous":Z
    :catchall_0
    move-exception v0

    goto :goto_b

    .end local v9    # "line":Lorg/jline/reader/CompletingParsedLine;
    .end local v10    # "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .end local v11    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local v4, "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .local v5, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .restart local v6    # "line":Lorg/jline/reader/CompletingParsedLine;
    :catchall_1
    move-exception v0

    move-object v10, v4

    move-object v11, v5

    move-object v9, v6

    .end local v4    # "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .end local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v6    # "line":Lorg/jline/reader/CompletingParsedLine;
    .restart local v9    # "line":Lorg/jline/reader/CompletingParsedLine;
    .restart local v10    # "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .restart local v11    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    :goto_b
    iget-object v1, v7, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    iget-object v2, v7, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->getBufferSize()Lorg/jline/terminal/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 4551
    throw v0

    .line 4414
    .end local v8    # "possible":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v9    # "line":Lorg/jline/reader/CompletingParsedLine;
    .end local v10    # "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    .end local v11    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v16    # "caseInsensitive":Z
    .end local v17    # "errors":I
    .restart local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .restart local v6    # "line":Lorg/jline/reader/CompletingParsedLine;
    .restart local p1    # "lst":Lorg/jline/reader/impl/LineReaderImpl$CompletionType;
    :catch_2
    move-exception v0

    move-object v11, v5

    move-object v9, v6

    .line 4415
    .end local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v6    # "line":Lorg/jline/reader/CompletingParsedLine;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v9    # "line":Lorg/jline/reader/CompletingParsedLine;
    .restart local v11    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    :goto_c
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error while finding completion candidates"

    aput-object v4, v3, v2

    aput-object v0, v3, v15

    invoke-static {v3}, Lorg/jline/utils/Log;->info([Ljava/lang/Object;)V

    .line 4416
    invoke-static {}, Lorg/jline/utils/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4417
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4419
    :cond_1f
    return v2

    .line 4403
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "line":Lorg/jline/reader/CompletingParsedLine;
    .end local v11    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    :catch_3
    move-exception v0

    .line 4404
    .restart local v0    # "e":Ljava/lang/Exception;
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error while parsing line"

    aput-object v4, v3, v2

    aput-object v0, v3, v15

    invoke-static {v3}, Lorg/jline/utils/Log;->info([Ljava/lang/Object;)V

    .line 4405
    return v2
.end method

.method protected doInsertComment(Z)Z
    .locals 2
    .param p1, "isViMode"    # Z

    .line 1923
    const-string v0, "comment-begin"

    const-string v1, "#"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1924
    .local v0, "comment":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->beginningOfLine()Z

    .line 1925
    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->putString(Ljava/lang/CharSequence;)V

    .line 1926
    if-eqz p1, :cond_0

    .line 1927
    const-string v1, "viins"

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->setKeyMap(Ljava/lang/String;)Z

    .line 1929
    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->acceptLine()Z

    move-result v1

    return v1
.end method

.method protected doList(Ljava/util/List;Ljava/lang/String;ZLjava/util/function/BiFunction;)Z
    .locals 6
    .param p2, "completed"    # Ljava/lang/String;
    .param p3, "runLoop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .line 4914
    .local p1, "possible":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local p4, "escaper":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jline/reader/impl/LineReaderImpl;->doList(Ljava/util/List;Ljava/lang/String;ZLjava/util/function/BiFunction;Z)Z

    move-result v0

    return v0
.end method

.method protected doList(Ljava/util/List;Ljava/lang/String;ZLjava/util/function/BiFunction;Z)Z
    .locals 20
    .param p2, "completed"    # Ljava/lang/String;
    .param p3, "runLoop"    # Z
    .param p5, "forSuggestion"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/CharSequence;",
            ">;Z)Z"
        }
    .end annotation

    .line 4924
    .local p1, "possible":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local p4, "escaper":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p1}, Lorg/jline/reader/impl/LineReaderImpl;->mergeCandidates(Ljava/util/List;)V

    .line 4925
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    iget-object v5, v0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v4}, Lorg/jline/utils/AttributedStringBuilder;->append([Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedString;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v4, v5}, Lorg/jline/reader/impl/LineReaderImpl;->insertSecondaryPrompts(Lorg/jline/utils/AttributedString;Ljava/util/List;)Lorg/jline/utils/AttributedString;

    move-result-object v4

    .line 4926
    .local v4, "text":Lorg/jline/utils/AttributedString;
    iget-object v5, v0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v5}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v5

    iget-object v8, v0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-virtual {v8}, Lorg/jline/utils/Display;->delayLineWrap()Z

    move-result v8

    invoke-virtual {v4, v5, v6, v8}, Lorg/jline/utils/AttributedString;->columnSplitLength(IZZ)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 4927
    .local v5, "promptLines":I
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v8, v2}, Lorg/jline/reader/impl/LineReaderImpl;->computePost(Ljava/util/List;Lorg/jline/reader/Candidate;Ljava/util/List;Ljava/lang/String;)Lorg/jline/reader/impl/LineReaderImpl$PostResult;

    move-result-object v9

    .line 4928
    .local v9, "postResult":Lorg/jline/reader/impl/LineReaderImpl$PostResult;
    iget v10, v9, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->lines:I

    .line 4929
    .local v10, "lines":I
    const-string v11, "list-max"

    const/16 v12, 0x64

    invoke-virtual {v0, v11, v12}, Lorg/jline/reader/impl/LineReaderImpl;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 4930
    .local v11, "listMax":I
    if-lez v11, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v11, :cond_1

    :cond_0
    iget-object v12, v0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    .line 4931
    invoke-virtual {v12}, Lorg/jline/terminal/Size;->getRows()I

    move-result v12

    sub-int/2addr v12, v5

    if-lt v10, v12, :cond_4

    .line 4932
    :cond_1
    if-nez p5, :cond_3

    .line 4934
    new-instance v12, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda54;

    invoke-direct {v12, v0, v1, v10}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda54;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Ljava/util/List;I)V

    iput-object v12, v0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 4936
    invoke-virtual {v0, v7}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay(Z)V

    .line 4937
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->readCharacter()I

    move-result v12

    .line 4938
    .local v12, "c":I
    const/16 v13, 0x79

    if-eq v12, v13, :cond_2

    const/16 v13, 0x59

    if-eq v12, v13, :cond_2

    const/16 v13, 0x9

    if-eq v12, v13, :cond_2

    .line 4939
    iput-object v8, v0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 4940
    return v6

    .line 4942
    .end local v12    # "c":I
    :cond_2
    goto :goto_0

    .line 4943
    :cond_3
    return v6

    .line 4947
    :cond_4
    :goto_0
    sget-object v12, Lorg/jline/reader/LineReader$Option;->CASE_INSENSITIVE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v12}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v12

    .line 4948
    .local v12, "caseInsensitive":Z
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v13

    .line 4949
    .local v15, "sb":Ljava/lang/StringBuilder;
    iput v6, v0, Lorg/jline/reader/impl/LineReaderImpl;->candidateStartPosition:I

    .line 4951
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4953
    .local v14, "current":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 4954
    iget-object v13, v0, Lorg/jline/reader/impl/LineReaderImpl;->completionMatcher:Lorg/jline/reader/CompletionMatcher;

    iget-object v7, v0, Lorg/jline/reader/impl/LineReaderImpl;->options:Ljava/util/Map;

    const/16 v16, 0x0

    new-instance v8, Lorg/jline/reader/impl/LineReaderImpl$CompletingWord;

    invoke-direct {v8, v14}, Lorg/jline/reader/impl/LineReaderImpl$CompletingWord;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v6, v14

    .end local v14    # "current":Ljava/lang/String;
    .local v6, "current":Ljava/lang/String;
    move-object v14, v7

    move-object v7, v15

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .local v7, "sb":Ljava/lang/StringBuilder;
    move/from16 v15, v16

    move-object/from16 v16, v8

    move/from16 v17, v12

    invoke-interface/range {v13 .. v19}, Lorg/jline/reader/CompletionMatcher;->compile(Ljava/util/Map;ZLorg/jline/reader/CompletingParsedLine;ZILjava/lang/String;)V

    .line 4956
    iget-object v8, v0, Lorg/jline/reader/impl/LineReaderImpl;->completionMatcher:Lorg/jline/reader/CompletionMatcher;

    invoke-interface {v8, v1}, Lorg/jline/reader/CompletionMatcher;->matches(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    .line 4957
    invoke-virtual {v0, v12, v6}, Lorg/jline/reader/impl/LineReaderImpl;->getCandidateComparator(ZLjava/lang/String;)Ljava/util/Comparator;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v8

    .line 4958
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .local v8, "cands":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    goto :goto_2

    .line 4960
    .end local v6    # "current":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "cands":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .restart local v14    # "current":Ljava/lang/String;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    move-object v6, v14

    move-object v7, v15

    .end local v14    # "current":Ljava/lang/String;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "current":Ljava/lang/String;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    .line 4961
    invoke-virtual {v0, v12, v6}, Lorg/jline/reader/impl/LineReaderImpl;->getCandidateComparator(ZLjava/lang/String;)Ljava/util/Comparator;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v8

    .line 4962
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 4964
    .restart local v8    # "cands":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    :goto_2
    sget-object v13, Lorg/jline/reader/LineReader$Option;->AUTO_MENU_LIST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v13}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v13

    if-eqz v13, :cond_6

    iget v13, v0, Lorg/jline/reader/impl/LineReaderImpl;->candidateStartPosition:I

    if-nez v13, :cond_6

    .line 4965
    invoke-direct {v0, v8}, Lorg/jline/reader/impl/LineReaderImpl;->candidateStartPosition(Ljava/util/List;)I

    move-result v13

    iput v13, v0, Lorg/jline/reader/impl/LineReaderImpl;->candidateStartPosition:I

    .line 4967
    :cond_6
    new-instance v13, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda56;

    invoke-direct {v13, v0, v8, v6}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda56;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Ljava/util/List;Ljava/lang/String;)V

    iput-object v13, v0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 4988
    if-nez p3, :cond_7

    .line 4989
    const/4 v13, 0x0

    return v13

    .line 4991
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay()Z

    .line 4993
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getKeys()Lorg/jline/keymap/KeyMap;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14}, Lorg/jline/reader/impl/LineReaderImpl;->doReadBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jline/reader/Binding;

    .line 4994
    .local v13, "b":Lorg/jline/reader/Binding;
    instance-of v14, v13, Lorg/jline/reader/Reference;

    if-eqz v14, :cond_11

    .line 4995
    move-object v14, v13

    check-cast v14, Lorg/jline/reader/Reference;

    invoke-virtual {v14}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v14

    .line 4996
    .local v14, "name":Ljava/lang/String;
    const-string v15, "backward-delete-char"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    const-string v15, "vi-backward-delete-char"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_5

    .line 5005
    :cond_8
    const-string v15, "self-insert"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 5006
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5007
    invoke-virtual {v0, v14}, Lorg/jline/reader/impl/LineReaderImpl;->callWidget(Ljava/lang/String;)V

    .line 5008
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 5009
    const/4 v15, 0x0

    iput-object v15, v0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 5010
    const/4 v15, 0x0

    return v15

    .line 5008
    :cond_9
    const/4 v2, 0x1

    goto :goto_6

    .line 5012
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v15

    const-string v1, "\t"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5013
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v15, 0x1

    if-eq v1, v15, :cond_c

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    goto :goto_3

    .line 5016
    :cond_b
    sget-object v1, Lorg/jline/reader/LineReader$Option;->AUTO_MENU:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5017
    iget-object v1, v0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v6, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 5018
    invoke-virtual {v0, v8, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->doMenu(Ljava/util/List;Ljava/lang/String;Ljava/util/function/BiFunction;)Z

    goto :goto_4

    .line 5014
    :cond_c
    :goto_3
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 5015
    invoke-direct/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->pushBackBinding()V

    .line 5020
    :cond_d
    :goto_4
    const/4 v2, 0x0

    return v2

    .line 5022
    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->pushBackBinding()V

    .line 5023
    iput-object v1, v0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 5024
    return v2

    .line 4996
    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4997
    :goto_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-nez v15, :cond_10

    .line 4998
    invoke-direct/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->pushBackBinding()V

    .line 4999
    iput-object v1, v0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 5000
    return v2

    .line 5002
    :cond_10
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5003
    iget-object v1, v0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->backspace()Z

    .line 5026
    .end local v14    # "name":Ljava/lang/String;
    :goto_6
    const/4 v1, 0x0

    const/4 v14, 0x0

    goto :goto_7

    :cond_11
    const/4 v2, 0x1

    if-nez v13, :cond_12

    .line 5027
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 5028
    const/4 v14, 0x0

    return v14

    .line 5026
    :cond_12
    const/4 v1, 0x0

    const/4 v14, 0x0

    .line 5030
    .end local v6    # "current":Ljava/lang/String;
    .end local v8    # "cands":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v13    # "b":Lorg/jline/reader/Binding;
    :goto_7
    move-object v8, v1

    move-object v15, v7

    move v6, v14

    move-object/from16 v1, p1

    move v7, v2

    move-object/from16 v2, p2

    goto/16 :goto_1
.end method

.method protected doLowercaseVersion()Z
    .locals 2

    .line 3510
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/keymap/BindingReader;->runMacro(Ljava/lang/String;)V

    .line 3511
    const/4 v0, 0x1

    return v0
.end method

.method protected doMenu(Ljava/util/List;Ljava/lang/String;Ljava/util/function/BiFunction;)Z
    .locals 17
    .param p2, "completed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .line 4827
    .local p1, "original":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local p3, "escaper":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4828
    .local v3, "possible":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    sget-object v4, Lorg/jline/reader/LineReader$Option;->CASE_INSENSITIVE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v4

    .line 4829
    .local v4, "caseInsensitive":Z
    invoke-virtual {v0, v4, v2}, Lorg/jline/reader/impl/LineReaderImpl;->getCandidateComparator(ZLjava/lang/String;)Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 4830
    invoke-direct/range {p0 .. p1}, Lorg/jline/reader/impl/LineReaderImpl;->mergeCandidates(Ljava/util/List;)V

    .line 4831
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3, v2}, Lorg/jline/reader/impl/LineReaderImpl;->computePost(Ljava/util/List;Lorg/jline/reader/Candidate;Ljava/util/List;Ljava/lang/String;)Lorg/jline/reader/impl/LineReaderImpl$PostResult;

    .line 4833
    sget-object v6, Lorg/jline/reader/LineReader$Option;->AUTO_GROUP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v6}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v6

    .line 4834
    .local v6, "defaultAutoGroup":Z
    sget-object v7, Lorg/jline/reader/LineReader$Option;->GROUP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v7}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v7

    .line 4835
    .local v7, "defaultGroup":Z
    sget-object v8, Lorg/jline/reader/LineReader$Option;->GROUP_PERSIST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v8}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    .line 4836
    sget-object v8, Lorg/jline/reader/LineReader$Option;->AUTO_GROUP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v8, v9}, Lorg/jline/reader/impl/LineReaderImpl;->option(Lorg/jline/reader/LineReader$Option;Z)Lorg/jline/reader/LineReader;

    .line 4837
    sget-object v8, Lorg/jline/reader/LineReader$Option;->GROUP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v8, v9}, Lorg/jline/reader/impl/LineReaderImpl;->option(Lorg/jline/reader/LineReader$Option;Z)Lorg/jline/reader/LineReader;

    .line 4840
    :cond_0
    new-instance v8, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;

    move-object/from16 v10, p3

    invoke-direct {v8, v0, v1, v2, v10}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Ljava/util/List;Ljava/lang/String;Ljava/util/function/BiFunction;)V

    .line 4841
    .local v8, "menuSupport":Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;
    iput-object v8, v0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 4842
    const-string v11, "redisplay"

    invoke-virtual {v0, v11}, Lorg/jline/reader/impl/LineReaderImpl;->callWidget(Ljava/lang/String;)V

    .line 4845
    iget-object v12, v0, Lorg/jline/reader/impl/LineReaderImpl;->keyMaps:Ljava/util/Map;

    const-string v13, "menu"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jline/keymap/KeyMap;

    .line 4847
    .local v12, "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getKeys()Lorg/jline/keymap/KeyMap;

    move-result-object v13

    invoke-virtual {v0, v13, v12}, Lorg/jline/reader/impl/LineReaderImpl;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Lorg/jline/reader/Binding;

    move-result-object v13

    move-object v14, v13

    .local v14, "operation":Lorg/jline/reader/Binding;
    if-eqz v13, :cond_a

    .line 4848
    instance-of v13, v14, Lorg/jline/reader/Reference;

    if-eqz v13, :cond_1

    move-object v13, v14

    check-cast v13, Lorg/jline/reader/Reference;

    invoke-virtual {v13}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_1
    const-string v13, ""

    .line 4849
    .local v13, "ref":Ljava/lang/String;
    :goto_1
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_2
    goto :goto_2

    :sswitch_0
    const-string v5, "up-line-or-history"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_3

    :sswitch_1
    const-string v5, "backward-char"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x7

    goto :goto_3

    :sswitch_2
    const-string v5, "menu-complete"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v9

    goto :goto_3

    :sswitch_3
    const-string v5, "up-line-or-search"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    goto :goto_3

    :sswitch_4
    const-string v5, "down-line-or-history"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_3

    :sswitch_5
    const-string v5, "forward-char"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    goto :goto_3

    :sswitch_6
    const-string v5, "reverse-menu-complete"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :sswitch_7
    const-string v5, "clear-screen"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    goto :goto_3

    :sswitch_8
    const-string v5, "down-line-or-search"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    goto :goto_3

    :goto_2
    const/4 v5, -0x1

    :goto_3
    packed-switch v5, :pswitch_data_0

    .line 4874
    invoke-virtual {v8}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->completion()Lorg/jline/reader/Candidate;

    move-result-object v5

    .line 4875
    .local v5, "completion":Lorg/jline/reader/Candidate;
    invoke-virtual {v5}, Lorg/jline/reader/Candidate;->suffix()Ljava/lang/String;

    move-result-object v11

    const-string v15, "self-insert"

    if-eqz v11, :cond_5

    .line 4876
    const-string v11, "REMOVE_SUFFIX_CHARS"

    const-string v9, " \t\n;&|"

    invoke-virtual {v0, v11, v9}, Lorg/jline/reader/impl/LineReaderImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4877
    .local v9, "chars":Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4878
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4

    goto :goto_5

    .line 4871
    .end local v5    # "completion":Lorg/jline/reader/Candidate;
    .end local v9    # "chars":Ljava/lang/String;
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->clearScreen()Z

    .line 4872
    goto :goto_4

    .line 4868
    :pswitch_1
    invoke-virtual {v8}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->left()V

    .line 4869
    goto :goto_4

    .line 4865
    :pswitch_2
    invoke-virtual {v8}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->right()V

    .line 4866
    goto :goto_4

    .line 4862
    :pswitch_3
    invoke-virtual {v8}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->down()V

    .line 4863
    goto :goto_4

    .line 4858
    :pswitch_4
    invoke-virtual {v8}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->up()V

    .line 4859
    goto :goto_4

    .line 4854
    :pswitch_5
    invoke-virtual {v8}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->previous()V

    .line 4855
    goto :goto_4

    .line 4851
    :pswitch_6
    invoke-virtual {v8}, Lorg/jline/reader/impl/LineReaderImpl$MenuSupport;->next()V

    .line 4852
    nop

    .line 4900
    :goto_4
    iput-boolean v9, v0, Lorg/jline/reader/impl/LineReaderImpl;->doAutosuggestion:Z

    .line 4901
    invoke-virtual {v0, v11}, Lorg/jline/reader/impl/LineReaderImpl;->callWidget(Ljava/lang/String;)V

    .line 4902
    .end local v13    # "ref":Ljava/lang/String;
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 4878
    .restart local v5    # "completion":Lorg/jline/reader/Candidate;
    .restart local v9    # "chars":Ljava/lang/String;
    .restart local v13    # "ref":Ljava/lang/String;
    :cond_3
    :goto_5
    nop

    .line 4879
    const-string v1, "backward-delete-char"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4880
    :cond_4
    iget-object v1, v0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-virtual {v5}, Lorg/jline/reader/Candidate;->suffix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-interface {v1, v11}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 4883
    .end local v9    # "chars":Ljava/lang/String;
    :cond_5
    invoke-virtual {v5}, Lorg/jline/reader/Candidate;->complete()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4884
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v11, 0x20

    if-eq v1, v11, :cond_7

    .line 4885
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v11, :cond_7

    .line 4886
    :cond_6
    iget-object v1, v0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v11}, Lorg/jline/reader/Buffer;->write(I)V

    .line 4888
    :cond_7
    const-string v1, "accept-line"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 4889
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4890
    invoke-virtual {v5}, Lorg/jline/reader/Candidate;->suffix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 4891
    invoke-virtual {v5}, Lorg/jline/reader/Candidate;->suffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 4892
    :cond_8
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->pushBackBinding(Z)V

    .line 4894
    :cond_9
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 4895
    sget-object v1, Lorg/jline/reader/LineReader$Option;->AUTO_GROUP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v1, v6}, Lorg/jline/reader/impl/LineReaderImpl;->option(Lorg/jline/reader/LineReader$Option;Z)Lorg/jline/reader/LineReader;

    .line 4896
    sget-object v1, Lorg/jline/reader/LineReader$Option;->GROUP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v1, v7}, Lorg/jline/reader/impl/LineReaderImpl;->option(Lorg/jline/reader/LineReader$Option;Z)Lorg/jline/reader/LineReader;

    .line 4897
    const/4 v1, 0x1

    return v1

    .line 4903
    .end local v5    # "completion":Lorg/jline/reader/Candidate;
    .end local v13    # "ref":Ljava/lang/String;
    :cond_a
    sget-object v1, Lorg/jline/reader/LineReader$Option;->AUTO_GROUP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v1, v6}, Lorg/jline/reader/impl/LineReaderImpl;->option(Lorg/jline/reader/LineReader$Option;Z)Lorg/jline/reader/LineReader;

    .line 4904
    sget-object v1, Lorg/jline/reader/LineReader$Option;->GROUP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v0, v1, v7}, Lorg/jline/reader/impl/LineReaderImpl;->option(Lorg/jline/reader/LineReader$Option;Z)Lorg/jline/reader/LineReader;

    .line 4905
    const/4 v1, 0x0

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79cf713c -> :sswitch_8
        -0x4e45cc14 -> :sswitch_7
        -0x1c36b5c4 -> :sswitch_6
        -0x1364eaa2 -> :sswitch_5
        0x1cedef8 -> :sswitch_4
        0x163153ab -> :sswitch_3
        0x230239e7 -> :sswitch_2
        0x6b90df00 -> :sswitch_1
        0x71e6b6f1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected doReadBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jline/keymap/KeyMap<",
            "TT;>;",
            "Lorg/jline/keymap/KeyMap<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 915
    .local p1, "keys":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    .local p2, "local":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<TT;>;"
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    :try_start_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 918
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v0, p1, p2}, Lorg/jline/keymap/BindingReader;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 918
    return-object v0

    .line 920
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 921
    throw v0

    .line 923
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v0, p1, p2}, Lorg/jline/keymap/BindingReader;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doReadStringUntil(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;

    .line 928
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    :try_start_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 931
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v0, p1}, Lorg/jline/keymap/BindingReader;->readStringUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 931
    return-object v0

    .line 933
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 934
    throw v0

    .line 936
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v0, p1}, Lorg/jline/keymap/BindingReader;->readStringUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doSearchHistory(Z)Z
    .locals 17
    .param p1, "backward"    # Z

    .line 2602
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2603
    return v2

    .line 2606
    :cond_0
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    move-object v3, v0

    .line 2607
    .local v3, "terminators":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    const-string v0, "search-terminators"

    const-string v4, "\u001b\n"

    invoke-virtual {v1, v0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2608
    invoke-virtual {v0}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v4, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda76;

    invoke-direct {v4, v1, v3}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda76;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Lorg/jline/keymap/KeyMap;)V

    invoke-interface {v0, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 2610
    iget-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->copy()Lorg/jline/reader/Buffer;

    move-result-object v4

    .line 2611
    .local v4, "originalBuffer":Lorg/jline/reader/Buffer;
    const/4 v5, -0x1

    iput v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    .line 2612
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    .line 2613
    move/from16 v6, p1

    iput-boolean v6, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchBackward:Z

    .line 2614
    iput-boolean v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchFailing:Z

    .line 2615
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda78;

    invoke-direct {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda78;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    iput-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 2619
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay()Z

    .line 2622
    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    iget v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    .line 2623
    .local v0, "prevSearchIndex":I
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getKeys()Lorg/jline/keymap/KeyMap;

    move-result-object v9

    invoke-virtual {v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Lorg/jline/reader/Binding;

    move-result-object v9

    .line 2624
    .local v9, "operation":Lorg/jline/reader/Binding;
    instance-of v10, v9, Lorg/jline/reader/Reference;

    if-eqz v10, :cond_1

    move-object v10, v9

    check-cast v10, Lorg/jline/reader/Reference;

    invoke-virtual {v10}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    const-string v10, ""

    .line 2625
    .local v10, "ref":Ljava/lang/String;
    :goto_1
    const/4 v11, 0x0

    .line 2626
    .local v11, "next":Z
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_2
    goto :goto_2

    :sswitch_0
    const-string v12, "self-insert"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x4

    goto :goto_3

    :sswitch_1
    const-string v12, "history-incremental-search-forward"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x2

    goto :goto_3

    :sswitch_2
    const-string v12, "backward-delete-char"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x3

    goto :goto_3

    :sswitch_3
    const-string v12, "abort"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v12, v2

    goto :goto_3

    :sswitch_4
    const-string v12, "history-incremental-search-backward"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move v12, v7

    goto :goto_3

    :goto_2
    move v12, v5

    :goto_3
    packed-switch v12, :pswitch_data_0

    .line 2649
    iget v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    goto/16 :goto_a

    .line 2645
    :pswitch_0
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2646
    goto :goto_4

    .line 2640
    :pswitch_1
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 2641
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    sub-int/2addr v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 2636
    :pswitch_2
    iput-boolean v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchBackward:Z

    .line 2637
    const/4 v11, 0x1

    .line 2638
    goto :goto_4

    .line 2632
    :pswitch_3
    iput-boolean v7, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchBackward:Z

    .line 2633
    const/4 v11, 0x1

    .line 2634
    nop

    .line 2657
    :cond_3
    :goto_4
    invoke-direct/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->doGetSearchPattern()Ljava/lang/String;

    move-result-object v12

    .line 2658
    .local v12, "pattern":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_4

    .line 2659
    iget-object v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v13, v4}, Lorg/jline/reader/Buffer;->copyFrom(Lorg/jline/reader/Buffer;)V

    .line 2660
    iput-boolean v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchFailing:Z

    move v5, v2

    goto/16 :goto_9

    .line 2662
    :cond_4
    sget-object v13, Lorg/jline/reader/LineReader$Option;->CASE_INSENSITIVE_SEARCH:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v1, v13}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v13

    .line 2663
    .local v13, "caseInsensitive":Z
    if-eqz v13, :cond_5

    const/16 v14, 0x42

    goto :goto_5

    .line 2664
    :cond_5
    const/16 v14, 0x40

    .line 2663
    :goto_5
    invoke-static {v12, v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 2665
    .local v14, "pat":Ljava/util/regex/Pattern;
    const/4 v15, 0x0

    .line 2666
    .local v15, "pair":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-boolean v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchBackward:Z

    if-eqz v5, :cond_8

    .line 2667
    move v5, v11

    .line 2668
    .local v5, "nextOnly":Z
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget v7, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    invoke-direct {v1, v14, v2, v7}, Lorg/jline/reader/impl/LineReaderImpl;->matches(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v7, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda79;

    invoke-direct {v7, v1, v5}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda79;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Z)V

    .line 2669
    invoke-interface {v2, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v7, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda80;

    invoke-direct {v7}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda80;-><init>()V

    .line 2670
    invoke-static {v7}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v2

    .line 2671
    invoke-virtual {v2, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/reader/impl/LineReaderImpl$Pair;

    .line 2672
    .end local v15    # "pair":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v2, "pair":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_7

    .line 2673
    iget-object v7, v1, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    .line 2674
    iget v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    if-gez v15, :cond_6

    invoke-interface {v7}, Lorg/jline/reader/History;->last()I

    move-result v15

    goto :goto_6

    :cond_6
    add-int/lit8 v15, v15, -0x1

    :goto_6
    invoke-interface {v7, v15}, Lorg/jline/reader/History;->reverseIterator(I)Ljava/util/Iterator;

    move-result-object v7

    const/16 v15, 0x10

    invoke-static {v7, v15}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v7

    .line 2673
    const/4 v15, 0x0

    invoke-static {v7, v15}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v15, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda81;

    invoke-direct {v15, v1, v14}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda81;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Ljava/util/regex/Pattern;)V

    .line 2675
    invoke-interface {v7, v15}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 2676
    invoke-interface {v7}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v7

    .line 2677
    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jline/reader/impl/LineReaderImpl$Pair;

    move-object v2, v7

    .line 2679
    .end local v5    # "nextOnly":Z
    :cond_7
    goto/16 :goto_7

    .line 2680
    .end local v2    # "pair":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v15    # "pair":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_8
    move v2, v11

    .line 2681
    .local v2, "nextOnly":Z
    iget-object v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget v7, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    invoke-direct {v1, v14, v5, v7}, Lorg/jline/reader/impl/LineReaderImpl;->matches(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda82;

    invoke-direct {v7, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda82;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Z)V

    .line 2682
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda80;

    invoke-direct {v7}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda80;-><init>()V

    .line 2683
    invoke-static {v7}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v5

    .line 2684
    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/reader/impl/LineReaderImpl$Pair;

    .line 2685
    .end local v15    # "pair":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v5, "pair":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v5, :cond_b

    .line 2686
    iget-object v7, v1, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    .line 2687
    iget v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    if-gez v15, :cond_9

    invoke-interface {v7}, Lorg/jline/reader/History;->last()I

    move-result v15

    :cond_9
    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-interface {v7, v15}, Lorg/jline/reader/History;->iterator(I)Ljava/util/ListIterator;

    move-result-object v7

    const/16 v15, 0x10

    invoke-static {v7, v15}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v7

    .line 2686
    const/4 v15, 0x0

    invoke-static {v7, v15}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v15, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda83;

    invoke-direct {v15, v1, v14}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda83;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Ljava/util/regex/Pattern;)V

    .line 2688
    invoke-interface {v7, v15}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 2689
    invoke-interface {v7}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v7

    .line 2690
    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jline/reader/impl/LineReaderImpl$Pair;

    move-object v5, v7

    .line 2691
    if-nez v5, :cond_a

    iget v7, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    if-ltz v7, :cond_a

    .line 2692
    invoke-interface {v4}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, -0x1

    invoke-direct {v1, v14, v7, v15}, Lorg/jline/reader/impl/LineReaderImpl;->matches(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v15, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda80;

    invoke-direct {v15}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda80;-><init>()V

    .line 2693
    invoke-static {v15}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v7

    .line 2694
    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jline/reader/impl/LineReaderImpl$Pair;

    move-object v5, v7

    move-object v2, v5

    goto :goto_7

    .line 2698
    .end local v2    # "nextOnly":Z
    :cond_a
    move-object v2, v5

    goto :goto_7

    .line 2685
    .restart local v2    # "nextOnly":Z
    :cond_b
    move-object v2, v5

    .line 2698
    .end local v5    # "pair":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v2, "pair":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_7
    if-eqz v2, :cond_d

    .line 2699
    iget-object v5, v2, Lorg/jline/reader/impl/LineReaderImpl$Pair;->u:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    .line 2700
    iget-object v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->clear()Z

    .line 2701
    iget v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    if-ltz v5, :cond_c

    .line 2702
    iget-object v7, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget-object v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v15, v5}, Lorg/jline/reader/History;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 2704
    :cond_c
    iget-object v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 2706
    :goto_8
    iget-object v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget-object v7, v2, Lorg/jline/reader/impl/LineReaderImpl$Pair;->v:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v7}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 2707
    const/4 v5, 0x0

    iput-boolean v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchFailing:Z

    goto :goto_9

    .line 2709
    :cond_d
    const/4 v5, 0x0

    const/4 v7, 0x1

    iput-boolean v7, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchFailing:Z

    .line 2710
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->beep()Z

    .line 2713
    .end local v2    # "pair":Lorg/jline/reader/impl/LineReaderImpl$Pair;, "Lorg/jline/reader/impl/LineReaderImpl$Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13    # "caseInsensitive":Z
    .end local v14    # "pat":Ljava/util/regex/Pattern;
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay()Z

    .line 2714
    move v2, v5

    const/4 v5, -0x1

    .end local v0    # "prevSearchIndex":I
    .end local v9    # "operation":Lorg/jline/reader/Binding;
    .end local v10    # "ref":Ljava/lang/String;
    .end local v11    # "next":Z
    .end local v12    # "pattern":Ljava/lang/String;
    goto/16 :goto_0

    .line 2628
    .restart local v0    # "prevSearchIndex":I
    .restart local v9    # "operation":Lorg/jline/reader/Binding;
    .restart local v10    # "ref":Ljava/lang/String;
    .restart local v11    # "next":Z
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->beep()Z

    .line 2629
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v4}, Lorg/jline/reader/Buffer;->copyFrom(Lorg/jline/reader/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2630
    nop

    .line 2722
    iput-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    .line 2723
    const/4 v2, -0x1

    iput v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    .line 2724
    iput-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 2630
    const/4 v2, 0x1

    return v2

    .line 2649
    :goto_a
    const/4 v5, -0x1

    if-eq v2, v5, :cond_e

    .line 2650
    :try_start_1
    iget-object v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v5, v2}, Lorg/jline/reader/History;->moveTo(I)Z

    .line 2652
    :cond_e
    invoke-direct/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->pushBackBinding()V
    :try_end_1
    .catch Ljava/io/IOError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2653
    nop

    .line 2722
    iput-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    .line 2723
    const/4 v2, -0x1

    iput v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    .line 2724
    iput-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 2653
    const/4 v2, 0x1

    return v2

    .line 2722
    .end local v0    # "prevSearchIndex":I
    .end local v9    # "operation":Lorg/jline/reader/Binding;
    .end local v10    # "ref":Ljava/lang/String;
    .end local v11    # "next":Z
    :catchall_0
    move-exception v0

    goto :goto_b

    .line 2715
    :catch_0
    move-exception v0

    .line 2717
    .local v0, "e":Ljava/io/IOError;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/InterruptedException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_f

    .line 2720
    nop

    .line 2722
    iput-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    .line 2723
    const/4 v2, -0x1

    iput v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    .line 2724
    iput-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 2720
    const/4 v2, 0x1

    return v2

    .line 2718
    :cond_f
    nop

    .end local v3    # "terminators":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .end local v4    # "originalBuffer":Lorg/jline/reader/Buffer;
    .end local p1    # "backward":Z
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2722
    .end local v0    # "e":Ljava/io/IOError;
    .restart local v3    # "terminators":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .restart local v4    # "originalBuffer":Lorg/jline/reader/Buffer;
    .restart local p1    # "backward":Z
    :goto_b
    iput-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    .line 2723
    const/4 v2, -0x1

    iput v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    .line 2724
    iput-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 2725
    throw v0

    :sswitch_data_0
    .sparse-switch
        0x4fa94bc -> :sswitch_4
        0x5852330 -> :sswitch_3
        0x1065234e -> :sswitch_2
        0x1e0acacc -> :sswitch_1
        0x3a35d05a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected doViDeleteOrChange(IIZ)Z
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "isChange"    # Z

    .line 3399
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 3400
    return v0

    .line 3403
    :cond_0
    if-ge p2, p1, :cond_1

    .line 3404
    move v1, p2

    .line 3405
    .local v1, "tmp":I
    move p2, p1

    .line 3406
    move p1, v1

    .line 3409
    .end local v1    # "tmp":I
    :cond_1
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, p1}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 3410
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    sub-int v2, p2, p1

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->delete(I)I

    .line 3417
    if-nez p3, :cond_2

    if-lez p1, :cond_2

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 3418
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3420
    :cond_2
    return v0
.end method

.method protected doViMatchBracket()Z
    .locals 8

    .line 2244
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 2246
    .local v0, "pos":I
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2247
    return v2

    .line 2250
    :cond_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getBracketType(I)I

    move-result v1

    .line 2251
    .local v1, "type":I
    const/4 v3, 0x1

    if-gez v1, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 2252
    .local v4, "move":I
    :goto_0
    const/4 v5, 0x1

    .line 2254
    .local v5, "count":I
    if-nez v1, :cond_2

    .line 2255
    return v2

    .line 2257
    :cond_2
    :goto_1
    if-lez v5, :cond_7

    .line 2258
    add-int/2addr v0, v4

    .line 2261
    if-ltz v0, :cond_6

    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v6}, Lorg/jline/reader/Buffer;->length()I

    move-result v6

    if-lt v0, v6, :cond_3

    goto :goto_3

    .line 2265
    :cond_3
    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v6, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/jline/reader/impl/LineReaderImpl;->getBracketType(I)I

    move-result v6

    .line 2266
    .local v6, "curType":I
    if-ne v6, v1, :cond_4

    .line 2267
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2269
    :cond_4
    neg-int v7, v1

    if-ne v6, v7, :cond_5

    .line 2270
    add-int/lit8 v5, v5, -0x1

    .line 2272
    .end local v6    # "curType":I
    :cond_5
    :goto_2
    goto :goto_1

    .line 2262
    :cond_6
    :goto_3
    return v2

    .line 2278
    :cond_7
    if-lez v4, :cond_8

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViMoveOperation()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2279
    add-int/lit8 v0, v0, 0x1

    .line 2281
    :cond_8
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v0}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 2282
    return v3
.end method

.method protected downCaseWord()Z
    .locals 5

    .line 1724
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1725
    .local v0, "count":I
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    .line 1726
    .local v1, "cursor":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "count":I
    .local v2, "count":I
    const/4 v3, 0x1

    if-lez v0, :cond_2

    .line 1727
    :goto_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1728
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v3}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_1

    .line 1730
    :cond_0
    :goto_2
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1731
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v4

    invoke-interface {v0, v4}, Lorg/jline/reader/Buffer;->currChar(I)Z

    .line 1732
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v3}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_2

    .line 1726
    :cond_1
    move v0, v2

    goto :goto_0

    .line 1735
    :cond_2
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_3

    .line 1736
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 1738
    :cond_3
    return v3
.end method

.method protected downHistory()Z
    .locals 2

    .line 3132
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 3133
    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->moveHistory(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3134
    sget-object v0, Lorg/jline/reader/LineReader$Option;->HISTORY_BEEP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 3137
    :cond_1
    return v1
.end method

.method protected downLine()Z
    .locals 1

    .line 3155
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->down()Z

    move-result v0

    return v0
.end method

.method protected downLineOrHistory()Z
    .locals 1

    .line 3167
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->downLine()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->downHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected downLineOrSearch()Z
    .locals 1

    .line 3171
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->downLine()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->historySearchForward()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public editAndAddInBuffer(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1082
    sget-object v0, Lorg/jline/reader/LineReader$Option;->BRACKETED_PASTE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\u001b[?2004l"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1085
    :cond_0
    const-string v0, "org.jline.builtins.Nano"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lorg/jline/terminal/Terminal;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/io/File;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1086
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    aput-object v2, v1, v4

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/Editor;

    .line 1087
    .local v1, "editor":Lorg/jline/reader/Editor;
    invoke-interface {v1, v5}, Lorg/jline/reader/Editor;->setRestricted(Z)V

    .line 1088
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jline/reader/Editor;->open(Ljava/util/List;)V

    .line 1089
    invoke-interface {v1}, Lorg/jline/reader/Editor;->run()V

    .line 1090
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1092
    .local v2, "br":Ljava/io/BufferedReader;
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->commandsBuffer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1093
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1094
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->commandsBuffer:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1096
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1097
    return-void
.end method

.method protected editAndExecute()Z
    .locals 4

    .line 3625
    const/4 v0, 0x1

    .line 3626
    .local v0, "out":Z
    const/4 v1, 0x0

    .line 3628
    .local v1, "file":Ljava/io/File;
    :try_start_0
    const-string v2, "jline-execute-"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    .line 3629
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 3630
    .local v2, "writer":Ljava/io/FileWriter;
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3631
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 3632
    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->editAndAddInBuffer(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3637
    .end local v2    # "writer":Ljava/io/FileWriter;
    sget-object v2, Lorg/jline/reader/impl/LineReaderImpl$State;->IGNORE:Lorg/jline/reader/impl/LineReaderImpl$State;

    iput-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->state:Lorg/jline/reader/impl/LineReaderImpl$State;

    .line 3638
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3639
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 3637
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 3633
    :catch_0
    move-exception v2

    .line 3634
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v3}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3635
    const/4 v0, 0x0

    .line 3637
    .end local v2    # "e":Ljava/lang/Exception;
    sget-object v2, Lorg/jline/reader/impl/LineReaderImpl$State;->IGNORE:Lorg/jline/reader/impl/LineReaderImpl$State;

    iput-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->state:Lorg/jline/reader/impl/LineReaderImpl$State;

    .line 3638
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3639
    goto :goto_0

    .line 3642
    :cond_0
    :goto_1
    return v0

    .line 3637
    :goto_2
    sget-object v3, Lorg/jline/reader/impl/LineReaderImpl$State;->IGNORE:Lorg/jline/reader/impl/LineReaderImpl$State;

    iput-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->state:Lorg/jline/reader/impl/LineReaderImpl$State;

    .line 3638
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3639
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3641
    :cond_1
    throw v2
.end method

.method public emacs()Lorg/jline/keymap/KeyMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;"
        }
    .end annotation

    .line 5938
    move-object/from16 v0, p0

    new-instance v1, Lorg/jline/keymap/KeyMap;

    invoke-direct {v1}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 5939
    .local v1, "emacs":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    invoke-direct {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bindKeys(Lorg/jline/keymap/KeyMap;)V

    .line 5940
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v4, 0x40

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "set-mark-command"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5941
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x41

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "beginning-of-line"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5942
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x42

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "backward-char"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5943
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x44

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "delete-char-or-list"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5944
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x45

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "end-of-line"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5945
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x46

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "forward-char"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5946
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x47

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "abort"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5947
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v8, 0x48

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "backward-delete-char"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5948
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x49

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "expand-or-complete"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5949
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x4a

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "accept-line"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5950
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v11, 0x4b

    invoke-static {v11}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v5

    const-string v11, "kill-line"

    invoke-direct {v0, v1, v11, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5951
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v12, 0x4c

    invoke-static {v12}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v5

    const-string v12, "clear-screen"

    invoke-direct {v0, v1, v12, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5952
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v12, 0x4d

    invoke-static {v12}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v5

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5953
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x4e

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "down-line-or-history"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5954
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x4f

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "accept-line-and-down-history"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5955
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x50

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "up-line-or-history"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5956
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x52

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "history-incremental-search-backward"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5957
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x53

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "history-incremental-search-forward"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5958
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x54

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "transpose-chars"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5959
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x55

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "kill-whole-line"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5960
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x56

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "quoted-insert"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5961
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x57

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "backward-kill-word"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5962
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v13, 0x59

    invoke-static {v13}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v5

    const-string v13, "yank"

    invoke-direct {v0, v1, v13, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5963
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v13, 0x5d

    invoke-static {v13}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v5

    const-string v14, "character-search"

    invoke-direct {v0, v1, v14, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5964
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v14, 0x5f

    invoke-static {v14}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v5

    const-string v15, "undo"

    invoke-direct {v0, v1, v15, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5965
    const-string v3, " -~"

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->range(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    const-string v14, "self-insert"

    invoke-direct {v0, v1, v14, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 5966
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v14, ")"

    aput-object v14, v3, v5

    const-string v14, "insert-close-paren"

    invoke-direct {v0, v1, v14, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5967
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v14, "]"

    aput-object v14, v3, v5

    const-string v14, "insert-close-square"

    invoke-direct {v0, v1, v14, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5968
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v14, "}"

    aput-object v14, v3, v5

    const-string v14, "insert-close-curly"

    invoke-direct {v0, v1, v14, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5969
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v5

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5970
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^X^B"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "vi-match-bracket"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5971
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^X^G"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5972
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^X^E"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "edit-and-execute-command"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5973
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^X^F"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "vi-find-next-char"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5974
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^X^J"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "vi-join"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5975
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^X^K"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "kill-buffer"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5976
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^X^N"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "infer-next-history"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5977
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^X^O"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "overwrite-mode"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5978
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^X^R"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "redo"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5979
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^X^U"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    invoke-direct {v0, v1, v15, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5980
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^X^V"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "vi-cmd-mode"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5981
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^X^X"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "exchange-point-and-mark"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5982
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v9, "^XA-^XZ"

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "do-lowercase-version"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5983
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v14, "^X="

    invoke-static {v14}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v5

    const-string v14, "what-cursor-position"

    invoke-direct {v0, v1, v14, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5984
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v14, "^X^?"

    invoke-static {v14}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v5

    invoke-direct {v0, v1, v11, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5985
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5986
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5987
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-static {v12}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "self-insert-unmeta"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5988
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->esc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "complete-word"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5989
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-static {v13}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "character-search-backward"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5990
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x5f

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "copy-prev-word"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5991
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x20

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5992
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v4, 0x2d

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "neg-argument"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5993
    const-string v3, "\\E0-\\E9"

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->range(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    const-string v4, "digit-argument"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 5994
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v4, 0x3c

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "beginning-of-history"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5995
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v4, 0x3d

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "list-choices"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5996
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x3e

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "end-of-history"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5997
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x3f

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5998
    const-string v3, "^[A-^[Z"

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->range(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 5999
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v4, 0x61

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "accept-and-hold"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6000
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v4, 0x62

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "backward-word"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6001
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x63

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "capitalize-word"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6002
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x64

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "kill-word"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6003
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, "^[[3;5~"

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6004
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x66

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "forward-word"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6005
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x6c

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "down-case-word"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6006
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x6e

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "history-search-forward"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6007
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x70

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "history-search-backward"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6008
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x74

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "transpose-words"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6009
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x75

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "up-case-word"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6010
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x79

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "yank-pop"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6011
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6012
    invoke-direct {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bindArrowKeys(Lorg/jline/keymap/KeyMap;)V

    .line 6013
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, "^[[1;5C"

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6014
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, "^[[1;5D"

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6015
    new-array v3, v2, [Ljava/lang/CharSequence;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {v0, v7}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6016
    new-array v3, v2, [Ljava/lang/CharSequence;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {v0, v7}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6017
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, "^[[C"

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6018
    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string v3, "^[[D"

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v4, v2}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6019
    return-object v1
.end method

.method protected emacsBackwardWord()Z
    .locals 2

    .line 1599
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1600
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda167;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda167;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1602
    :cond_0
    :goto_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v0, :cond_3

    .line 1603
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_2

    .line 1604
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1605
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1609
    :cond_2
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    if-lez v0, :cond_0

    .line 1610
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1611
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1612
    goto :goto_0

    .line 1616
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected emacsEditingMode()Z
    .locals 1

    .line 3200
    const-string v0, "emacs"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setKeyMap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected emacsForwardWord()Z
    .locals 3

    .line 1410
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1411
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda165;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda165;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1413
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_3

    .line 1414
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1415
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_0

    .line 1417
    :cond_1
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViChangeOperation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-nez v0, :cond_2

    .line 1418
    return v1

    .line 1420
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_1

    .line 1424
    :cond_3
    return v1
.end method

.method protected endOfBufferOrHistory()Z
    .locals 2

    .line 3074
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->findeol()I

    move-result v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3075
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 3076
    const/4 v0, 0x1

    return v0

    .line 3078
    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->endOfHistory()Z

    move-result v0

    return v0
.end method

.method protected endOfHistory()Z
    .locals 1

    .line 3083
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3084
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->current()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setBuffer(Ljava/lang/String;)V

    .line 3085
    const/4 v0, 0x1

    return v0

    .line 3087
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected endOfLine()Z
    .locals 3

    .line 3292
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 3293
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3295
    :cond_1
    return v1
.end method

.method protected endOfLineHist()Z
    .locals 3

    .line 3108
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 3109
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda141;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda141;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 3111
    :cond_0
    :goto_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 3112
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->findeol()I

    move-result v0

    .line 3113
    .local v0, "eol":I
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 3114
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v0}, Lorg/jline/reader/Buffer;->cursor(I)Z

    goto :goto_1

    .line 3116
    :cond_1
    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->moveHistory(Z)Z

    .line 3118
    .end local v0    # "eol":I
    :goto_1
    goto :goto_0

    .line 3119
    :cond_2
    return v1
.end method

.method protected exchangePointAndMark()Z
    .locals 4

    .line 3525
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3526
    sget-object v0, Lorg/jline/reader/LineReader$RegionType;->CHAR:Lorg/jline/reader/LineReader$RegionType;

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    .line 3527
    return v1

    .line 3529
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    .line 3530
    .local v0, "x":I
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    iput v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    .line 3531
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v0}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 3532
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 3533
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 3535
    :cond_1
    iget v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v2, :cond_2

    .line 3536
    sget-object v2, Lorg/jline/reader/LineReader$RegionType;->CHAR:Lorg/jline/reader/LineReader$RegionType;

    iput-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    .line 3538
    :cond_2
    return v1
.end method

.method protected expandHistory()Z
    .locals 3

    .line 4287
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4288
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->expander:Lorg/jline/reader/Expander;

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1, v2, v0}, Lorg/jline/reader/Expander;->expandHistory(Lorg/jline/reader/History;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4289
    .local v1, "exp":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4290
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->clear()Z

    .line 4291
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v1}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 4292
    const/4 v2, 0x1

    return v2

    .line 4294
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected expandOrComplete()Z
    .locals 3

    .line 4314
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->insertTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4315
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->selfInsert()Z

    move-result v0

    return v0

    .line 4317
    :cond_0
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->ExpandComplete:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->MENU_COMPLETE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->doComplete(Lorg/jline/reader/impl/LineReaderImpl$CompletionType;ZZ)Z

    move-result v0

    return v0
.end method

.method protected expandOrCompletePrefix()Z
    .locals 3

    .line 4322
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->insertTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4323
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->selfInsert()Z

    move-result v0

    return v0

    .line 4325
    :cond_0
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->ExpandComplete:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->MENU_COMPLETE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->doComplete(Lorg/jline/reader/impl/LineReaderImpl$CompletionType;ZZ)Z

    move-result v0

    return v0
.end method

.method protected expandWord()Z
    .locals 3

    .line 4306
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->insertTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4307
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->selfInsert()Z

    move-result v0

    return v0

    .line 4309
    :cond_0
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->Expand:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    sget-object v1, Lorg/jline/reader/LineReader$Option;->MENU_COMPLETE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->doComplete(Lorg/jline/reader/impl/LineReaderImpl$CompletionType;ZZ)Z

    move-result v0

    return v0
.end method

.method protected finish(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 1113
    move-object v0, p1

    .line 1115
    .local v0, "historyLine":Ljava/lang/String;
    sget-object v1, Lorg/jline/reader/LineReader$Option;->DISABLE_EVENT_EXPANSION:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1117
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1118
    .local v2, "escaped":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1119
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1120
    .local v4, "ch":C
    if-eqz v2, :cond_0

    .line 1121
    const/4 v2, 0x0

    .line 1122
    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    .line 1123
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1125
    :cond_0
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->parser:Lorg/jline/reader/Parser;

    invoke-interface {v5, v4}, Lorg/jline/reader/Parser;->isEscapeChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1126
    const/4 v2, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1118
    .end local v4    # "ch":C
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1131
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1134
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "escaped":Z
    :cond_4
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->maskingCallback:Lorg/jline/reader/MaskingCallback;

    if-eqz v1, :cond_5

    .line 1135
    invoke-interface {v1, v0}, Lorg/jline/reader/MaskingCallback;->history(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1139
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 1140
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jline/reader/History;->add(Ljava/time/Instant;Ljava/lang/String;)V

    .line 1142
    :cond_6
    return-object p1
.end method

.method protected finishBuffer()Ljava/lang/String;
    .locals 1

    .line 1109
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 1

    .line 885
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->flush()V

    .line 886
    return-void
.end method

.method public focusIn()Z
    .locals 1

    .line 5781
    const/4 v0, 0x0

    return v0
.end method

.method public focusOut()Z
    .locals 1

    .line 5785
    const/4 v0, 0x0

    return v0
.end method

.method protected forwardChar()Z
    .locals 2

    .line 2375
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected forwardWord()Z
    .locals 3

    .line 1340
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1341
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda144;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda144;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1343
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_3

    .line 1344
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1345
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_0

    .line 1347
    :cond_1
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViChangeOperation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-nez v0, :cond_2

    .line 1348
    goto :goto_2

    .line 1350
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1351
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_1

    .line 1354
    :cond_3
    :goto_2
    return v1
.end method

.method protected freshLine()Z
    .locals 8

    .line 803
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->auto_right_margin:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {v0, v1}, Lorg/jline/terminal/Terminal;->getBooleanCapability(Lorg/jline/utils/InfoCmp$Capability;)Z

    move-result v0

    .line 804
    .local v0, "wrapAtEol":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v4, Lorg/jline/utils/InfoCmp$Capability;->eat_newline_glitch:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {v3, v4}, Lorg/jline/terminal/Terminal;->getBooleanCapability(Lorg/jline/utils/InfoCmp$Capability;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 805
    .local v3, "delayedWrapAtEol":Z
    :goto_0
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 806
    .local v4, "sb":Lorg/jline/utils/AttributedStringBuilder;
    sget-object v5, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 807
    const-string v5, "~"

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 808
    sget-object v5, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 809
    const-string v5, " "

    if-eqz v0, :cond_4

    if-eqz v3, :cond_1

    goto :goto_2

    .line 822
    :cond_1
    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->clr_eol:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {v6, v7}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v6

    .line 823
    .local v6, "el":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 824
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v6, v1}, Lorg/jline/utils/Curses;->tputs(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 826
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v7}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-ge v1, v7, :cond_3

    .line 827
    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 826
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 829
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->carriage_return:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v1, v7}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 830
    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 831
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->carriage_return:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v1, v5}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_4

    .line 810
    .end local v6    # "el":Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v6}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v6

    sub-int/2addr v6, v2

    if-ge v1, v6, :cond_5

    .line 811
    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 810
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 813
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->carriage_return:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v1, v6}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 814
    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 815
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->carriage_return:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v1, v5}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 833
    :goto_4
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-virtual {v4, v1}, Lorg/jline/utils/AttributedStringBuilder;->print(Lorg/jline/terminal/Terminal;)V

    .line 834
    return v2
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAutosuggestion()Lorg/jline/reader/LineReader$SuggestionType;
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->autosuggestion:Lorg/jline/reader/LineReader$SuggestionType;

    return-object v0
.end method

.method getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 5901
    invoke-static {p0, p1, p2}, Lorg/jline/reader/impl/ReaderUtils;->getBoolean(Lorg/jline/reader/LineReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getBracketType(I)I
    .locals 1
    .param p1, "ch"    # I

    .line 2293
    sparse-switch p1, :sswitch_data_0

    .line 2301
    const/4 v0, 0x0

    return v0

    .line 2297
    :sswitch_0
    const/4 v0, -0x2

    return v0

    .line 2296
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 2295
    :sswitch_2
    const/4 v0, -0x1

    return v0

    .line 2294
    :sswitch_3
    const/4 v0, 0x1

    return v0

    .line 2299
    :sswitch_4
    const/4 v0, -0x3

    return v0

    .line 2298
    :sswitch_5
    const/4 v0, 0x3

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_5
        0x29 -> :sswitch_4
        0x5b -> :sswitch_3
        0x5d -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public getBuffer()Lorg/jline/reader/Buffer;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    return-object v0
.end method

.method public getBuiltinWidgets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->builtinWidgets:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getCandidateComparator(ZLjava/lang/String;)Ljava/util/Comparator;
    .locals 4
    .param p1, "caseInsensitive"    # Z
    .param p2, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator<",
            "Lorg/jline/reader/Candidate;",
            ">;"
        }
    .end annotation

    .line 4591
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 4592
    .local v0, "wdi":Ljava/lang/String;
    :goto_0
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda84;

    invoke-direct {v1, v0, p1}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda84;-><init>(Ljava/lang/String;Z)V

    .line 4593
    .local v1, "wordDistance":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/lang/String;>;"
    new-instance v2, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda111;

    invoke-direct {v2}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda111;-><init>()V

    .line 4594
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    .line 4595
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    .line 4593
    return-object v2
.end method

.method public getCompleter()Lorg/jline/reader/Completer;
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->completer:Lorg/jline/reader/Completer;

    return-object v0
.end method

.method protected getCompletionStyle(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 5466
    new-instance v0, Lorg/jline/utils/StyleResolver;

    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda133;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda133;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {v0, v1}, Lorg/jline/utils/StyleResolver;-><init>(Ljava/util/function/Function;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/jline/utils/StyleResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method protected getCompletionStyleBackground()Lorg/jline/utils/AttributedStyle;
    .locals 2

    .line 5442
    const-string v0, "COMPLETION_STYLE_BACKGROUND"

    const-string v1, "bg:default"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyle(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method protected getCompletionStyleBackground(Z)Lorg/jline/utils/AttributedStyle;
    .locals 1
    .param p1, "menuList"    # Z

    .line 5422
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleListBackground()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleBackground()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getCompletionStyleDescription()Lorg/jline/utils/AttributedStyle;
    .locals 2

    .line 5430
    const-string v0, "COMPLETION_STYLE_DESCRIPTION"

    const-string v1, "fg:bright-black"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyle(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method protected getCompletionStyleDescription(Z)Lorg/jline/utils/AttributedStyle;
    .locals 1
    .param p1, "menuList"    # Z

    .line 5410
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleListDescription()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleDescription()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getCompletionStyleGroup()Lorg/jline/utils/AttributedStyle;
    .locals 2

    .line 5434
    const-string v0, "COMPLETION_STYLE_GROUP"

    const-string v1, "fg:bright-magenta,bold"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyle(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method protected getCompletionStyleGroup(Z)Lorg/jline/utils/AttributedStyle;
    .locals 1
    .param p1, "menuList"    # Z

    .line 5414
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleListGroup()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleGroup()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getCompletionStyleListBackground()Lorg/jline/utils/AttributedStyle;
    .locals 2

    .line 5462
    const-string v0, "COMPLETION_STYLE_LIST_BACKGROUND"

    const-string v1, "bg:bright-magenta"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyle(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method protected getCompletionStyleListDescription()Lorg/jline/utils/AttributedStyle;
    .locals 2

    .line 5450
    const-string v0, "COMPLETION_STYLE_LIST_DESCRIPTION"

    const-string v1, "fg:bright-black"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyle(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method protected getCompletionStyleListGroup()Lorg/jline/utils/AttributedStyle;
    .locals 2

    .line 5454
    const-string v0, "COMPLETION_STYLE_LIST_GROUP"

    const-string v1, "fg:black,bold"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyle(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method protected getCompletionStyleListSelection()Lorg/jline/utils/AttributedStyle;
    .locals 2

    .line 5458
    const-string v0, "COMPLETION_STYLE_LIST_SELECTION"

    const-string v1, "inverse"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyle(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method protected getCompletionStyleListStarting()Lorg/jline/utils/AttributedStyle;
    .locals 2

    .line 5446
    const-string v0, "COMPLETION_STYLE_LIST_STARTING"

    const-string v1, "fg:cyan"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyle(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method protected getCompletionStyleSelection()Lorg/jline/utils/AttributedStyle;
    .locals 2

    .line 5438
    const-string v0, "COMPLETION_STYLE_SELECTION"

    const-string v1, "inverse"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyle(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method protected getCompletionStyleSelection(Z)Lorg/jline/utils/AttributedStyle;
    .locals 1
    .param p1, "menuList"    # Z

    .line 5418
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleListSelection()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleSelection()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getCompletionStyleStarting()Lorg/jline/utils/AttributedStyle;
    .locals 2

    .line 5426
    const-string v0, "COMPLETION_STYLE_STARTING"

    const-string v1, "fg:cyan"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyle(Ljava/lang/String;Ljava/lang/String;)Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    return-object v0
.end method

.method protected getCompletionStyleStarting(Z)Lorg/jline/utils/AttributedStyle;
    .locals 1
    .param p1, "menuList"    # Z

    .line 5406
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleListStarting()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleStarting()Lorg/jline/utils/AttributedStyle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDisplayedBufferWithPrompts(Ljava/util/List;)Lorg/jline/utils/AttributedString;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;)",
            "Lorg/jline/utils/AttributedString;"
        }
    .end annotation

    .line 4010
    .local p1, "secondaryPrompts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->getHighlightedBuffer(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    .line 4012
    .local v0, "attBuf":Lorg/jline/utils/AttributedString;
    invoke-direct {p0, v0, p1}, Lorg/jline/reader/impl/LineReaderImpl;->insertSecondaryPrompts(Lorg/jline/utils/AttributedString;Ljava/util/List;)Lorg/jline/utils/AttributedString;

    move-result-object v1

    .line 4013
    .local v1, "tNewBuf":Lorg/jline/utils/AttributedString;
    new-instance v2, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v2}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    .line 4014
    .local v2, "full":Lorg/jline/utils/AttributedStringBuilder;
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    invoke-virtual {v2, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4015
    invoke-virtual {v2, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4016
    iget-boolean v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->doAutosuggestion:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_d

    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isTerminalDumb()Z

    move-result v3

    if-nez v3, :cond_d

    .line 4017
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    .line 4018
    .local v3, "lastBinding":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->autosuggestion:Lorg/jline/reader/LineReader$SuggestionType;

    sget-object v6, Lorg/jline/reader/LineReader$SuggestionType;->HISTORY:Lorg/jline/reader/LineReader$SuggestionType;

    if-ne v5, v6, :cond_1

    .line 4019
    new-instance v5, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v5}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 4020
    .local v5, "sb":Lorg/jline/utils/AttributedStringBuilder;
    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v6}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jline/reader/impl/LineReaderImpl;->matchPreviousCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->tailTip:Ljava/lang/String;

    .line 4021
    new-instance v6, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda59;

    invoke-direct {v6}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda59;-><init>()V

    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->tailTip:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/jline/utils/AttributedStringBuilder;->styled(Ljava/util/function/Function;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4022
    invoke-virtual {v5}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4023
    .end local v5    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    goto/16 :goto_3

    :cond_1
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->autosuggestion:Lorg/jline/reader/LineReader$SuggestionType;

    sget-object v6, Lorg/jline/reader/LineReader$SuggestionType;->COMPLETER:Lorg/jline/reader/LineReader$SuggestionType;

    const-string v7, "\t"

    const/16 v8, 0x20

    if-ne v5, v6, :cond_4

    .line 4024
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->length()I

    move-result v5

    const-string v6, "suggestions-min-buffer-size"

    invoke-virtual {p0, v6, v4}, Lorg/jline/reader/impl/LineReaderImpl;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-lt v5, v6, :cond_3

    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 4025
    invoke-interface {v5}, Lorg/jline/reader/Buffer;->length()I

    move-result v5

    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v6}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 4026
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v5

    if-eq v5, v8, :cond_2

    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_3

    .line 4027
    :cond_2
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->clearChoices()Z

    .line 4028
    invoke-direct {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->listChoices(Z)Z

    goto/16 :goto_3

    .line 4029
    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 4030
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->clearChoices()Z

    goto/16 :goto_3

    .line 4032
    :cond_4
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->autosuggestion:Lorg/jline/reader/LineReader$SuggestionType;

    sget-object v6, Lorg/jline/reader/LineReader$SuggestionType;->TAIL_TIP:Lorg/jline/reader/LineReader$SuggestionType;

    if-ne v5, v6, :cond_d

    .line 4033
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->length()I

    move-result v5

    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v6}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v6

    if-ne v5, v6, :cond_d

    .line 4034
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 4035
    :cond_5
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->clearChoices()Z

    .line 4037
    :cond_6
    new-instance v5, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v5}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 4038
    .restart local v5    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v6}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v6

    if-eq v6, v8, :cond_c

    .line 4039
    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->tailTip:Ljava/lang/String;

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, " "

    if-nez v6, :cond_b

    .line 4040
    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->tailTip:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 4041
    .local v6, "idx":I
    iget-object v9, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v9}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 4042
    .local v8, "idb":I
    iget-object v9, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v9}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2d

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 4043
    .local v9, "idd":I
    if-lez v6, :cond_9

    const/4 v10, -0x1

    if-ne v8, v10, :cond_7

    if-eq v8, v9, :cond_8

    :cond_7
    if-ltz v8, :cond_9

    if-le v8, v9, :cond_9

    .line 4044
    :cond_8
    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->tailTip:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->tailTip:Ljava/lang/String;

    goto :goto_1

    .line 4045
    :cond_9
    if-ltz v8, :cond_a

    if-ge v8, v9, :cond_a

    .line 4046
    invoke-virtual {v5, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4048
    .end local v6    # "idx":I
    .end local v8    # "idb":I
    .end local v9    # "idd":I
    :cond_a
    :goto_1
    goto :goto_2

    .line 4049
    :cond_b
    invoke-virtual {v5, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4052
    :cond_c
    :goto_2
    new-instance v6, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda59;

    invoke-direct {v6}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda59;-><init>()V

    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->tailTip:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/jline/utils/AttributedStringBuilder;->styled(Ljava/util/function/Function;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4053
    invoke-virtual {v5}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4057
    .end local v3    # "lastBinding":Ljava/lang/String;
    .end local v5    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_d
    :goto_3
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    if-eqz v3, :cond_e

    .line 4058
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4059
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/utils/AttributedString;

    invoke-virtual {v2, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 4061
    :cond_e
    iput-boolean v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->doAutosuggestion:Z

    .line 4062
    invoke-virtual {v2}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v3

    return-object v3
.end method

.method public getExpander()Lorg/jline/reader/Expander;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->expander:Lorg/jline/reader/Expander;

    return-object v0
.end method

.method protected getGroupComparator()Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4608
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda94;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda94;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda95;

    invoke-direct {v1}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda95;-><init>()V

    .line 4609
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 4608
    return-object v0
.end method

.method public getHighlighter()Lorg/jline/reader/Highlighter;
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->highlighter:Lorg/jline/reader/Highlighter;

    return-object v0
.end method

.method public getHistory()Lorg/jline/reader/History;
    .locals 1

    .line 400
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    return-object v0
.end method

.method getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 5905
    invoke-static {p0, p1, p2}, Lorg/jline/reader/impl/ReaderUtils;->getInt(Lorg/jline/reader/LineReader;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getKeyMap()Ljava/lang/String;
    .locals 1

    .line 1030
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMap:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMaps()Ljava/util/Map;
    .locals 1
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

    .line 320
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMaps:Ljava/util/Map;

    return-object v0
.end method

.method public getKeys()Lorg/jline/keymap/KeyMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMaps:Ljava/util/Map;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMap:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/keymap/KeyMap;

    return-object v0
.end method

.method public getLastBinding()Ljava/lang/String;
    .locals 1

    .line 982
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v0}, Lorg/jline/keymap/BindingReader;->getLastBinding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 5909
    invoke-static {p0, p1, p2, p3}, Lorg/jline/reader/impl/ReaderUtils;->getLong(Lorg/jline/reader/LineReader;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getOriginalGroupName()Ljava/lang/String;
    .locals 2

    .line 4603
    const-string v0, "ORIGINAL_GROUP_NAME"

    const-string v1, "original"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOthersGroupName()Ljava/lang/String;
    .locals 2

    .line 4599
    const-string v0, "OTHERS_GROUP_NAME"

    const-string v1, "others"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParsedLine()Lorg/jline/reader/ParsedLine;
    .locals 1

    .line 977
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->parsedLine:Lorg/jline/reader/ParsedLine;

    return-object v0
.end method

.method public getParser()Lorg/jline/reader/Parser;
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->parser:Lorg/jline/reader/Parser;

    return-object v0
.end method

.method public getRegionActive()Lorg/jline/reader/LineReader$RegionType;
    .locals 1

    .line 992
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    return-object v0
.end method

.method public getRegionMark()I
    .locals 1

    .line 997
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    return v0
.end method

.method public getSearchTerm()Ljava/lang/String;
    .locals 1

    .line 987
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 5897
    invoke-static {p0, p1, p2}, Lorg/jline/reader/impl/ReaderUtils;->getString(Lorg/jline/reader/LineReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTailTip()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->tailTip:Ljava/lang/String;

    return-object v0
.end method

.method public getTerminal()Lorg/jline/terminal/Terminal;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1046
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVariables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1041
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->variables:Ljava/util/Map;

    return-object v0
.end method

.method protected getWidget(Ljava/lang/Object;)Lorg/jline/reader/Widget;
    .locals 3
    .param p1, "binding"    # Ljava/lang/Object;

    .line 1171
    instance-of v0, p1, Lorg/jline/reader/Widget;

    if-eqz v0, :cond_0

    .line 1172
    move-object v0, p1

    check-cast v0, Lorg/jline/reader/Widget;

    .local v0, "w":Lorg/jline/reader/Widget;
    goto :goto_1

    .line 1173
    .end local v0    # "w":Lorg/jline/reader/Widget;
    :cond_0
    instance-of v0, p1, Lorg/jline/reader/Macro;

    if-eqz v0, :cond_1

    .line 1174
    move-object v0, p1

    check-cast v0, Lorg/jline/reader/Macro;

    invoke-virtual {v0}, Lorg/jline/reader/Macro;->getSequence()Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, "macro":Ljava/lang/String;
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0, v0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda60;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Ljava/lang/String;)V

    move-object v0, v1

    .line 1179
    .local v0, "w":Lorg/jline/reader/Widget;
    goto :goto_1

    .end local v0    # "w":Lorg/jline/reader/Widget;
    :cond_1
    instance-of v0, p1, Lorg/jline/reader/Reference;

    if-eqz v0, :cond_3

    .line 1180
    move-object v0, p1

    check-cast v0, Lorg/jline/reader/Reference;

    invoke-virtual {v0}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->widgets:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/Widget;

    .line 1182
    .local v1, "w":Lorg/jline/reader/Widget;
    if-nez v1, :cond_2

    .line 1183
    new-instance v2, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda61;

    invoke-direct {v2, p0, v0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda61;-><init>(Lorg/jline/reader/impl/LineReaderImpl;Ljava/lang/String;)V

    move-object v1, v2

    move-object v0, v1

    goto :goto_0

    .line 1182
    :cond_2
    move-object v0, v1

    .line 1188
    .end local v1    # "w":Lorg/jline/reader/Widget;
    .local v0, "w":Lorg/jline/reader/Widget;
    :goto_0
    goto :goto_1

    .line 1189
    .end local v0    # "w":Lorg/jline/reader/Widget;
    :cond_3
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda62;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda62;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    .line 1194
    .restart local v0    # "w":Lorg/jline/reader/Widget;
    :goto_1
    return-object v0
.end method

.method public getWidgets()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/reader/Widget;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->widgets:Ljava/util/Map;

    return-object v0
.end method

.method protected handleSignal(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 4
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 1146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->doAutosuggestion:Z

    .line 1147
    sget-object v1, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    if-ne p1, v1, :cond_1

    .line 1148
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-static {v1, v0}, Lorg/jline/utils/Status;->getStatus(Lorg/jline/terminal/Terminal;Z)Lorg/jline/utils/Status;

    move-result-object v0

    .line 1149
    .local v0, "status":Lorg/jline/utils/Status;
    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {v0}, Lorg/jline/utils/Status;->hardReset()V

    .line 1152
    :cond_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->getBufferSize()Lorg/jline/terminal/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 1153
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getRows()I

    move-result v2

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v3}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/jline/utils/Display;->resize(II)V

    .line 1156
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay()Z

    .line 1157
    .end local v0    # "status":Lorg/jline/utils/Status;
    goto :goto_0

    .line 1158
    :cond_1
    sget-object v1, Lorg/jline/terminal/Terminal$Signal;->CONT:Lorg/jline/terminal/Terminal$Signal;

    if-ne p1, v1, :cond_2

    .line 1159
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->enterRawMode()Lorg/jline/terminal/Attributes;

    .line 1160
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->getBufferSize()Lorg/jline/terminal/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 1161
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getRows()I

    move-result v2

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v3}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/jline/utils/Display;->resize(II)V

    .line 1162
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->keypad_xmit:Lorg/jline/utils/InfoCmp$Capability;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 1163
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->redrawLine()Z

    .line 1164
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay()Z

    .line 1166
    :cond_2
    :goto_0
    return-void
.end method

.method protected historyIncrementalSearchBackward()Z
    .locals 1

    .line 2584
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->doSearchHistory(Z)Z

    move-result v0

    return v0
.end method

.method protected historyIncrementalSearchForward()Z
    .locals 1

    .line 2580
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->doSearchHistory(Z)Z

    move-result v0

    return v0
.end method

.method protected historySearchBackward()Z
    .locals 4

    .line 2824
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->historyBuffer:Lorg/jline/reader/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 2825
    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->current()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2826
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->copy()Lorg/jline/reader/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->historyBuffer:Lorg/jline/reader/Buffer;

    .line 2827
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getFirstWord()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchBuffer:Ljava/lang/CharSequence;

    .line 2829
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchBuffer:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->index()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->searchBackwards(Ljava/lang/String;IZ)I

    move-result v0

    .line 2831
    .local v0, "searchIndex":I
    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 2832
    return v3

    .line 2835
    :cond_2
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1, v0}, Lorg/jline/reader/History;->moveTo(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2836
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->current()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->setBuffer(Ljava/lang/String;)V

    .line 2841
    return v2

    .line 2838
    :cond_3
    return v3
.end method

.method protected historySearchForward()Z
    .locals 7

    .line 2775
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->historyBuffer:Lorg/jline/reader/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 2776
    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->current()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2777
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->copy()Lorg/jline/reader/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->historyBuffer:Lorg/jline/reader/Buffer;

    .line 2778
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getFirstWord()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchBuffer:Ljava/lang/CharSequence;

    .line 2780
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->index()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2782
    .local v0, "index":I
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v2}, Lorg/jline/reader/History;->last()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge v0, v2, :cond_5

    .line 2783
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchBuffer:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->searchForwards(Ljava/lang/String;IZ)I

    move-result v2

    .line 2784
    .local v2, "searchIndex":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    .line 2785
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v5}, Lorg/jline/reader/History;->moveToEnd()V

    .line 2786
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->historyBuffer:Lorg/jline/reader/Buffer;

    invoke-interface {v6}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2787
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->historyBuffer:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->setBuffer(Ljava/lang/String;)V

    .line 2788
    iput-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->historyBuffer:Lorg/jline/reader/Buffer;

    goto :goto_0

    .line 2790
    :cond_2
    return v4

    .line 2794
    :cond_3
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v3, v2}, Lorg/jline/reader/History;->moveTo(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2795
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v3}, Lorg/jline/reader/History;->current()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jline/reader/impl/LineReaderImpl;->setBuffer(Ljava/lang/String;)V

    .line 2802
    .end local v2    # "searchIndex":I
    :goto_0
    goto :goto_1

    .line 2797
    .restart local v2    # "searchIndex":I
    :cond_4
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->moveToEnd()V

    .line 2798
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->historyBuffer:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->setBuffer(Ljava/lang/String;)V

    .line 2799
    return v4

    .line 2803
    .end local v2    # "searchIndex":I
    :cond_5
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v2}, Lorg/jline/reader/History;->moveToEnd()V

    .line 2804
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->historyBuffer:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2805
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->historyBuffer:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->setBuffer(Ljava/lang/String;)V

    .line 2806
    iput-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->historyBuffer:Lorg/jline/reader/Buffer;

    .line 2811
    :goto_1
    return v1

    .line 2808
    :cond_6
    return v4
.end method

.method indention(ILjava/lang/StringBuilder;)V
    .locals 3
    .param p1, "nb"    # I
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 3017
    const-string v0, "indentation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/2addr v0, p1

    .line 3018
    .local v0, "indent":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3019
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3018
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3021
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected insertClose(Ljava/lang/String;)Z
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .line 2187
    invoke-virtual {p0, p1}, Lorg/jline/reader/impl/LineReaderImpl;->putString(Ljava/lang/CharSequence;)V

    .line 2189
    const-string v0, "blink-matching-paren"

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2190
    .local v0, "blink":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    .line 2191
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->removeIndentation()V

    .line 2192
    return v3

    .line 2195
    :cond_0
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    .line 2197
    .local v2, "closePosition":I
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lorg/jline/reader/Buffer;->move(I)I

    .line 2198
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->doViMatchBracket()Z

    .line 2199
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay()Z

    .line 2201
    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->peekCharacter(J)I

    .line 2202
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v4

    .line 2203
    .local v4, "blinkPosition":I
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5, v2}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 2205
    add-int/lit8 v5, v2, -0x1

    if-eq v4, v5, :cond_1

    .line 2206
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->removeIndentation()V

    .line 2208
    :cond_1
    return v3
.end method

.method protected insertCloseCurly()Z
    .locals 1

    .line 2175
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->insertClose(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected insertCloseParen()Z
    .locals 1

    .line 2179
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->insertClose(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected insertCloseSquare()Z
    .locals 1

    .line 2183
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->insertClose(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected insertComment()Z
    .locals 1

    .line 1915
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->doInsertComment(Z)Z

    move-result v0

    return v0
.end method

.method protected insertTab()Z
    .locals 2

    .line 4281
    sget-object v0, Lorg/jline/reader/LineReader$Option;->INSERT_TAB:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4282
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 4283
    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(^|[\\s\\S]*\n)[\r\n\t ]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4281
    :goto_0
    return v0
.end method

.method protected isAlpha(I)Z
    .locals 1
    .param p1, "c"    # I

    .line 5887
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method protected isDelimiter(I)Z
    .locals 1
    .param p1, "c"    # I

    .line 5866
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isInViChangeOperation()Z
    .locals 2

    .line 1287
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->viMoveMode:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    sget-object v1, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->CHANGE:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isInViCmdMode()Z
    .locals 2

    .line 1291
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMap:Ljava/lang/String;

    const-string v1, "vicmd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isInViMoveOperation()Z
    .locals 2

    .line 1283
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->viMoveMode:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    sget-object v1, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->NORMAL:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKeyMap(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 889
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMap:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReading()Z
    .locals 2

    .line 794
    :try_start_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 795
    iget-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->reading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 795
    return v0

    .line 797
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 798
    throw v0
.end method

.method public isSet(Lorg/jline/reader/LineReader$Option;)Z
    .locals 1
    .param p1, "option"    # Lorg/jline/reader/LineReader$Option;

    .line 1062
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->options:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/jline/reader/LineReader$Option;->isSet(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method protected isViAlphaNum(I)Z
    .locals 1
    .param p1, "c"    # I

    .line 5883
    const/16 v0, 0x5f

    if-eq p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isWhitespace(I)Z
    .locals 1
    .param p1, "c"    # I

    .line 5879
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method protected isWord(I)Z
    .locals 2
    .param p1, "c"    # I

    .line 5891
    const-string v0, "WORDCHARS"

    const-string v1, "*?_-.[]~=/&;!#$%^(){}<>"

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5892
    .local v0, "wordchars":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x80

    if-ge p1, v1, :cond_0

    int-to-char v1, p1

    .line 5893
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 5892
    :goto_1
    return v1
.end method

.method protected killBuffer()Z
    .locals 2

    .line 5544
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/reader/impl/KillRing;->add(Ljava/lang/String;)V

    .line 5545
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->clear()Z

    .line 5546
    const/4 v0, 0x1

    return v0
.end method

.method public killLine()Z
    .locals 5

    .line 5595
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 5596
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda41;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 5598
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5599
    const/4 v0, 0x0

    return v0

    .line 5601
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 5602
    .local v0, "cp":I
    move v1, v0

    .line 5603
    .local v1, "len":I
    :cond_2
    :goto_0
    iget v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v2, :cond_4

    .line 5604
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v1}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 5605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5607
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v1}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v1}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 5608
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5612
    :cond_4
    sub-int v2, v1, v0

    .line 5613
    .local v2, "num":I
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int v4, v0, v2

    invoke-interface {v3, v0, v4}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5614
    .local v3, "killed":Ljava/lang/String;
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v2}, Lorg/jline/reader/Buffer;->delete(I)I

    .line 5615
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    invoke-virtual {v4, v3}, Lorg/jline/reader/impl/KillRing;->add(Ljava/lang/String;)V

    .line 5616
    const/4 v4, 0x1

    return v4
.end method

.method public killRegion()Z
    .locals 1

    .line 5649
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->doCopyKillRegion(Z)Z

    move-result v0

    return v0
.end method

.method protected killWholeLine()Z
    .locals 6

    .line 5550
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 5551
    const/4 v0, 0x0

    return v0

    .line 5555
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/16 v1, 0xa

    if-gez v0, :cond_4

    .line 5556
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 5557
    .local v0, "end":I
    :goto_0
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 5558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5560
    :cond_1
    move v2, v0

    .line 5561
    .local v2, "start":I
    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    neg-int v3, v3

    .local v3, "count":I
    :goto_1
    if-lez v3, :cond_3

    .line 5562
    :goto_2
    if-lez v2, :cond_2

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 5563
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 5565
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 5561
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v3    # "count":I
    :cond_3
    goto :goto_6

    .line 5568
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_4
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    move v2, v0

    .line 5569
    .restart local v2    # "start":I
    :goto_3
    if-lez v2, :cond_5

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 5570
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 5572
    :cond_5
    move v0, v2

    .line 5573
    .restart local v0    # "end":I
    :cond_6
    :goto_4
    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v3, :cond_8

    .line 5574
    :goto_5
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v3

    if-eq v3, v1, :cond_7

    .line 5575
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5577
    :cond_7
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 5578
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5582
    :cond_8
    :goto_6
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v2, v0}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5583
    .local v1, "killed":Ljava/lang/String;
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v2}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 5584
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    sub-int v4, v0, v2

    invoke-interface {v3, v4}, Lorg/jline/reader/Buffer;->delete(I)I

    .line 5585
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    invoke-virtual {v3, v1}, Lorg/jline/reader/impl/KillRing;->add(Ljava/lang/String;)V

    .line 5586
    const/4 v3, 0x1

    return v3
.end method

.method protected killWord()Z
    .locals 4

    .line 1784
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1785
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda53;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda53;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1787
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 1788
    .local v0, "x":I
    :cond_1
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v1, :cond_3

    .line 1789
    :goto_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1790
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1792
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1793
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1796
    :cond_3
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/reader/impl/KillRing;->add(Ljava/lang/String;)V

    .line 1797
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->delete(I)I

    .line 1798
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$bindKeys$31$org-jline-reader-impl-LineReaderImpl(Lorg/jline/keymap/KeyMap;Lorg/jline/reader/Widget;Ljava/lang/String;)V
    .locals 2
    .param p1, "emacs"    # Lorg/jline/keymap/KeyMap;
    .param p2, "beep"    # Lorg/jline/reader/Widget;
    .param p3, "k"    # Ljava/lang/String;

    .line 6229
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Lorg/jline/reader/Widget;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$doList$18$org-jline-reader-impl-LineReaderImpl(Ljava/util/List;I)Lorg/jline/utils/AttributedString;
    .locals 3
    .param p1, "possible"    # Ljava/util/List;
    .param p2, "lines"    # I

    .line 4934
    new-instance v0, Lorg/jline/utils/AttributedString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": do you wish to see all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " possibilities ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lines)?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method synthetic lambda$doList$19$org-jline-reader-impl-LineReaderImpl(Ljava/util/List;Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 8
    .param p1, "cands"    # Ljava/util/List;
    .param p2, "current"    # Ljava/lang/String;

    .line 4968
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lorg/jline/utils/AttributedStringBuilder;->append([Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->insertSecondaryPrompts(Lorg/jline/utils/AttributedString;Ljava/util/List;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    .line 4969
    .local v0, "t":Lorg/jline/utils/AttributedString;
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-virtual {v3}, Lorg/jline/utils/Display;->delayLineWrap()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/jline/utils/AttributedString;->columnSplitLength(IZZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 4970
    .local v1, "pl":I
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v3, p2}, Lorg/jline/reader/impl/LineReaderImpl;->computePost(Ljava/util/List;Lorg/jline/reader/Candidate;Ljava/util/List;Ljava/lang/String;)Lorg/jline/reader/impl/LineReaderImpl$PostResult;

    move-result-object v4

    .line 4971
    .local v4, "pr":Lorg/jline/reader/impl/LineReaderImpl$PostResult;
    iget v5, v4, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->lines:I

    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v6}, Lorg/jline/terminal/Size;->getRows()I

    move-result v6

    sub-int/2addr v6, v1

    if-lt v5, v6, :cond_0

    .line 4972
    iput-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 4973
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    .line 4974
    .local v3, "oldCursor":I
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->length()I

    move-result v6

    invoke-interface {v5, v6}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 4975
    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay(Z)V

    .line 4976
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5, v3}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 4977
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->println()V

    .line 4978
    iget-object v5, v4, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->post:Lorg/jline/utils/AttributedString;

    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v6}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v6

    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-virtual {v7}, Lorg/jline/utils/Display;->delayLineWrap()Z

    move-result v7

    invoke-virtual {v5, v6, v2, v7}, Lorg/jline/utils/AttributedString;->columnSplitLength(IZZ)Ljava/util/List;

    move-result-object v5

    .line 4979
    .local v5, "ls":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    new-instance v6, Lorg/jline/utils/Display;

    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-direct {v6, v7, v2}, Lorg/jline/utils/Display;-><init>(Lorg/jline/terminal/Terminal;Z)V

    move-object v2, v6

    .line 4980
    .local v2, "d":Lorg/jline/utils/Display;
    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v6}, Lorg/jline/terminal/Size;->getRows()I

    move-result v6

    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v7}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/jline/utils/Display;->resize(II)V

    .line 4981
    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Lorg/jline/utils/Display;->update(Ljava/util/List;I)V

    .line 4982
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->println()V

    .line 4983
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->redrawLine()Z

    .line 4984
    new-instance v6, Lorg/jline/utils/AttributedString;

    const-string v7, ""

    invoke-direct {v6, v7}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v6

    .line 4986
    .end local v2    # "d":Lorg/jline/utils/Display;
    .end local v3    # "oldCursor":I
    .end local v5    # "ls":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :cond_0
    iget-object v2, v4, Lorg/jline/reader/impl/LineReaderImpl$PostResult;->post:Lorg/jline/utils/AttributedString;

    return-object v2
.end method

.method synthetic lambda$doSearchHistory$10$org-jline-reader-impl-LineReaderImpl(ZLorg/jline/reader/impl/LineReaderImpl$Pair;)Z
    .locals 4
    .param p1, "nextOnly"    # Z
    .param p2, "p"    # Lorg/jline/reader/impl/LineReaderImpl$Pair;

    .line 2669
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p2, Lorg/jline/reader/impl/LineReaderImpl$Pair;->v:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    if-eqz p1, :cond_0

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_0
    if-gt v2, v3, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method synthetic lambda$doSearchHistory$11$org-jline-reader-impl-LineReaderImpl(Ljava/util/regex/Pattern;Lorg/jline/reader/History$Entry;)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "pat"    # Ljava/util/regex/Pattern;
    .param p2, "e"    # Lorg/jline/reader/History$Entry;

    .line 2675
    invoke-interface {p2}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/jline/reader/History$Entry;->index()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->matches(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$doSearchHistory$12$org-jline-reader-impl-LineReaderImpl(ZLorg/jline/reader/impl/LineReaderImpl$Pair;)Z
    .locals 4
    .param p1, "nextOnly"    # Z
    .param p2, "p"    # Lorg/jline/reader/impl/LineReaderImpl$Pair;

    .line 2682
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p2, Lorg/jline/reader/impl/LineReaderImpl$Pair;->v:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    if-eqz p1, :cond_0

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method synthetic lambda$doSearchHistory$13$org-jline-reader-impl-LineReaderImpl(Ljava/util/regex/Pattern;Lorg/jline/reader/History$Entry;)Ljava/util/stream/Stream;
    .locals 2
    .param p1, "pat"    # Ljava/util/regex/Pattern;
    .param p2, "e"    # Lorg/jline/reader/History$Entry;

    .line 2688
    invoke-interface {p2}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/jline/reader/History$Entry;->index()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->matches(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$doSearchHistory$8$org-jline-reader-impl-LineReaderImpl(Lorg/jline/keymap/KeyMap;I)V
    .locals 3
    .param p1, "terminators"    # Lorg/jline/keymap/KeyMap;
    .param p2, "c"    # I

    .line 2608
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "accept-line"

    invoke-direct {p0, p1, v1, v0}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$doSearchHistory$9$org-jline-reader-impl-LineReaderImpl()Lorg/jline/utils/AttributedString;
    .locals 3

    .line 2615
    new-instance v0, Lorg/jline/utils/AttributedString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchFailing:Z

    if-eqz v2, :cond_0

    const-string v2, "failing "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2616
    iget-boolean v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchBackward:Z

    if-eqz v2, :cond_1

    const-string v2, "bck-i-search"

    goto :goto_1

    :cond_1
    const-string v2, "fwd-i-search"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    .line 2615
    return-object v0
.end method

.method synthetic lambda$getCompletionStyle$28$org-jline-reader-impl-LineReaderImpl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 5466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jline/reader/impl/LineReaderImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getGroupComparator$16$org-jline-reader-impl-LineReaderImpl(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 4608
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getOthersGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getOriginalGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$getWidget$1$org-jline-reader-impl-LineReaderImpl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "macro"    # Ljava/lang/String;

    .line 1176
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v0, p1}, Lorg/jline/keymap/BindingReader;->runMacro(Ljava/lang/String;)V

    .line 1177
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$getWidget$3$org-jline-reader-impl-LineReaderImpl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1184
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda57;

    invoke-direct {v0, p1}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda57;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 1185
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$getWidget$5$org-jline-reader-impl-LineReaderImpl()Z
    .locals 1

    .line 1190
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda85;-><init>()V

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 1191
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$viRevRepeatFind$6$org-jline-reader-impl-LineReaderImpl()Z
    .locals 1

    .line 1974
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->vifindchar(Z)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$whatCursorPosition$14$org-jline-reader-impl-LineReaderImpl()Lorg/jline/utils/AttributedString;
    .locals 6

    .line 3584
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 3585
    .local v0, "sb":Lorg/jline/utils/AttributedStringBuilder;
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    const-string v3, " ("

    if-ge v1, v2, :cond_4

    .line 3586
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v1

    .line 3587
    .local v1, "c":I
    const-string v2, "Char: "

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3588
    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 3589
    const-string v2, "SPC"

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_0

    .line 3590
    :cond_0
    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    .line 3591
    const-string v2, "LFD"

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_0

    .line 3592
    :cond_1
    if-ge v1, v2, :cond_2

    .line 3593
    const/16 v2, 0x5e

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 3594
    add-int/lit8 v2, v1, 0x41

    add-int/lit8 v2, v2, -0x1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_0

    .line 3595
    :cond_2
    const/16 v2, 0x7f

    if-ne v1, v2, :cond_3

    .line 3596
    const-string v2, "^?"

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_0

    .line 3598
    :cond_3
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 3600
    :goto_0
    invoke-virtual {v0, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3601
    const-string v2, "0"

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3602
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3603
    const-string v2, "0x"

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3604
    const-string v2, ")"

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3605
    .end local v1    # "c":I
    goto :goto_1

    .line 3606
    :cond_4
    const-string v1, "EOF"

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3608
    :goto_1
    const-string v1, "   "

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3609
    const-string v2, "point "

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3610
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3611
    const-string v2, " of "

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3612
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3613
    invoke-virtual {v0, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3614
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    const/16 v3, 0x64

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    mul-int/2addr v2, v3

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->length()I

    move-result v3

    div-int v3, v2, v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3615
    const-string v2, "%)"

    invoke-virtual {v0, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3616
    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3617
    const-string v1, "column "

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3618
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->findbol()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3619
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    return-object v1
.end method

.method protected listChoices()Z
    .locals 1

    .line 4362
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->listChoices(Z)Z

    move-result v0

    return v0
.end method

.method public menu()Lorg/jline/keymap/KeyMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;"
        }
    .end annotation

    .line 6172
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 6173
    .local v0, "menu":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/CharSequence;

    const-string v3, "\t"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "menu-complete"

    invoke-direct {p0, v0, v3, v2}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6174
    new-array v2, v1, [Ljava/lang/CharSequence;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->back_tab:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v3}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "reverse-menu-complete"

    invoke-direct {p0, v0, v3, v2}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6175
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string v3, "\r"

    aput-object v3, v2, v4

    const-string v3, "\n"

    aput-object v3, v2, v1

    const-string v1, "accept-line"

    invoke-direct {p0, v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6176
    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->bindArrowKeys(Lorg/jline/keymap/KeyMap;)V

    .line 6177
    return-object v0
.end method

.method protected menuComplete()Z
    .locals 3

    .line 4338
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->insertTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4339
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->selfInsert()Z

    move-result v0

    return v0

    .line 4341
    :cond_0
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->Complete:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->doComplete(Lorg/jline/reader/impl/LineReaderImpl$CompletionType;ZZ)Z

    move-result v0

    return v0
.end method

.method protected menuExpandOrComplete()Z
    .locals 3

    .line 4346
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->insertTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4347
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->selfInsert()Z

    move-result v0

    return v0

    .line 4349
    :cond_0
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$CompletionType;->ExpandComplete:Lorg/jline/reader/impl/LineReaderImpl$CompletionType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->doComplete(Lorg/jline/reader/impl/LineReaderImpl$CompletionType;ZZ)Z

    move-result v0

    return v0
.end method

.method public mouse()Z
    .locals 17

    .line 5747
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->readMouseEvent()Lorg/jline/terminal/MouseEvent;

    move-result-object v1

    .line 5748
    .local v1, "event":Lorg/jline/terminal/MouseEvent;
    invoke-virtual {v1}, Lorg/jline/terminal/MouseEvent;->getType()Lorg/jline/terminal/MouseEvent$Type;

    move-result-object v2

    sget-object v3, Lorg/jline/terminal/MouseEvent$Type;->Released:Lorg/jline/terminal/MouseEvent$Type;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 5749
    invoke-virtual {v1}, Lorg/jline/terminal/MouseEvent;->getButton()Lorg/jline/terminal/MouseEvent$Button;

    move-result-object v2

    sget-object v3, Lorg/jline/terminal/MouseEvent$Button;->Button1:Lorg/jline/terminal/MouseEvent$Button;

    if-ne v2, v3, :cond_2

    .line 5750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5751
    .local v2, "tsb":Ljava/lang/StringBuilder;
    iget-object v3, v0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    new-instance v5, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda86;

    invoke-direct {v5, v2}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda86;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v3, v5}, Lorg/jline/terminal/Terminal;->getCursorPosition(Ljava/util/function/IntConsumer;)Lorg/jline/terminal/Cursor;

    move-result-object v3

    .line 5752
    .local v3, "cursor":Lorg/jline/terminal/Cursor;
    iget-object v5, v0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jline/keymap/BindingReader;->runMacro(Ljava/lang/String;)V

    .line 5754
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5755
    .local v5, "secondaryPrompts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-virtual {v0, v5}, Lorg/jline/reader/impl/LineReaderImpl;->getDisplayedBufferWithPrompts(Ljava/util/List;)Lorg/jline/utils/AttributedString;

    .line 5757
    new-instance v6, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v6}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v6

    .line 5758
    .local v6, "sb":Lorg/jline/utils/AttributedStringBuilder;
    iget-object v7, v0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    invoke-virtual {v6, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5759
    new-instance v7, Lorg/jline/utils/AttributedString;

    iget-object v8, v0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v8}, Lorg/jline/reader/Buffer;->upToCursor()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    invoke-direct {v0, v7, v5, v8}, Lorg/jline/reader/impl/LineReaderImpl;->insertSecondaryPrompts(Lorg/jline/utils/AttributedString;Ljava/util/List;Z)Lorg/jline/utils/AttributedString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5760
    iget-object v7, v0, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v7}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v7

    iget-object v9, v0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-virtual {v9}, Lorg/jline/utils/Display;->delayLineWrap()Z

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lorg/jline/utils/AttributedStringBuilder;->columnSplitLength(IZZ)Ljava/util/List;

    move-result-object v7

    .line 5762
    .local v7, "promptLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v4

    .line 5763
    .local v9, "currentLine":I
    invoke-virtual {v1}, Lorg/jline/terminal/MouseEvent;->getY()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v3}, Lorg/jline/terminal/Cursor;->getY()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5764
    .local v8, "wantedLine":I
    if-nez v9, :cond_0

    iget-object v10, v0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    goto :goto_0

    :cond_0
    add-int/lit8 v10, v9, -0x1

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jline/utils/AttributedString;

    :goto_0
    invoke-virtual {v10}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v10

    .line 5765
    .local v10, "pl0":I
    if-nez v8, :cond_1

    iget-object v11, v0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v8, -0x1

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jline/utils/AttributedString;

    :goto_1
    invoke-virtual {v11}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v11

    .line 5766
    .local v11, "pl1":I
    sub-int v12, v11, v10

    .line 5767
    .local v12, "adjust":I
    iget-object v13, v0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-virtual {v1}, Lorg/jline/terminal/MouseEvent;->getX()I

    move-result v14

    invoke-virtual {v3}, Lorg/jline/terminal/Cursor;->getX()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int/2addr v14, v12

    invoke-virtual {v1}, Lorg/jline/terminal/MouseEvent;->getY()I

    move-result v15

    invoke-virtual {v3}, Lorg/jline/terminal/Cursor;->getY()I

    move-result v16

    sub-int v15, v15, v16

    invoke-interface {v13, v14, v15}, Lorg/jline/reader/Buffer;->moveXY(II)Z

    .line 5769
    .end local v2    # "tsb":Ljava/lang/StringBuilder;
    .end local v3    # "cursor":Lorg/jline/terminal/Cursor;
    .end local v5    # "secondaryPrompts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v6    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v7    # "promptLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v8    # "wantedLine":I
    .end local v9    # "currentLine":I
    .end local v10    # "pl0":I
    .end local v11    # "pl1":I
    .end local v12    # "adjust":I
    :cond_2
    return v4
.end method

.method protected moveHistory(Z)Z
    .locals 3
    .param p1, "next"    # Z

    .line 5495
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->current()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5496
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->modifiedHistory:Ljava/util/Map;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5498
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->next()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5499
    return v0

    .line 5501
    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->previous()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5502
    return v0

    .line 5505
    :cond_2
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->modifiedHistory:Ljava/util/Map;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5506
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->modifiedHistory:Ljava/util/Map;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->index()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 5507
    :cond_3
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->current()Ljava/lang/String;

    move-result-object v0

    .line 5505
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setBuffer(Ljava/lang/String;)V

    .line 5509
    const/4 v0, 0x1

    return v0
.end method

.method protected moveHistory(ZI)Z
    .locals 3
    .param p1, "next"    # Z
    .param p2, "count"    # I

    .line 5482
    const/4 v0, 0x1

    .line 5483
    .local v0, "ok":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/jline/reader/impl/LineReaderImpl;->moveHistory(Z)Z

    move-result v2

    move v0, v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5486
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method protected negArgument()Z
    .locals 1

    .line 2403
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->mult:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->mult:I

    .line 2404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->isArgDigit:Z

    .line 2405
    return v0
.end method

.method protected nextBindingIsComplete()Z
    .locals 4

    .line 4640
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay()Z

    .line 4641
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMaps:Ljava/util/Map;

    const-string v1, "menu"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/keymap/KeyMap;

    .line 4642
    .local v0, "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getKeys()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jline/reader/impl/LineReaderImpl;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Lorg/jline/reader/Binding;

    move-result-object v1

    .line 4643
    .local v1, "operation":Lorg/jline/reader/Binding;
    instance-of v2, v1, Lorg/jline/reader/Reference;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/jline/reader/Reference;

    invoke-virtual {v2}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "menu-complete"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4644
    const/4 v2, 0x1

    return v2

    .line 4646
    :cond_0
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->pushBackBinding()V

    .line 4647
    const/4 v2, 0x0

    return v2
.end method

.method public option(Lorg/jline/reader/LineReader$Option;Z)Lorg/jline/reader/LineReader;
    .locals 2
    .param p1, "option"    # Lorg/jline/reader/LineReader$Option;
    .param p2, "value"    # Z

    .line 1056
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->options:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    return-object p0
.end method

.method protected overwriteMode()Z
    .locals 2

    .line 3046
    iget-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->overTyping:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->overTyping:Z

    .line 3047
    return v1
.end method

.method public peekCharacter(J)I
    .locals 1
    .param p1, "timeout"    # J

    .line 911
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v0, p1, p2}, Lorg/jline/keymap/BindingReader;->peekCharacter(J)I

    move-result v0

    return v0
.end method

.method print(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 5521
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 5522
    return-void
.end method

.method public printAbove(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 766
    :try_start_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 768
    iget-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->reading:Z

    .line 769
    .local v0, "reading":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 770
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/jline/utils/Display;->update(Ljava/util/List;I)V

    .line 772
    :cond_0
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\n\u001b[m"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\n\u001b[0m"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 775
    :cond_1
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 773
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    :goto_1
    if-eqz v0, :cond_3

    .line 778
    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay(Z)V

    .line 780
    :cond_3
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    .end local v0    # "reading":Z
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 783
    nop

    .line 784
    return-void

    .line 782
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 783
    throw v0
.end method

.method public printAbove(Lorg/jline/utils/AttributedString;)V
    .locals 1
    .param p1, "str"    # Lorg/jline/utils/AttributedString;

    .line 788
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-virtual {p1, v0}, Lorg/jline/utils/AttributedString;->toAnsi(Lorg/jline/terminal/Terminal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->printAbove(Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method println()V
    .locals 3

    .line 5533
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->carriage_return:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 5534
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->print(Ljava/lang/String;)V

    .line 5535
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->redrawLine()Z

    .line 5536
    return-void
.end method

.method println(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 5525
    invoke-virtual {p0, p1}, Lorg/jline/reader/impl/LineReaderImpl;->print(Ljava/lang/String;)V

    .line 5526
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->println()V

    .line 5527
    return-void
.end method

.method public putString(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 876
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget-boolean v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->overTyping:Z

    invoke-interface {v0, p1, v1}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;Z)V

    .line 877
    return-void
.end method

.method protected quit()Z
    .locals 1

    .line 2935
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getBuffer()Lorg/jline/reader/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->clear()Z

    .line 2936
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->acceptLine()Z

    move-result v0

    return v0
.end method

.method protected quotedInsert()Z
    .locals 3

    .line 3223
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->readCharacter()I

    move-result v0

    .line 3224
    .local v0, "c":I
    :goto_0
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v1, :cond_0

    .line 3225
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->putString(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3227
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public readBinding(Lorg/jline/keymap/KeyMap;)Lorg/jline/reader/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;)",
            "Lorg/jline/reader/Binding;"
        }
    .end annotation

    .line 952
    .local p1, "keys":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jline/reader/impl/LineReaderImpl;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Lorg/jline/reader/Binding;

    move-result-object v0

    return-object v0
.end method

.method public readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Lorg/jline/reader/Binding;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;)",
            "Lorg/jline/reader/Binding;"
        }
    .end annotation

    .line 956
    .local p1, "keys":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .local p2, "local":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    invoke-virtual {p0, p1, p2}, Lorg/jline/reader/impl/LineReaderImpl;->doReadBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/Binding;

    .line 962
    .local v0, "o":Lorg/jline/reader/Binding;
    instance-of v1, v0, Lorg/jline/reader/Reference;

    if-eqz v1, :cond_1

    .line 963
    move-object v1, v0

    check-cast v1, Lorg/jline/reader/Reference;

    invoke-virtual {v1}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v1

    .line 964
    .local v1, "ref":Ljava/lang/String;
    const-string v2, "yank-pop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "yank"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 965
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    invoke-virtual {v2}, Lorg/jline/reader/impl/KillRing;->resetLastYank()V

    .line 967
    :cond_0
    const-string v2, "kill-line"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "kill-whole-line"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 968
    const-string v2, "backward-kill-word"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "kill-word"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 969
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    invoke-virtual {v2}, Lorg/jline/reader/impl/KillRing;->resetLastKill()V

    .line 972
    .end local v1    # "ref":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public readCharacter()I
    .locals 2

    .line 898
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    :try_start_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 901
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v0}, Lorg/jline/keymap/BindingReader;->readCharacter()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 901
    return v0

    .line 903
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 904
    throw v0

    .line 906
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v0}, Lorg/jline/keymap/BindingReader;->readCharacter()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation

    .line 446
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/jline/reader/MaskingCallback;

    invoke-virtual {p0, v0, v0, v0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->readLine(Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/MaskingCallback;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/lang/Character;)Ljava/lang/String;
    .locals 1
    .param p1, "mask"    # Ljava/lang/Character;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation

    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/jline/reader/impl/LineReaderImpl;->readLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prompt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation

    .line 468
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/jline/reader/MaskingCallback;

    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->readLine(Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/MaskingCallback;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/lang/String;Ljava/lang/Character;)Ljava/lang/String;
    .locals 1
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "mask"    # Ljava/lang/Character;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation

    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lorg/jline/reader/impl/LineReaderImpl;->readLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "mask"    # Ljava/lang/Character;
    .param p3, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation

    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/jline/reader/impl/LineReaderImpl;->readLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "rightPrompt"    # Ljava/lang/String;
    .param p3, "mask"    # Ljava/lang/Character;
    .param p4, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation

    .line 507
    if-eqz p3, :cond_0

    new-instance v0, Lorg/jline/reader/impl/SimpleMaskingCallback;

    invoke-direct {v0, p3}, Lorg/jline/reader/impl/SimpleMaskingCallback;-><init>(Ljava/lang/Character;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/jline/reader/impl/LineReaderImpl;->readLine(Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/MaskingCallback;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/lang/String;Ljava/lang/String;Lorg/jline/reader/MaskingCallback;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "rightPrompt"    # Ljava/lang/String;
    .param p3, "maskingCallback"    # Lorg/jline/reader/MaskingCallback;
    .param p4, "buffer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jline/reader/UserInterruptException;,
            Lorg/jline/reader/EndOfFileException;
        }
    .end annotation

    .line 524
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const-string v0, "features-max-buffer-size"

    iget-object v3, v1, Lorg/jline/reader/impl/LineReaderImpl;->commandsBuffer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 525
    iget-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->commandsBuffer:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 526
    .local v0, "cmd":Ljava/lang/String;
    const/4 v3, 0x0

    move v6, v3

    move-object v3, v0

    .line 529
    .end local v0    # "cmd":Ljava/lang/String;
    .local v3, "cmd":Ljava/lang/String;
    .local v6, "done":Z
    :cond_0
    :try_start_0
    iget-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->parser:Lorg/jline/reader/Parser;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    sget-object v8, Lorg/jline/reader/Parser$ParseContext;->ACCEPT_LINE:Lorg/jline/reader/Parser$ParseContext;

    invoke-interface {v0, v3, v7, v8}, Lorg/jline/reader/Parser;->parse(Ljava/lang/String;ILorg/jline/reader/Parser$ParseContext;)Lorg/jline/reader/ParsedLine;
    :try_end_0
    .catch Lorg/jline/reader/EOFError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jline/reader/SyntaxError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    const/4 v0, 0x1

    .end local v6    # "done":Z
    .local v0, "done":Z
    goto :goto_0

    .line 539
    .end local v0    # "done":Z
    .restart local v6    # "done":Z
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->commandsBuffer:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 541
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 537
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 538
    .local v0, "e":Lorg/jline/reader/SyntaxError;
    const/4 v0, 0x1

    .line 542
    .end local v6    # "done":Z
    .local v0, "done":Z
    :goto_0
    move v6, v0

    goto :goto_1

    .line 531
    .end local v0    # "done":Z
    .restart local v6    # "done":Z
    :catch_2
    move-exception v0

    .line 532
    .local v0, "e":Lorg/jline/reader/EOFError;
    iget-object v7, v1, Lorg/jline/reader/impl/LineReaderImpl;->commandsBuffer:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 535
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 536
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->commandsBuffer:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .end local v3    # "cmd":Ljava/lang/String;
    .local v0, "cmd":Ljava/lang/String;
    move-object v3, v0

    .line 543
    .end local v0    # "cmd":Ljava/lang/String;
    .restart local v3    # "cmd":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_0

    .line 544
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 545
    .local v0, "sb":Lorg/jline/utils/AttributedStringBuilder;
    new-instance v4, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/jline/builtins/Commands$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v4, v3}, Lorg/jline/utils/AttributedStringBuilder;->styled(Ljava/util/function/Function;Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 546
    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v4

    iget-object v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 547
    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v4}, Lorg/jline/terminal/Terminal;->flush()V

    .line 548
    invoke-virtual {v1, v3}, Lorg/jline/reader/impl/LineReaderImpl;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 533
    .local v0, "e":Lorg/jline/reader/EOFError;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incompleted command: \n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 551
    .end local v0    # "e":Lorg/jline/reader/EOFError;
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v6    # "done":Z
    :cond_2
    iget-object v3, v1, Lorg/jline/reader/impl/LineReaderImpl;->startedReading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 555
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 556
    .local v3, "readLineThread":Ljava/lang/Thread;
    const/4 v6, 0x0

    .line 557
    .local v6, "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    const/4 v7, 0x0

    .line 558
    .local v7, "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    const/4 v8, 0x0

    .line 559
    .local v8, "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    const/4 v9, 0x0

    .line 560
    .local v9, "originalAttributes":Lorg/jline/terminal/Attributes;
    invoke-direct/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->isTerminalDumb()Z

    move-result v10

    .line 563
    .local v10, "dumb":Z
    move-object/from16 v11, p3

    :try_start_1
    iput-object v11, v1, Lorg/jline/reader/impl/LineReaderImpl;->maskingCallback:Lorg/jline/reader/MaskingCallback;

    .line 570
    iput v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->repeatCount:I

    .line 571
    iput v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->mult:I

    .line 572
    sget-object v12, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    iput-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    .line 573
    const/4 v12, -0x1

    iput v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    .line 575
    iput v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->smallTerminalOffset:I

    .line 577
    sget-object v13, Lorg/jline/reader/impl/LineReaderImpl$State;->NORMAL:Lorg/jline/reader/impl/LineReaderImpl$State;

    iput-object v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->state:Lorg/jline/reader/impl/LineReaderImpl$State;

    .line 579
    iget-object v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->modifiedHistory:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 581
    invoke-virtual/range {p0 .. p1}, Lorg/jline/reader/impl/LineReaderImpl;->setPrompt(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 582
    move-object/from16 v13, p2

    :try_start_2
    invoke-virtual {v1, v13}, Lorg/jline/reader/impl/LineReaderImpl;->setRightPrompt(Ljava/lang/String;)V

    .line 583
    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v14}, Lorg/jline/reader/Buffer;->clear()Z

    .line 584
    if-eqz v2, :cond_3

    .line 585
    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v14, v2}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 587
    :cond_3
    iget-boolean v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->nextCommandFromHistory:Z

    if-eqz v14, :cond_5

    iget v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->nextHistoryId:I

    if-lez v14, :cond_5

    .line 588
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v12}, Lorg/jline/reader/History;->size()I

    move-result v12

    iget v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->nextHistoryId:I

    if-le v12, v14, :cond_4

    .line 589
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v12, v14}, Lorg/jline/reader/History;->moveTo(I)Z

    goto :goto_2

    .line 591
    :cond_4
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v12}, Lorg/jline/reader/History;->last()I

    move-result v14

    invoke-interface {v12, v14}, Lorg/jline/reader/History;->moveTo(I)Z

    .line 593
    :goto_2
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v14}, Lorg/jline/reader/History;->current()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 595
    :cond_5
    iput v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->nextHistoryId:I

    .line 597
    :goto_3
    iput-boolean v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->nextCommandFromHistory:Z

    .line 598
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->undo:Lorg/jline/reader/impl/UndoTree;

    invoke-virtual {v12}, Lorg/jline/reader/impl/UndoTree;->clear()V

    .line 599
    const/4 v12, 0x0

    iput-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->parsedLine:Lorg/jline/reader/ParsedLine;

    .line 600
    const-string v14, "main"

    iput-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->keyMap:Ljava/lang/String;

    .line 602
    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    if-eqz v14, :cond_6

    .line 603
    invoke-interface {v14, v1}, Lorg/jline/reader/History;->attach(Lorg/jline/reader/LineReader;)V
    :try_end_2
    .catch Ljava/io/IOError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 607
    :cond_6
    :try_start_3
    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 609
    iput-boolean v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->reading:Z

    .line 611
    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v15, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    new-instance v12, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda92;

    invoke-direct {v12, v3}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda92;-><init>(Ljava/lang/Thread;)V

    invoke-interface {v14, v15, v12}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v12

    move-object v6, v12

    .line 612
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v14, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    new-instance v15, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda93;

    invoke-direct {v15, v1}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda93;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-interface {v12, v14, v15}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v12

    move-object v7, v12

    .line 613
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v14, Lorg/jline/terminal/Terminal$Signal;->CONT:Lorg/jline/terminal/Terminal$Signal;

    new-instance v15, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda93;

    invoke-direct {v15, v1}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda93;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-interface {v12, v14, v15}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v12

    move-object v8, v12

    .line 614
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v12}, Lorg/jline/terminal/Terminal;->enterRawMode()Lorg/jline/terminal/Attributes;

    move-result-object v12

    move-object v9, v12

    .line 616
    invoke-direct/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->doDisplay()V

    .line 619
    if-nez v10, :cond_9

    .line 620
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v14, Lorg/jline/utils/InfoCmp$Capability;->keypad_xmit:Lorg/jline/utils/InfoCmp$Capability;

    new-array v15, v5, [Ljava/lang/Object;

    invoke-interface {v12, v14, v15}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 621
    sget-object v12, Lorg/jline/reader/LineReader$Option;->AUTO_FRESH_LINE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v1, v12}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 622
    const-string v12, "fresh-line"

    invoke-virtual {v1, v12}, Lorg/jline/reader/impl/LineReaderImpl;->callWidget(Ljava/lang/String;)V

    .line 623
    :cond_7
    sget-object v12, Lorg/jline/reader/LineReader$Option;->MOUSE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v1, v12}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 624
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v14, Lorg/jline/terminal/Terminal$MouseTracking;->Normal:Lorg/jline/terminal/Terminal$MouseTracking;

    invoke-interface {v12, v14}, Lorg/jline/terminal/Terminal;->trackMouse(Lorg/jline/terminal/Terminal$MouseTracking;)Z

    .line 625
    :cond_8
    sget-object v12, Lorg/jline/reader/LineReader$Option;->BRACKETED_PASTE:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v1, v12}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 626
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v12}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v12

    const-string v14, "\u001b[?2004h"

    invoke-virtual {v12, v14}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 629
    :cond_9
    new-instance v12, Lorg/jline/terminal/Attributes;

    invoke-direct {v12, v9}, Lorg/jline/terminal/Attributes;-><init>(Lorg/jline/terminal/Attributes;)V

    .line 630
    .local v12, "attr":Lorg/jline/terminal/Attributes;
    sget-object v14, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v12, v14, v4}, Lorg/jline/terminal/Attributes;->setInputFlag(Lorg/jline/terminal/Attributes$InputFlag;Z)V

    .line 631
    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v14, v12}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 634
    .end local v12    # "attr":Lorg/jline/terminal/Attributes;
    :cond_a
    :goto_4
    const-string v12, "callback-init"

    invoke-virtual {v1, v12}, Lorg/jline/reader/impl/LineReaderImpl;->callWidget(Ljava/lang/String;)V

    .line 636
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->undo:Lorg/jline/reader/impl/UndoTree;

    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v14}, Lorg/jline/reader/Buffer;->copy()Lorg/jline/reader/Buffer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/jline/reader/impl/UndoTree;->newState(Ljava/lang/Object;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->redrawLine()Z

    .line 640
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 642
    :try_start_4
    iget-object v12, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 643
    nop

    .line 647
    :goto_5
    const/4 v12, 0x0

    .line 648
    .local v12, "local":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViCmdMode()Z

    move-result v14

    if-eqz v14, :cond_b

    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    sget-object v15, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    if-eq v14, v15, :cond_b

    .line 649
    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->keyMaps:Ljava/util/Map;

    const-string v15, "visual"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jline/keymap/KeyMap;

    move-object v12, v14

    .line 651
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getKeys()Lorg/jline/keymap/KeyMap;

    move-result-object v14

    invoke-virtual {v1, v14, v12}, Lorg/jline/reader/impl/LineReaderImpl;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;)Lorg/jline/reader/Binding;

    move-result-object v14

    .line 652
    .local v14, "o":Lorg/jline/reader/Binding;
    if-nez v14, :cond_d

    .line 653
    new-instance v0, Lorg/jline/reader/EndOfFileException;

    invoke-direct {v0}, Lorg/jline/reader/EndOfFileException;-><init>()V

    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_c

    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_c
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v0, v4}, Lorg/jline/reader/EndOfFileException;->partialLine(Ljava/lang/String;)Lorg/jline/reader/EndOfFileException;

    move-result-object v0

    .end local v3    # "readLineThread":Ljava/lang/Thread;
    .end local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .end local v10    # "dumb":Z
    .end local p1    # "prompt":Ljava/lang/String;
    .end local p2    # "rightPrompt":Ljava/lang/String;
    .end local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .end local p4    # "buffer":Ljava/lang/String;
    throw v0

    .line 655
    .restart local v3    # "readLineThread":Ljava/lang/Thread;
    .restart local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .restart local v10    # "dumb":Z
    .restart local p1    # "prompt":Ljava/lang/String;
    .restart local p2    # "rightPrompt":Ljava/lang/String;
    .restart local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .restart local p4    # "buffer":Ljava/lang/String;
    :cond_d
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const-string v16, "Binding: "

    aput-object v16, v15, v5

    aput-object v14, v15, v4

    invoke-static {v15}, Lorg/jline/utils/Log;->trace([Ljava/lang/Object;)V

    .line 656
    iget-object v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v15}, Lorg/jline/reader/Buffer;->length()I

    move-result v15

    if-nez v15, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    sget-object v4, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v9, v4}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v4

    if-eq v15, v4, :cond_e

    goto :goto_7

    .line 657
    :cond_e
    new-instance v0, Lorg/jline/reader/EndOfFileException;

    invoke-direct {v0}, Lorg/jline/reader/EndOfFileException;-><init>()V

    .end local v3    # "readLineThread":Ljava/lang/Thread;
    .end local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .end local v10    # "dumb":Z
    .end local p1    # "prompt":Ljava/lang/String;
    .end local p2    # "rightPrompt":Ljava/lang/String;
    .end local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .end local p4    # "buffer":Ljava/lang/String;
    throw v0

    .line 662
    .restart local v3    # "readLineThread":Ljava/lang/Thread;
    .restart local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .restart local v10    # "dumb":Z
    .restart local p1    # "prompt":Ljava/lang/String;
    .restart local p2    # "rightPrompt":Ljava/lang/String;
    .restart local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .restart local p4    # "buffer":Ljava/lang/String;
    :cond_f
    :goto_7
    iput-boolean v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->isArgDigit:Z

    .line 666
    iget v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->repeatCount:I

    if-nez v4, :cond_10

    const/4 v4, 0x1

    :cond_10
    iget v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->mult:I

    mul-int/2addr v4, v15

    iput v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    .line 668
    iput-boolean v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->isUndo:Z

    .line 670
    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    sget-object v15, Lorg/jline/reader/LineReader$RegionType;->PASTE:Lorg/jline/reader/LineReader$RegionType;

    if-ne v4, v15, :cond_11

    .line 671
    sget-object v4, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    iput-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;
    :try_end_4
    .catch Ljava/io/IOError; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 675
    :cond_11
    :try_start_5
    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 677
    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->length()I

    move-result v4

    const/16 v15, 0x3e8

    invoke-virtual {v1, v0, v15}, Lorg/jline/reader/impl/LineReaderImpl;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-gt v4, v5, :cond_12

    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->copy()Lorg/jline/reader/Buffer;

    move-result-object v4

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    .line 678
    .local v4, "copy":Lorg/jline/reader/Buffer;
    :goto_8
    invoke-virtual {v1, v14}, Lorg/jline/reader/impl/LineReaderImpl;->getWidget(Ljava/lang/Object;)Lorg/jline/reader/Widget;

    move-result-object v5

    .line 679
    .local v5, "w":Lorg/jline/reader/Widget;
    invoke-interface {v5}, Lorg/jline/reader/Widget;->apply()Z

    move-result v17

    if-nez v17, :cond_13

    .line 680
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->beep()Z

    .line 682
    :cond_13
    iget-boolean v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->isUndo:Z

    if-nez v15, :cond_14

    if-eqz v4, :cond_14

    iget-object v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v15}, Lorg/jline/reader/Buffer;->length()I

    move-result v15

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gt v15, v2, :cond_14

    .line 683
    invoke-interface {v4}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v15}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 684
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->undo:Lorg/jline/reader/impl/UndoTree;

    iget-object v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v15}, Lorg/jline/reader/Buffer;->copy()Lorg/jline/reader/Buffer;

    move-result-object v15

    invoke-virtual {v2, v15}, Lorg/jline/reader/impl/UndoTree;->newState(Ljava/lang/Object;)V

    .line 687
    :cond_14
    sget-object v2, Lorg/jline/reader/impl/LineReaderImpl$3;->$SwitchMap$org$jline$reader$impl$LineReaderImpl$State:[I

    iget-object v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->state:Lorg/jline/reader/impl/LineReaderImpl$State;

    invoke-virtual {v15}, Lorg/jline/reader/impl/LineReaderImpl$State;->ordinal()I

    move-result v15

    aget v2, v2, v15

    packed-switch v2, :pswitch_data_0

    .line 698
    iget-boolean v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->isArgDigit:Z

    goto/16 :goto_9

    .line 695
    :pswitch_0
    new-instance v0, Lorg/jline/reader/UserInterruptException;

    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/jline/reader/UserInterruptException;-><init>(Ljava/lang/String;)V

    .end local v3    # "readLineThread":Ljava/lang/Thread;
    .end local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .end local v10    # "dumb":Z
    .end local v12    # "local":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .end local v14    # "o":Lorg/jline/reader/Binding;
    .end local p1    # "prompt":Ljava/lang/String;
    .end local p2    # "rightPrompt":Ljava/lang/String;
    .end local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .end local p4    # "buffer":Ljava/lang/String;
    throw v0

    .line 693
    .restart local v3    # "readLineThread":Ljava/lang/Thread;
    .restart local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .restart local v10    # "dumb":Z
    .restart local v12    # "local":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .restart local v14    # "o":Lorg/jline/reader/Binding;
    .restart local p1    # "prompt":Ljava/lang/String;
    .restart local p2    # "rightPrompt":Ljava/lang/String;
    .restart local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .restart local p4    # "buffer":Ljava/lang/String;
    :pswitch_1
    new-instance v0, Lorg/jline/reader/EndOfFileException;

    invoke-direct {v0}, Lorg/jline/reader/EndOfFileException;-><init>()V

    .end local v3    # "readLineThread":Ljava/lang/Thread;
    .end local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .end local v10    # "dumb":Z
    .end local v12    # "local":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .end local v14    # "o":Lorg/jline/reader/Binding;
    .end local p1    # "prompt":Ljava/lang/String;
    .end local p2    # "rightPrompt":Ljava/lang/String;
    .end local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .end local p4    # "buffer":Ljava/lang/String;
    throw v0

    .line 691
    .restart local v3    # "readLineThread":Ljava/lang/Thread;
    .restart local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .restart local v10    # "dumb":Z
    .restart local v12    # "local":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .restart local v14    # "o":Lorg/jline/reader/Binding;
    .restart local p1    # "prompt":Ljava/lang/String;
    .restart local p2    # "rightPrompt":Ljava/lang/String;
    .restart local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .restart local p4    # "buffer":Ljava/lang/String;
    :pswitch_2
    const-string v0, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 711
    :try_start_6
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_6
    .catch Ljava/io/IOError; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 723
    :try_start_7
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 725
    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->reading:Z

    .line 727
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->cleanup()V

    .line 728
    if-eqz v9, :cond_15

    .line 729
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2, v9}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 731
    :cond_15
    if-eqz v6, :cond_16

    .line 732
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v15, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v2, v15, v6}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 734
    :cond_16
    if-eqz v7, :cond_17

    .line 735
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v15, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v2, v15, v7}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 737
    :cond_17
    if-eqz v8, :cond_18

    .line 738
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v15, Lorg/jline/terminal/Terminal$Signal;->CONT:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v2, v15, v8}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 741
    :cond_18
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 742
    nop

    .line 743
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->startedReading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 691
    return-object v0

    .line 741
    :catchall_0
    move-exception v0

    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 742
    throw v0

    .line 689
    :pswitch_3
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->finishBuffer()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 711
    :try_start_9
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_9
    .catch Ljava/io/IOError; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 723
    :try_start_a
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 725
    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->reading:Z

    .line 727
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->cleanup()V

    .line 728
    if-eqz v9, :cond_19

    .line 729
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2, v9}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 731
    :cond_19
    if-eqz v6, :cond_1a

    .line 732
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v15, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v2, v15, v6}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 734
    :cond_1a
    if-eqz v7, :cond_1b

    .line 735
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v15, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v2, v15, v7}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 737
    :cond_1b
    if-eqz v8, :cond_1c

    .line 738
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v15, Lorg/jline/terminal/Terminal$Signal;->CONT:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v2, v15, v8}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 741
    :cond_1c
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 742
    nop

    .line 743
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->startedReading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 689
    return-object v0

    .line 741
    :catchall_1
    move-exception v0

    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 742
    throw v0

    .line 698
    :goto_9
    if-nez v2, :cond_1d

    .line 703
    const/4 v2, 0x0

    :try_start_b
    iput v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->repeatCount:I

    .line 704
    const/4 v2, 0x1

    iput v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->mult:I

    goto :goto_a

    .line 698
    :cond_1d
    const/4 v2, 0x1

    .line 707
    :goto_a
    if-nez v10, :cond_1e

    .line 708
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 711
    .end local v4    # "copy":Lorg/jline/reader/Buffer;
    .end local v5    # "w":Lorg/jline/reader/Widget;
    :cond_1e
    :try_start_c
    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 712
    nop

    .line 713
    .end local v12    # "local":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .end local v14    # "o":Lorg/jline/reader/Binding;
    move v4, v2

    const/4 v5, 0x0

    move-object/from16 v2, p4

    goto/16 :goto_5

    .line 711
    .restart local v12    # "local":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .restart local v14    # "o":Lorg/jline/reader/Binding;
    :catchall_2
    move-exception v0

    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 712
    nop

    .end local v3    # "readLineThread":Ljava/lang/Thread;
    .end local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .end local v10    # "dumb":Z
    .end local p1    # "prompt":Ljava/lang/String;
    .end local p2    # "rightPrompt":Ljava/lang/String;
    .end local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .end local p4    # "buffer":Ljava/lang/String;
    throw v0

    .line 642
    .end local v12    # "local":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    .end local v14    # "o":Lorg/jline/reader/Binding;
    .restart local v3    # "readLineThread":Ljava/lang/Thread;
    .restart local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .restart local v10    # "dumb":Z
    .restart local p1    # "prompt":Ljava/lang/String;
    .restart local p2    # "rightPrompt":Ljava/lang/String;
    .restart local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .restart local p4    # "buffer":Ljava/lang/String;
    :catchall_3
    move-exception v0

    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 643
    nop

    .end local v3    # "readLineThread":Ljava/lang/Thread;
    .end local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .end local v10    # "dumb":Z
    .end local p1    # "prompt":Ljava/lang/String;
    .end local p2    # "rightPrompt":Ljava/lang/String;
    .end local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .end local p4    # "buffer":Ljava/lang/String;
    throw v0
    :try_end_c
    .catch Ljava/io/IOError; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 714
    .restart local v3    # "readLineThread":Ljava/lang/Thread;
    .restart local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .restart local v10    # "dumb":Z
    .restart local p1    # "prompt":Ljava/lang/String;
    .restart local p2    # "rightPrompt":Ljava/lang/String;
    .restart local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .restart local p4    # "buffer":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto :goto_b

    .line 722
    :catchall_4
    move-exception v0

    move-object/from16 v13, p2

    goto :goto_c

    .line 714
    :catch_4
    move-exception v0

    move-object/from16 v13, p2

    .line 715
    .local v0, "e":Ljava/io/IOError;
    :goto_b
    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_1f

    .line 716
    new-instance v2, Lorg/jline/reader/UserInterruptException;

    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/jline/reader/UserInterruptException;-><init>(Ljava/lang/String;)V

    .end local v3    # "readLineThread":Ljava/lang/Thread;
    .end local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .end local v10    # "dumb":Z
    .end local p1    # "prompt":Ljava/lang/String;
    .end local p2    # "rightPrompt":Ljava/lang/String;
    .end local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .end local p4    # "buffer":Ljava/lang/String;
    throw v2

    .line 718
    .restart local v3    # "readLineThread":Ljava/lang/Thread;
    .restart local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .restart local v10    # "dumb":Z
    .restart local p1    # "prompt":Ljava/lang/String;
    .restart local p2    # "rightPrompt":Ljava/lang/String;
    .restart local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .restart local p4    # "buffer":Ljava/lang/String;
    :cond_1f
    nop

    .end local v3    # "readLineThread":Ljava/lang/Thread;
    .end local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .end local v10    # "dumb":Z
    .end local p1    # "prompt":Ljava/lang/String;
    .end local p2    # "rightPrompt":Ljava/lang/String;
    .end local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .end local p4    # "buffer":Ljava/lang/String;
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 722
    .end local v0    # "e":Ljava/io/IOError;
    .restart local v3    # "readLineThread":Ljava/lang/Thread;
    .restart local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .restart local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .restart local v10    # "dumb":Z
    .restart local p1    # "prompt":Ljava/lang/String;
    .restart local p2    # "rightPrompt":Ljava/lang/String;
    .restart local p3    # "maskingCallback":Lorg/jline/reader/MaskingCallback;
    .restart local p4    # "buffer":Ljava/lang/String;
    :catchall_5
    move-exception v0

    .line 723
    :goto_c
    :try_start_e
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 725
    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->reading:Z

    .line 727
    invoke-virtual/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->cleanup()V

    .line 728
    if-eqz v9, :cond_20

    .line 729
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2, v9}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 731
    :cond_20
    if-eqz v6, :cond_21

    .line 732
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v4, Lorg/jline/terminal/Terminal$Signal;->INT:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v2, v4, v6}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 734
    :cond_21
    if-eqz v7, :cond_22

    .line 735
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v4, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v2, v4, v7}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 737
    :cond_22
    if-eqz v8, :cond_23

    .line 738
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v4, Lorg/jline/terminal/Terminal$Signal;->CONT:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v2, v4, v8}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 741
    :cond_23
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 742
    nop

    .line 743
    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->startedReading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 744
    throw v0

    .line 741
    :catchall_6
    move-exception v0

    iget-object v2, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 742
    throw v0

    .line 552
    .end local v3    # "readLineThread":Ljava/lang/Thread;
    .end local v6    # "previousIntrHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v7    # "previousWinchHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v8    # "previousContHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v9    # "originalAttributes":Lorg/jline/terminal/Attributes;
    .end local v10    # "dumb":Z
    :cond_24
    move-object/from16 v13, p2

    move-object/from16 v11, p3

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readMouseEvent()Lorg/jline/terminal/MouseEvent;
    .locals 3

    .line 369
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda97;

    invoke-direct {v2, v1}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda97;-><init>(Lorg/jline/keymap/BindingReader;)V

    invoke-interface {v0, v2}, Lorg/jline/terminal/Terminal;->readMouseEvent(Ljava/util/function/IntSupplier;)Lorg/jline/terminal/MouseEvent;

    move-result-object v0

    return-object v0
.end method

.method protected redisplay(Z)V
    .locals 22
    .param p1, "flush"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3821
    :try_start_0
    iget-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3823
    iget-boolean v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->skipRedisplay:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 3824
    iput-boolean v3, v1, Lorg/jline/reader/impl/LineReaderImpl;->skipRedisplay:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3957
    iget-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3825
    return-void

    .line 3828
    :cond_0
    :try_start_1
    iget-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->terminal:Lorg/jline/terminal/Terminal;

    invoke-static {v0, v3}, Lorg/jline/utils/Status;->getStatus(Lorg/jline/terminal/Terminal;Z)Lorg/jline/utils/Status;

    move-result-object v0

    .line 3829
    .local v0, "status":Lorg/jline/utils/Status;
    if-eqz v0, :cond_1

    .line 3830
    invoke-virtual {v0}, Lorg/jline/utils/Status;->redraw()V

    .line 3833
    :cond_1
    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v4}, Lorg/jline/terminal/Size;->getRows()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-lez v4, :cond_7

    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v4}, Lorg/jline/terminal/Size;->getRows()I

    move-result v4

    const/4 v7, 0x3

    if-ge v4, v7, :cond_7

    .line 3834
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v4

    .line 3836
    .local v4, "sb":Lorg/jline/utils/AttributedStringBuilder;
    iget-object v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3837
    iget-object v5, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/jline/reader/impl/LineReaderImpl;->getHighlightedBuffer(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v5

    const v7, 0x7fffffff

    invoke-virtual {v5, v7}, Lorg/jline/utils/AttributedString;->columnSplitLength(I)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lorg/jline/reader/impl/LineReaderImpl;->concat(Ljava/util/List;Lorg/jline/utils/AttributedStringBuilder;)V

    .line 3838
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v5

    .line 3840
    .local v5, "full":Lorg/jline/utils/AttributedString;
    invoke-virtual {v4, v3}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 3841
    iget-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    invoke-virtual {v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3842
    iget-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v8}, Lorg/jline/reader/Buffer;->upToCursor()Ljava/lang/String;

    move-result-object v8

    .line 3843
    .local v8, "line":Ljava/lang/String;
    iget-object v9, v1, Lorg/jline/reader/impl/LineReaderImpl;->maskingCallback:Lorg/jline/reader/MaskingCallback;

    if-eqz v9, :cond_2

    .line 3844
    invoke-interface {v9, v8}, Lorg/jline/reader/MaskingCallback;->display(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 3847
    :cond_2
    new-instance v9, Lorg/jline/utils/AttributedString;

    invoke-direct {v9, v8}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v7}, Lorg/jline/utils/AttributedString;->columnSplitLength(I)Ljava/util/List;

    move-result-object v9

    invoke-direct {v1, v9, v4}, Lorg/jline/reader/impl/LineReaderImpl;->concat(Ljava/util/List;Lorg/jline/utils/AttributedStringBuilder;)V

    .line 3848
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v9

    .line 3850
    .local v9, "toCursor":Lorg/jline/utils/AttributedString;
    const/16 v10, 0x2026

    invoke-static {v10}, Lorg/jline/utils/WCWidth;->wcwidth(I)I

    move-result v10

    .line 3851
    .local v10, "w":I
    iget-object v11, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v11}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v11

    .line 3852
    .local v11, "width":I
    invoke-virtual {v9}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v12

    .line 3853
    .local v12, "cursor":I
    div-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v6

    move v6, v13

    .line 3854
    .local v6, "inc":I
    :goto_0
    iget v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->smallTerminalOffset:I

    add-int v14, v13, v10

    if-gt v12, v14, :cond_3

    .line 3855
    sub-int/2addr v13, v6

    iput v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->smallTerminalOffset:I

    goto :goto_0

    .line 3857
    :cond_3
    :goto_1
    iget v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->smallTerminalOffset:I

    add-int v14, v13, v11

    sub-int/2addr v14, v10

    if-lt v12, v14, :cond_4

    .line 3858
    add-int/2addr v13, v6

    iput v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->smallTerminalOffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3860
    :cond_4
    const-string v14, "\u2026"

    if-lez v13, :cond_5

    .line 3861
    :try_start_2
    invoke-virtual {v4, v3}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 3862
    invoke-virtual {v4, v14}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3863
    iget v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->smallTerminalOffset:I

    add-int/2addr v13, v10

    invoke-virtual {v5, v13, v7}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3864
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v7

    move-object v5, v7

    .line 3866
    :cond_5
    invoke-virtual {v5}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v7

    .line 3867
    .local v7, "length":I
    iget v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->smallTerminalOffset:I

    add-int/2addr v13, v11

    if-lt v7, v13, :cond_6

    .line 3868
    invoke-virtual {v4, v3}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 3869
    sub-int v13, v11, v10

    invoke-virtual {v5, v3, v13}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3870
    invoke-virtual {v4, v14}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3871
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v3

    move-object v5, v3

    .line 3874
    :cond_6
    iget-object v3, v1, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    iget v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->smallTerminalOffset:I

    sub-int v14, v12, v14

    invoke-virtual {v3, v13, v14, v2}, Lorg/jline/utils/Display;->update(Ljava/util/List;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3957
    iget-object v3, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3875
    return-void

    .line 3878
    .end local v4    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v5    # "full":Lorg/jline/utils/AttributedString;
    .end local v6    # "inc":I
    .end local v7    # "length":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "toCursor":Lorg/jline/utils/AttributedString;
    .end local v10    # "w":I
    .end local v11    # "width":I
    .end local v12    # "cursor":I
    :cond_7
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3879
    .local v4, "secondaryPrompts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-virtual {v1, v4}, Lorg/jline/reader/impl/LineReaderImpl;->getDisplayedBufferWithPrompts(Ljava/util/List;)Lorg/jline/utils/AttributedString;

    move-result-object v7

    .line 3882
    .local v7, "full":Lorg/jline/utils/AttributedString;
    iget-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v8}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v8

    if-gtz v8, :cond_8

    .line 3883
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3884
    .local v8, "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3886
    .end local v8    # "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :cond_8
    iget-object v8, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v8}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v8

    iget-object v9, v1, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-virtual {v9}, Lorg/jline/utils/Display;->delayLineWrap()Z

    move-result v9

    invoke-virtual {v7, v8, v6, v9}, Lorg/jline/utils/AttributedString;->columnSplitLength(IZZ)Ljava/util/List;

    move-result-object v8

    .line 3890
    .restart local v8    # "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :goto_2
    iget-object v9, v1, Lorg/jline/reader/impl/LineReaderImpl;->rightPrompt:Lorg/jline/utils/AttributedString;

    invoke-virtual {v9}, Lorg/jline/utils/AttributedString;->length()I

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v9}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v9

    if-gtz v9, :cond_9

    goto :goto_3

    .line 3893
    :cond_9
    iget-object v9, v1, Lorg/jline/reader/impl/LineReaderImpl;->rightPrompt:Lorg/jline/utils/AttributedString;

    iget-object v10, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v10}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/jline/utils/AttributedString;->columnSplitLength(I)Ljava/util/List;

    move-result-object v9

    .local v9, "rightPromptLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    goto :goto_4

    .line 3891
    .end local v9    # "rightPromptLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :cond_a
    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3895
    .restart local v9    # "rightPromptLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_b

    .line 3896
    new-instance v10, Lorg/jline/utils/AttributedString;

    const-string v11, ""

    invoke-direct {v10, v11}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3898
    :cond_b
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_c

    .line 3899
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jline/utils/AttributedString;

    .line 3900
    .local v11, "line":Lorg/jline/utils/AttributedString;
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jline/utils/AttributedString;

    invoke-direct {v1, v11, v12}, Lorg/jline/reader/impl/LineReaderImpl;->addRightPrompt(Lorg/jline/utils/AttributedString;Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedString;

    move-result-object v12

    invoke-interface {v8, v10, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3898
    nop

    .end local v11    # "line":Lorg/jline/utils/AttributedString;
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3903
    .end local v10    # "i":I
    :cond_c
    const/4 v10, -0x1

    .line 3904
    .local v10, "cursorPos":I
    const/4 v11, -0x1

    .line 3905
    .local v11, "cursorNewLinesId":I
    const/4 v12, -0x1

    .line 3906
    .local v12, "cursorColPos":I
    iget-object v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v13}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v13

    if-lez v13, :cond_e

    .line 3907
    new-instance v13, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v13}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v5

    .line 3908
    .local v5, "sb":Lorg/jline/utils/AttributedStringBuilder;
    iget-object v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    invoke-virtual {v5, v13}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3909
    iget-object v13, v1, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v13}, Lorg/jline/reader/Buffer;->upToCursor()Ljava/lang/String;

    move-result-object v13

    .line 3910
    .local v13, "buffer":Ljava/lang/String;
    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->maskingCallback:Lorg/jline/reader/MaskingCallback;

    if-eqz v14, :cond_d

    .line 3911
    invoke-interface {v14, v13}, Lorg/jline/reader/MaskingCallback;->display(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 3913
    :cond_d
    new-instance v14, Lorg/jline/utils/AttributedString;

    invoke-direct {v14, v13}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v1, v14, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->insertSecondaryPrompts(Lorg/jline/utils/AttributedString;Ljava/util/List;Z)Lorg/jline/utils/AttributedString;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3914
    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v14}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v14

    iget-object v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-virtual {v15}, Lorg/jline/utils/Display;->delayLineWrap()Z

    move-result v15

    invoke-virtual {v5, v14, v3, v15}, Lorg/jline/utils/AttributedStringBuilder;->columnSplitLength(IZZ)Ljava/util/List;

    move-result-object v3

    .line 3915
    .local v3, "promptLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e

    .line 3916
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v11, v14, -0x1

    .line 3917
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v6

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jline/utils/AttributedString;

    invoke-virtual {v14}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v14

    move v12, v14

    .line 3918
    iget-object v14, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v14, v11, v12}, Lorg/jline/terminal/Size;->cursorPos(II)I

    move-result v14

    move v10, v14

    .line 3922
    .end local v3    # "promptLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v5    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    .end local v13    # "buffer":Ljava/lang/String;
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3923
    .local v3, "newLinesToDisplay":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-direct {v1, v0}, Lorg/jline/reader/impl/LineReaderImpl;->displayRows(Lorg/jline/utils/Status;)I

    move-result v5

    .line 3924
    .local v5, "displaySize":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v5, :cond_14

    invoke-direct/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->isTerminalDumb()Z

    move-result v13

    if-nez v13, :cond_14

    .line 3925
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, ">...."

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3927
    .local v13, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    .local v14, "i":I
    :goto_6
    iget-object v15, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v15}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v15

    if-ge v14, v15, :cond_f

    .line 3928
    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3927
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 3930
    .end local v14    # "i":I
    :cond_f
    new-instance v14, Lorg/jline/utils/AttributedString;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    .line 3931
    .local v14, "partialCommandInfo":Lorg/jline/utils/AttributedString;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v5

    add-int/2addr v15, v6

    .line 3932
    .local v15, "lineId":I
    move v6, v5

    .line 3933
    .local v6, "endId":I
    const/16 v16, 0x1

    .line 3934
    .local v16, "startId":I
    if-le v15, v11, :cond_10

    .line 3935
    move v15, v11

    .line 3936
    add-int/lit8 v6, v5, -0x1

    .line 3937
    const/16 v16, 0x0

    goto :goto_7

    .line 3939
    :cond_10
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3941
    :goto_7
    const/16 v17, 0x0

    .line 3942
    .local v17, "cursorRowPos":I
    move/from16 v18, v16

    move/from16 v20, v17

    move-object/from16 v17, v0

    move/from16 v0, v20

    move/from16 v21, v18

    move-object/from16 v18, v4

    move/from16 v4, v21

    .local v0, "cursorRowPos":I
    .local v4, "i":I
    .local v17, "status":Lorg/jline/utils/Status;
    .local v18, "secondaryPrompts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :goto_8
    if-ge v4, v6, :cond_12

    .line 3943
    if-ne v11, v15, :cond_11

    .line 3944
    move v0, v4

    .line 3946
    :cond_11
    add-int/lit8 v19, v15, 0x1

    .end local v15    # "lineId":I
    .local v19, "lineId":I
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/jline/utils/AttributedString;

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3942
    add-int/lit8 v4, v4, 0x1

    move/from16 v15, v19

    goto :goto_8

    .line 3948
    .end local v4    # "i":I
    .end local v19    # "lineId":I
    .restart local v15    # "lineId":I
    :cond_12
    if-nez v16, :cond_13

    .line 3949
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3951
    :cond_13
    iget-object v4, v1, Lorg/jline/reader/impl/LineReaderImpl;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v4, v0, v12}, Lorg/jline/terminal/Size;->cursorPos(II)I

    move-result v4

    move v10, v4

    .line 3952
    .end local v0    # "cursorRowPos":I
    .end local v6    # "endId":I
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .end local v14    # "partialCommandInfo":Lorg/jline/utils/AttributedString;
    .end local v15    # "lineId":I
    .end local v16    # "startId":I
    goto :goto_9

    .line 3924
    .end local v17    # "status":Lorg/jline/utils/Status;
    .end local v18    # "secondaryPrompts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .local v0, "status":Lorg/jline/utils/Status;
    .local v4, "secondaryPrompts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    :cond_14
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    .line 3953
    .end local v0    # "status":Lorg/jline/utils/Status;
    .end local v4    # "secondaryPrompts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .restart local v17    # "status":Lorg/jline/utils/Status;
    .restart local v18    # "secondaryPrompts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    move-object v3, v8

    .line 3955
    :goto_9
    iget-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-virtual {v0, v3, v10, v2}, Lorg/jline/utils/Display;->update(Ljava/util/List;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3957
    .end local v3    # "newLinesToDisplay":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v5    # "displaySize":I
    .end local v7    # "full":Lorg/jline/utils/AttributedString;
    .end local v8    # "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v9    # "rightPromptLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v10    # "cursorPos":I
    .end local v11    # "cursorNewLinesId":I
    .end local v12    # "cursorColPos":I
    .end local v17    # "status":Lorg/jline/utils/Status;
    .end local v18    # "secondaryPrompts":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget-object v0, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3958
    nop

    .line 3959
    return-void

    .line 3957
    :catchall_0
    move-exception v0

    iget-object v3, v1, Lorg/jline/reader/impl/LineReaderImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3958
    throw v0
.end method

.method public redisplay()Z
    .locals 1

    .line 3815
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->redisplay(Z)V

    .line 3816
    return v0
.end method

.method protected redo()Z
    .locals 2

    .line 2351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->isUndo:Z

    .line 2352
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->undo:Lorg/jline/reader/impl/UndoTree;

    invoke-virtual {v1}, Lorg/jline/reader/impl/UndoTree;->canRedo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2353
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->undo:Lorg/jline/reader/impl/UndoTree;

    invoke-virtual {v1}, Lorg/jline/reader/impl/UndoTree;->redo()V

    .line 2354
    return v0

    .line 2356
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public redrawLine()Z
    .locals 1

    .line 867
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->display:Lorg/jline/utils/Display;

    invoke-virtual {v0}, Lorg/jline/utils/Display;->reset()V

    .line 868
    const/4 v0, 0x1

    return v0
.end method

.method public runMacro(Ljava/lang/String;)V
    .locals 1
    .param p1, "macro"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v0, p1}, Lorg/jline/keymap/BindingReader;->runMacro(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public safe()Lorg/jline/keymap/KeyMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;"
        }
    .end annotation

    .line 6181
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 6182
    .local v0, "safe":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    const-string v1, "^@-^?"

    invoke-static {v1}, Lorg/jline/keymap/KeyMap;->range(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    const-string v2, "self-insert"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 6183
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "\r"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\n"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "accept-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6184
    new-array v1, v4, [Ljava/lang/CharSequence;

    const/16 v2, 0x47

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "abort"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6185
    return-object v0
.end method

.method public searchBackwards(Ljava/lang/String;)I
    .locals 2
    .param p1, "searchTerm"    # Ljava/lang/String;

    .line 2865
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->index()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->searchBackwards(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public searchBackwards(Ljava/lang/String;I)I
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 2855
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jline/reader/impl/LineReaderImpl;->searchBackwards(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public searchBackwards(Ljava/lang/String;IZ)I
    .locals 6
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "startsWith"    # Z

    .line 2869
    sget-object v0, Lorg/jline/reader/LineReader$Option;->CASE_INSENSITIVE_SEARCH:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    .line 2870
    .local v0, "caseInsensitive":Z
    if-eqz v0, :cond_0

    .line 2871
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2873
    :cond_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1, p2}, Lorg/jline/reader/History;->iterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 2874
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/jline/reader/History$Entry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2875
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/reader/History$Entry;

    .line 2876
    .local v2, "e":Lorg/jline/reader/History$Entry;
    invoke-interface {v2}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v3

    .line 2877
    .local v3, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2878
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2880
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2881
    .local v4, "idx":I
    if-eqz p3, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    if-nez p3, :cond_4

    if-ltz v4, :cond_4

    .line 2882
    :cond_3
    invoke-interface {v2}, Lorg/jline/reader/History$Entry;->index()I

    move-result v5

    return v5

    .line 2884
    .end local v2    # "e":Lorg/jline/reader/History$Entry;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "idx":I
    :cond_4
    goto :goto_0

    .line 2885
    :cond_5
    const/4 v2, -0x1

    return v2
.end method

.method public searchForwards(Ljava/lang/String;)I
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;

    .line 2931
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->index()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jline/reader/impl/LineReaderImpl;->searchForwards(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public searchForwards(Ljava/lang/String;I)I
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 2922
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jline/reader/impl/LineReaderImpl;->searchForwards(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public searchForwards(Ljava/lang/String;IZ)I
    .locals 6
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "startsWith"    # Z

    .line 2889
    sget-object v0, Lorg/jline/reader/LineReader$Option;->CASE_INSENSITIVE_SEARCH:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    .line 2890
    .local v0, "caseInsensitive":Z
    if-eqz v0, :cond_0

    .line 2891
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2893
    :cond_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->last()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 2894
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1}, Lorg/jline/reader/History;->last()I

    move-result p2

    .line 2896
    :cond_1
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v1, p2}, Lorg/jline/reader/History;->iterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 2897
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/jline/reader/History$Entry;>;"
    iget v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2898
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 2900
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2901
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/reader/History$Entry;

    .line 2902
    .local v2, "e":Lorg/jline/reader/History$Entry;
    invoke-interface {v2}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v4

    .line 2903
    .local v4, "line":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2904
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2906
    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2907
    .local v5, "idx":I
    if-eqz p3, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    if-nez p3, :cond_6

    if-ltz v5, :cond_6

    .line 2908
    :cond_5
    invoke-interface {v2}, Lorg/jline/reader/History$Entry;->index()I

    move-result v3

    return v3

    .line 2910
    .end local v2    # "e":Lorg/jline/reader/History$Entry;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "idx":I
    :cond_6
    goto :goto_0

    .line 2911
    :cond_7
    return v3
.end method

.method protected selfInsert()Z
    .locals 2

    .line 3024
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    .line 3025
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->putString(Ljava/lang/CharSequence;)V

    .line 3024
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3027
    .end local v0    # "count":I
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected selfInsertUnmeta()Z
    .locals 3

    .line 3031
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_2

    .line 3032
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getLastBinding()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3033
    .local v0, "s":Ljava/lang/String;
    const-string v2, "\r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3034
    const-string v0, "\n"

    .line 3036
    :cond_0
    iget v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    .local v2, "count":I
    :goto_0
    if-lez v2, :cond_1

    .line 3037
    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->putString(Ljava/lang/CharSequence;)V

    .line 3036
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3039
    .end local v2    # "count":I
    :cond_1
    return v1

    .line 3041
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method protected sendBreak()Z
    .locals 1

    .line 2360
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchTerm:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 2361
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->clear()Z

    .line 2362
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->println()V

    .line 2363
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->redrawLine()Z

    .line 2365
    const/4 v0, 0x0

    return v0

    .line 2367
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAutosuggestion(Lorg/jline/reader/LineReader$SuggestionType;)V
    .locals 0
    .param p1, "type"    # Lorg/jline/reader/LineReader$SuggestionType;

    .line 344
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl;->autosuggestion:Lorg/jline/reader/LineReader$SuggestionType;

    .line 345
    return-void
.end method

.method protected setBuffer(Ljava/lang/String;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/String;

    .line 1222
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->clear()Z

    .line 1223
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, p1}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 1224
    return-void
.end method

.method protected setBuffer(Lorg/jline/reader/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/jline/reader/Buffer;

    .line 1212
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, p1}, Lorg/jline/reader/Buffer;->copyFrom(Lorg/jline/reader/Buffer;)V

    .line 1213
    return-void
.end method

.method public setCompleter(Lorg/jline/reader/Completer;)V
    .locals 0
    .param p1, "completer"    # Lorg/jline/reader/Completer;

    .line 378
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl;->completer:Lorg/jline/reader/Completer;

    .line 379
    return-void
.end method

.method public setCompletionMatcher(Lorg/jline/reader/CompletionMatcher;)V
    .locals 0
    .param p1, "completionMatcher"    # Lorg/jline/reader/CompletionMatcher;

    .line 433
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl;->completionMatcher:Lorg/jline/reader/CompletionMatcher;

    .line 434
    return-void
.end method

.method public setExpander(Lorg/jline/reader/Expander;)V
    .locals 0
    .param p1, "expander"    # Lorg/jline/reader/Expander;

    .line 429
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl;->expander:Lorg/jline/reader/Expander;

    .line 430
    return-void
.end method

.method public setHighlighter(Lorg/jline/reader/Highlighter;)V
    .locals 0
    .param p1, "highlighter"    # Lorg/jline/reader/Highlighter;

    .line 408
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl;->highlighter:Lorg/jline/reader/Highlighter;

    .line 409
    return-void
.end method

.method public setHistory(Lorg/jline/reader/History;)V
    .locals 0
    .param p1, "history"    # Lorg/jline/reader/History;

    .line 395
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    .line 397
    return-void
.end method

.method public setKeyMap(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1012
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/keymap/KeyMap;

    .line 1013
    .local v0, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    if-nez v0, :cond_0

    .line 1014
    const/4 v1, 0x0

    return v1

    .line 1016
    :cond_0
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMap:Ljava/lang/String;

    .line 1017
    iget-boolean v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->reading:Z

    if-eqz v1, :cond_1

    .line 1018
    const-string v1, "callback-keymap"

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->callWidget(Ljava/lang/String;)V

    .line 1020
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected setMarkCommand()Z
    .locals 2

    .line 3515
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 3516
    sget-object v0, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    .line 3517
    return v1

    .line 3519
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    .line 3520
    sget-object v0, Lorg/jline/reader/LineReader$RegionType;->CHAR:Lorg/jline/reader/LineReader$RegionType;

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    .line 3521
    return v1
.end method

.method public setOpt(Lorg/jline/reader/LineReader$Option;)V
    .locals 2
    .param p1, "option"    # Lorg/jline/reader/LineReader$Option;

    .line 1067
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->options:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    return-void
.end method

.method public setParser(Lorg/jline/reader/Parser;)V
    .locals 0
    .param p1, "parser"    # Lorg/jline/reader/Parser;

    .line 420
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl;->parser:Lorg/jline/reader/Parser;

    .line 421
    return-void
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 2
    .param p1, "prompt"    # Ljava/lang/String;

    .line 1202
    if-nez p1, :cond_0

    sget-object v0, Lorg/jline/utils/AttributedString;->EMPTY:Lorg/jline/utils/AttributedString;

    goto :goto_0

    .line 1203
    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1, v0}, Lorg/jline/reader/impl/LineReaderImpl;->expandPromptPattern(Ljava/lang/String;ILjava/lang/String;I)Lorg/jline/utils/AttributedString;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->prompt:Lorg/jline/utils/AttributedString;

    .line 1204
    return-void
.end method

.method public setRightPrompt(Ljava/lang/String;)V
    .locals 2
    .param p1, "rightPrompt"    # Ljava/lang/String;

    .line 1207
    if-nez p1, :cond_0

    sget-object v0, Lorg/jline/utils/AttributedString;->EMPTY:Lorg/jline/utils/AttributedString;

    goto :goto_0

    .line 1208
    :cond_0
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1, v0}, Lorg/jline/reader/impl/LineReaderImpl;->expandPromptPattern(Ljava/lang/String;ILjava/lang/String;I)Lorg/jline/utils/AttributedString;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->rightPrompt:Lorg/jline/utils/AttributedString;

    .line 1209
    return-void
.end method

.method public setTailTip(Ljava/lang/String;)V
    .locals 0
    .param p1, "tailTip"    # Ljava/lang/String;

    .line 359
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl;->tailTip:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1051
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->variables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    return-void
.end method

.method protected switchCase(I)I
    .locals 1
    .param p1, "ch"    # I

    .line 1269
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    return v0

    .line 1271
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1272
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    return v0

    .line 1274
    :cond_1
    return p1
.end method

.method protected toColumns(Ljava/util/List;Lorg/jline/reader/Candidate;Ljava/lang/String;Ljava/util/function/Function;IZ)Lorg/jline/reader/impl/LineReaderImpl$PostResult;
    .locals 20
    .param p2, "selection"    # Lorg/jline/reader/Candidate;
    .param p3, "completed"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "rowsFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jline/reader/Candidate;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Lorg/jline/reader/impl/LineReaderImpl$PostResult;"
        }
    .end annotation

    .line 5213
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p4, "wcwidth":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 5216
    .local v12, "out":[I
    const/4 v0, 0x0

    .line 5217
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 5218
    .local v1, "listSize":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v13, v0

    move v14, v1

    .end local v0    # "maxWidth":I
    .end local v1    # "listSize":I
    .local v13, "maxWidth":I
    .local v14, "listSize":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5219
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5220
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v11, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5221
    .local v1, "len":I
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5222
    .end local v13    # "maxWidth":I
    .local v1, "maxWidth":I
    move v13, v1

    goto :goto_2

    .line 5223
    .end local v1    # "maxWidth":I
    .restart local v13    # "maxWidth":I
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 5224
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/reader/Candidate;

    .line 5225
    .local v3, "cand":Lorg/jline/reader/Candidate;
    add-int/lit8 v14, v14, 0x1

    .line 5226
    invoke-virtual {v3}, Lorg/jline/reader/Candidate;->displ()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 5227
    .local v4, "len":I
    invoke-virtual {v3}, Lorg/jline/reader/Candidate;->descr()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5228
    add-int/lit8 v4, v4, 0x1

    .line 5229
    const-string v5, "("

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 5230
    invoke-virtual {v3}, Lorg/jline/reader/Candidate;->descr()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    .line 5231
    const-string v5, ")"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 5233
    :cond_1
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 5234
    .end local v3    # "cand":Lorg/jline/reader/Candidate;
    .end local v4    # "len":I
    goto :goto_1

    .line 5236
    .end local v0    # "item":Ljava/lang/Object;
    :cond_2
    :goto_2
    goto :goto_0

    .line 5238
    :cond_3
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    move-object v15, v0

    .line 5239
    .local v15, "sb":Lorg/jline/utils/AttributedStringBuilder;
    const/4 v9, 0x1

    if-lez v14, :cond_a

    .line 5240
    sget-object v0, Lorg/jline/reader/LineReader$Option;->AUTO_MENU_LIST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v10, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7fffffff

    .line 5241
    const-string v1, "menu-list-max"

    invoke-virtual {v10, v1, v0}, Lorg/jline/reader/impl/LineReaderImpl;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->displayRows()I

    move-result v1

    invoke-direct/range {p0 .. p0}, Lorg/jline/reader/impl/LineReaderImpl;->promptLines()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v14, v0, :cond_8

    .line 5242
    const/16 v0, 0x19

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 5243
    iget v0, v10, Lorg/jline/reader/impl/LineReaderImpl;->candidateStartPosition:I

    sub-int v1, p5, v13

    sub-int/2addr v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v15, v0}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    .line 5244
    add-int/lit8 v16, v13, 0x2

    .line 5245
    .end local p5    # "width":I
    .local v16, "width":I
    sget-object v0, Lorg/jline/reader/LineReader$Option;->GROUP_PERSIST:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {v10, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5247
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5248
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_4

    .line 5249
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5251
    .end local v2    # "o":Ljava/lang/Object;
    :cond_4
    goto :goto_3

    .line 5252
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/jline/reader/LineReader$Option;->CASE_INSENSITIVE:Lorg/jline/reader/LineReader$Option;

    .line 5253
    invoke-virtual {v10, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v2

    const-string v3, ""

    invoke-virtual {v10, v2, v3}, Lorg/jline/reader/impl/LineReaderImpl;->getCandidateComparator(ZLjava/lang/String;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 5254
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/util/List;

    .line 5255
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v16

    move v3, v13

    move-object v4, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p6

    move/from16 v18, v9

    move-object v9, v12

    invoke-virtual/range {v0 .. v9}, Lorg/jline/reader/impl/LineReaderImpl;->toColumns(Ljava/lang/Object;IILorg/jline/utils/AttributedStringBuilder;Lorg/jline/reader/Candidate;Ljava/lang/String;ZZ[I)V

    .line 5256
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    goto :goto_7

    .line 5257
    :cond_6
    move/from16 v18, v9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 5258
    .local v19, "list":Ljava/lang/Object;
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    move v3, v13

    move-object v4, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p6

    move-object v9, v12

    invoke-virtual/range {v0 .. v9}, Lorg/jline/reader/impl/LineReaderImpl;->toColumns(Ljava/lang/Object;IILorg/jline/utils/AttributedStringBuilder;Lorg/jline/reader/Candidate;Ljava/lang/String;ZZ[I)V

    .line 5259
    .end local v19    # "list":Ljava/lang/Object;
    goto :goto_4

    :cond_7
    goto :goto_7

    .line 5241
    .end local v16    # "width":I
    .restart local p5    # "width":I
    :cond_8
    move/from16 v18, v9

    goto :goto_5

    .line 5240
    :cond_9
    move/from16 v18, v9

    .line 5262
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 5263
    .local v17, "list":Ljava/lang/Object;
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p5

    move v3, v13

    move-object v4, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p6

    move-object v9, v12

    invoke-virtual/range {v0 .. v9}, Lorg/jline/reader/impl/LineReaderImpl;->toColumns(Ljava/lang/Object;IILorg/jline/utils/AttributedStringBuilder;Lorg/jline/reader/Candidate;Ljava/lang/String;ZZ[I)V

    .line 5264
    .end local v17    # "list":Ljava/lang/Object;
    goto :goto_6

    .line 5239
    :cond_a
    move/from16 v18, v9

    .line 5267
    :cond_b
    move/from16 v16, p5

    .end local p5    # "width":I
    .restart local v16    # "width":I
    :goto_7
    invoke-virtual {v15}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {v15}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v15, v0}, Lorg/jline/utils/AttributedStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    .line 5268
    invoke-virtual {v15}, Lorg/jline/utils/AttributedStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v15, v0}, Lorg/jline/utils/AttributedStringBuilder;->setLength(I)V

    .line 5270
    :cond_c
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$PostResult;

    invoke-virtual {v15}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v12, v2

    aget v3, v12, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/jline/reader/impl/LineReaderImpl$PostResult;-><init>(Lorg/jline/utils/AttributedString;II)V

    return-object v0
.end method

.method protected toColumns(Ljava/lang/Object;IILorg/jline/utils/AttributedStringBuilder;Lorg/jline/reader/Candidate;Ljava/lang/String;ZZ[I)V
    .locals 33
    .param p1, "items"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "sb"    # Lorg/jline/utils/AttributedStringBuilder;
    .param p5, "selection"    # Lorg/jline/reader/Candidate;
    .param p6, "completed"    # Ljava/lang/String;
    .param p7, "rowsFirst"    # Z
    .param p8, "doMenuList"    # Z
    .param p9, "out"    # [I

    .line 5276
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p8

    if-lez p3, :cond_1a

    if-gtz v2, :cond_0

    move-object/from16 v9, p5

    goto/16 :goto_12

    .line 5280
    :cond_0
    instance-of v5, v1, Ljava/lang/String;

    const/16 v6, 0x9

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    .line 5281
    if-eqz v4, :cond_1

    .line 5282
    sget-object v5, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v3, v5}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5283
    invoke-virtual {v3, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 5285
    :cond_1
    new-instance v5, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v5}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 5286
    .local v5, "asb":Lorg/jline/utils/AttributedStringBuilder;
    invoke-virtual {v0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleGroup(Z)Lorg/jline/utils/AttributedStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v6

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 5287
    invoke-virtual {v6, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v6

    sget-object v10, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    .line 5288
    invoke-virtual {v6, v10}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5289
    if-eqz v4, :cond_2

    .line 5290
    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "k":I
    :goto_0
    add-int/lit8 v10, p3, 0x1

    if-ge v6, v10, :cond_2

    .line 5291
    invoke-virtual {v5, v7}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 5290
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5294
    .end local v6    # "k":I
    :cond_2
    invoke-virtual {v0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleBackground(Z)Lorg/jline/utils/AttributedStyle;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5295
    invoke-virtual {v3, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedCharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5296
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5297
    aget v6, p9, v8

    add-int/2addr v6, v9

    aput v6, p9, v8

    .line 5298
    .end local v5    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    move-object/from16 v9, p5

    goto/16 :goto_10

    .line 5300
    :cond_3
    instance-of v5, v1, Ljava/util/List;

    if-eqz v5, :cond_19

    .line 5301
    move-object v5, v1

    check-cast v5, Ljava/util/List;

    .line 5302
    .local v5, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5303
    .end local p3    # "maxWidth":I
    .local v10, "maxWidth":I
    div-int v11, v2, v10

    .line 5304
    .local v11, "c":I
    :goto_1
    const/4 v12, 0x3

    if-le v11, v9, :cond_4

    mul-int v13, v11, v10

    add-int/lit8 v14, v11, -0x1

    mul-int/2addr v14, v12

    add-int/2addr v13, v14

    if-lt v13, v2, :cond_4

    .line 5305
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 5307
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v13, v11

    sub-int/2addr v13, v9

    div-int/2addr v13, v11

    .line 5310
    .local v13, "lines":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    add-int/2addr v14, v13

    sub-int/2addr v14, v9

    div-int/2addr v14, v13

    .line 5312
    .local v14, "columns":I
    if-eqz p7, :cond_5

    .line 5313
    new-instance v15, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda74;

    invoke-direct {v15, v14}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda74;-><init>(I)V

    .local v15, "index":Ljava/util/function/IntBinaryOperator;
    goto :goto_2

    .line 5315
    .end local v15    # "index":Ljava/util/function/IntBinaryOperator;
    :cond_5
    new-instance v15, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda75;

    invoke-direct {v15, v13}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda75;-><init>(I)V

    .line 5317
    .restart local v15    # "index":Ljava/util/function/IntBinaryOperator;
    :goto_2
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "i":I
    :goto_3
    if-ge v7, v13, :cond_18

    .line 5318
    if-eqz v4, :cond_6

    .line 5319
    sget-object v12, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v3, v12}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5320
    invoke-virtual {v3, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 5322
    :cond_6
    new-instance v12, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v12}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 5323
    .local v12, "asb":Lorg/jline/utils/AttributedStringBuilder;
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "j":I
    :goto_4
    if-ge v6, v14, :cond_17

    .line 5324
    invoke-interface {v15, v7, v6}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    .line 5325
    .local v9, "idx":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v9, v8, :cond_16

    .line 5326
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jline/reader/Candidate;

    .line 5327
    .local v8, "cand":Lorg/jline/reader/Candidate;
    add-int/lit8 v1, v14, -0x1

    if-ge v6, v1, :cond_7

    add-int/lit8 v1, v6, 0x1

    invoke-interface {v15, v7, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    .line 5328
    .local v1, "hasRightItem":Z
    :goto_5
    invoke-virtual {v8}, Lorg/jline/reader/Candidate;->displ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jline/utils/AttributedString;->fromAnsi(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v2

    .line 5329
    .local v2, "left":Lorg/jline/utils/AttributedString;
    invoke-virtual {v8}, Lorg/jline/reader/Candidate;->descr()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v5

    .end local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .local v18, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    invoke-static/range {v17 .. v17}, Lorg/jline/utils/AttributedString;->fromAnsi(Ljava/lang/String;)Lorg/jline/utils/AttributedString;

    move-result-object v5

    .line 5330
    .local v5, "right":Lorg/jline/utils/AttributedString;
    invoke-virtual {v2}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v17

    .line 5331
    .local v17, "lw":I
    const/16 v19, 0x0

    .line 5332
    .local v19, "rw":I
    if-eqz v5, :cond_9

    .line 5333
    add-int/lit8 v20, v17, 0x1

    .line 5334
    const-string v21, "("

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    add-int v20, v20, v22

    const-string v22, ")"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    add-int v20, v20, v23

    move/from16 v23, v9

    .end local v9    # "idx":I
    .local v23, "idx":I
    sub-int v9, v10, v20

    .line 5335
    .local v9, "rem":I
    move/from16 v20, v11

    .end local v11    # "c":I
    .local v20, "c":I
    invoke-virtual {v5}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v11

    .line 5336
    .end local v19    # "rw":I
    .local v11, "rw":I
    move/from16 v24, v14

    .end local v14    # "columns":I
    .local v24, "columns":I
    const/4 v14, 0x2

    if-le v11, v9, :cond_8

    .line 5337
    move/from16 v19, v11

    .end local v11    # "rw":I
    .restart local v19    # "rw":I
    new-array v11, v14, [Ljava/lang/CharSequence;

    const/16 v25, 0x2026

    .line 5338
    invoke-static/range {v25 .. v25}, Lorg/jline/utils/WCWidth;->wcwidth(I)I

    move-result v25

    sub-int v14, v9, v25

    move/from16 v25, v9

    const/4 v9, 0x0

    .end local v9    # "rem":I
    .local v25, "rem":I
    invoke-virtual {v5, v9, v14}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v14

    aput-object v14, v11, v9

    const-string v9, "\u2026"

    const/4 v14, 0x1

    aput-object v9, v11, v14

    .line 5337
    invoke-static {v11}, Lorg/jline/utils/AttributedStringBuilder;->append([Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedString;

    move-result-object v5

    .line 5340
    invoke-virtual {v5}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v11

    .end local v19    # "rw":I
    .restart local v11    # "rw":I
    goto :goto_6

    .line 5336
    .end local v25    # "rem":I
    .restart local v9    # "rem":I
    :cond_8
    move/from16 v25, v9

    move/from16 v19, v11

    const/4 v14, 0x1

    .line 5342
    .end local v9    # "rem":I
    .restart local v25    # "rem":I
    :goto_6
    move-object/from16 v26, v15

    const/4 v9, 0x3

    .end local v15    # "index":Ljava/util/function/IntBinaryOperator;
    .local v26, "index":Ljava/util/function/IntBinaryOperator;
    new-array v15, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    aput-object v21, v15, v9

    aput-object v5, v15, v14

    const/4 v9, 0x2

    aput-object v22, v15, v9

    invoke-static {v15}, Lorg/jline/utils/AttributedStringBuilder;->append([Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedString;

    move-result-object v5

    .line 5343
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v9, v14

    add-int v19, v11, v9

    .end local v11    # "rw":I
    .restart local v19    # "rw":I
    goto :goto_7

    .line 5332
    .end local v20    # "c":I
    .end local v23    # "idx":I
    .end local v24    # "columns":I
    .end local v25    # "rem":I
    .end local v26    # "index":Ljava/util/function/IntBinaryOperator;
    .local v9, "idx":I
    .local v11, "c":I
    .restart local v14    # "columns":I
    .restart local v15    # "index":Ljava/util/function/IntBinaryOperator;
    :cond_9
    move/from16 v23, v9

    move/from16 v20, v11

    move/from16 v24, v14

    move-object/from16 v26, v15

    .line 5345
    .end local v9    # "idx":I
    .end local v11    # "c":I
    .end local v14    # "columns":I
    .end local v15    # "index":Ljava/util/function/IntBinaryOperator;
    .restart local v20    # "c":I
    .restart local v23    # "idx":I
    .restart local v24    # "columns":I
    .restart local v26    # "index":Ljava/util/function/IntBinaryOperator;
    :goto_7
    move-object/from16 v9, p5

    if-ne v8, v9, :cond_d

    .line 5346
    const/4 v11, 0x1

    aput v7, p9, v11

    .line 5347
    invoke-virtual {v0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleSelection(Z)Lorg/jline/utils/AttributedStyle;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5348
    invoke-virtual {v2}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v27

    sget-object v14, Lorg/jline/reader/LineReader$Option;->CASE_INSENSITIVE:Lorg/jline/reader/LineReader$Option;

    .line 5349
    invoke-virtual {v0, v14}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v28

    const/16 v29, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v32

    .line 5348
    move-object/from16 v30, p6

    invoke-virtual/range {v27 .. v32}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 5350
    invoke-virtual {v2}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v11, 0x0

    invoke-virtual {v12, v14, v11, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;II)Lorg/jline/utils/AttributedStringBuilder;

    .line 5351
    invoke-virtual {v2}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2}, Lorg/jline/utils/AttributedString;->length()I

    move-result v15

    invoke-virtual {v12, v11, v14, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;II)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_8

    .line 5353
    :cond_a
    invoke-virtual {v2}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5355
    :goto_8
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_9
    sub-int v14, v10, v17

    sub-int v14, v14, v19

    if-ge v11, v14, :cond_b

    .line 5356
    const/16 v14, 0x20

    invoke-virtual {v12, v14}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 5355
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 5358
    .end local v11    # "k":I
    :cond_b
    if-eqz v5, :cond_c

    .line 5359
    invoke-virtual {v12, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5361
    :cond_c
    sget-object v11, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v12, v11}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    goto/16 :goto_d

    .line 5363
    :cond_d
    invoke-virtual {v2}, Lorg/jline/utils/AttributedString;->toString()Ljava/lang/String;

    move-result-object v27

    sget-object v11, Lorg/jline/reader/LineReader$Option;->CASE_INSENSITIVE:Lorg/jline/reader/LineReader$Option;

    .line 5364
    invoke-virtual {v0, v11}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v28

    const/16 v29, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v32

    .line 5363
    move-object/from16 v30, p6

    invoke-virtual/range {v27 .. v32}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 5365
    invoke-virtual {v0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleStarting(Z)Lorg/jline/utils/AttributedStyle;

    move-result-object v11

    invoke-virtual {v12, v11}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5366
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v14, 0x0

    invoke-virtual {v12, v2, v14, v11}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;II)Lorg/jline/utils/AttributedStringBuilder;

    .line 5367
    sget-object v11, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v12, v11}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5368
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2}, Lorg/jline/utils/AttributedString;->length()I

    move-result v14

    invoke-virtual {v12, v2, v11, v14}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;II)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_a

    .line 5370
    :cond_e
    invoke-virtual {v12, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5372
    :goto_a
    if-nez v5, :cond_f

    if-eqz v1, :cond_10

    .line 5373
    :cond_f
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_b
    sub-int v14, v10, v17

    sub-int v14, v14, v19

    if-ge v11, v14, :cond_10

    .line 5374
    const/16 v14, 0x20

    invoke-virtual {v12, v14}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 5373
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 5377
    .end local v11    # "k":I
    :cond_10
    if-eqz v5, :cond_11

    .line 5378
    invoke-virtual {v0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleDescription(Z)Lorg/jline/utils/AttributedStyle;

    move-result-object v11

    invoke-virtual {v12, v11}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5379
    invoke-virtual {v12, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5380
    sget-object v11, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v12, v11}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_d

    .line 5381
    :cond_11
    if-eqz v4, :cond_12

    .line 5382
    move/from16 v11, v17

    .restart local v11    # "k":I
    :goto_c
    if-ge v11, v10, :cond_12

    .line 5383
    const/16 v14, 0x20

    invoke-virtual {v12, v14}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 5382
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 5387
    .end local v11    # "k":I
    :cond_12
    :goto_d
    if-eqz v1, :cond_13

    .line 5388
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_e
    const/4 v14, 0x3

    if-ge v11, v14, :cond_14

    .line 5389
    const/16 v15, 0x20

    invoke-virtual {v12, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 5388
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 5387
    .end local v11    # "k":I
    :cond_13
    const/4 v14, 0x3

    .line 5392
    :cond_14
    if-eqz v4, :cond_15

    .line 5393
    const/16 v11, 0x20

    invoke-virtual {v12, v11}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_f

    .line 5392
    :cond_15
    const/16 v11, 0x20

    goto :goto_f

    .line 5325
    .end local v1    # "hasRightItem":Z
    .end local v2    # "left":Lorg/jline/utils/AttributedString;
    .end local v8    # "cand":Lorg/jline/reader/Candidate;
    .end local v17    # "lw":I
    .end local v18    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v19    # "rw":I
    .end local v20    # "c":I
    .end local v23    # "idx":I
    .end local v24    # "columns":I
    .end local v26    # "index":Ljava/util/function/IntBinaryOperator;
    .local v5, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .restart local v9    # "idx":I
    .local v11, "c":I
    .restart local v14    # "columns":I
    .restart local v15    # "index":Ljava/util/function/IntBinaryOperator;
    :cond_16
    move-object/from16 v18, v5

    move/from16 v23, v9

    move/from16 v20, v11

    move/from16 v24, v14

    move-object/from16 v26, v15

    const/16 v11, 0x20

    const/4 v14, 0x3

    move-object/from16 v9, p5

    .line 5323
    .end local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v9    # "idx":I
    .end local v11    # "c":I
    .end local v14    # "columns":I
    .end local v15    # "index":Ljava/util/function/IntBinaryOperator;
    .restart local v18    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .restart local v20    # "c":I
    .restart local v24    # "columns":I
    .restart local v26    # "index":Ljava/util/function/IntBinaryOperator;
    :goto_f
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, v18

    move/from16 v11, v20

    move/from16 v14, v24

    move-object/from16 v15, v26

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_4

    .end local v18    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v20    # "c":I
    .end local v24    # "columns":I
    .end local v26    # "index":Ljava/util/function/IntBinaryOperator;
    .restart local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .restart local v11    # "c":I
    .restart local v14    # "columns":I
    .restart local v15    # "index":Ljava/util/function/IntBinaryOperator;
    :cond_17
    move-object/from16 v9, p5

    move-object/from16 v18, v5

    move/from16 v20, v11

    move/from16 v24, v14

    move-object/from16 v26, v15

    const/16 v11, 0x20

    const/4 v14, 0x3

    .line 5397
    .end local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v6    # "j":I
    .end local v11    # "c":I
    .end local v14    # "columns":I
    .end local v15    # "index":Ljava/util/function/IntBinaryOperator;
    .restart local v18    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .restart local v20    # "c":I
    .restart local v24    # "columns":I
    .restart local v26    # "index":Ljava/util/function/IntBinaryOperator;
    invoke-virtual {v0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->getCompletionStyleBackground(Z)Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5398
    invoke-virtual {v3, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedCharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 5399
    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 5317
    .end local v12    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v12, v14

    move/from16 v11, v20

    move/from16 v14, v24

    const/16 v6, 0x9

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_3

    .end local v18    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v20    # "c":I
    .end local v24    # "columns":I
    .end local v26    # "index":Ljava/util/function/IntBinaryOperator;
    .restart local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .restart local v11    # "c":I
    .restart local v14    # "columns":I
    .restart local v15    # "index":Ljava/util/function/IntBinaryOperator;
    :cond_18
    move-object/from16 v9, p5

    move-object/from16 v18, v5

    move/from16 v20, v11

    move/from16 v24, v14

    move-object/from16 v26, v15

    .line 5401
    .end local v5    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v7    # "i":I
    .end local v11    # "c":I
    .end local v14    # "columns":I
    .end local v15    # "index":Ljava/util/function/IntBinaryOperator;
    .restart local v18    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .restart local v20    # "c":I
    .restart local v24    # "columns":I
    .restart local v26    # "index":Ljava/util/function/IntBinaryOperator;
    const/4 v1, 0x0

    aget v2, p9, v1

    add-int/2addr v2, v13

    aput v2, p9, v1

    goto :goto_11

    .line 5300
    .end local v10    # "maxWidth":I
    .end local v13    # "lines":I
    .end local v18    # "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    .end local v20    # "c":I
    .end local v24    # "columns":I
    .end local v26    # "index":Ljava/util/function/IntBinaryOperator;
    .restart local p3    # "maxWidth":I
    :cond_19
    move-object/from16 v9, p5

    .line 5403
    :goto_10
    move/from16 v10, p3

    .end local p3    # "maxWidth":I
    .restart local v10    # "maxWidth":I
    :goto_11
    return-void

    .line 5276
    .end local v10    # "maxWidth":I
    .restart local p3    # "maxWidth":I
    :cond_1a
    move-object/from16 v9, p5

    .line 5277
    :goto_12
    return-void
.end method

.method protected transposeChars()Z
    .locals 11

    .line 2312
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2313
    .local v0, "lstart":I
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    .line 2314
    .local v2, "lend":I
    :goto_0
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v3

    const/16 v4, 0xa

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 2315
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2317
    :cond_0
    add-int/2addr v0, v1

    .line 2318
    :goto_1
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v2}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v2}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 2319
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2321
    :cond_1
    sub-int v3, v2, v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 2322
    return v5

    .line 2324
    :cond_2
    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v3, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v5

    .line 2325
    .local v6, "neg":Z
    :goto_2
    neg-int v7, v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, "count":I
    :goto_3
    if-lez v3, :cond_7

    .line 2326
    :goto_4
    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v7}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v7

    if-gt v7, v0, :cond_4

    .line 2327
    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v7, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_4

    .line 2329
    :cond_4
    :goto_5
    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v7}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v7

    const/4 v8, -0x1

    if-lt v7, v2, :cond_5

    .line 2330
    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v7, v8}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_5

    .line 2332
    :cond_5
    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v7}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v7

    .line 2333
    .local v7, "c":I
    iget-object v9, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v9}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v10

    invoke-interface {v9, v10}, Lorg/jline/reader/Buffer;->currChar(I)Z

    .line 2334
    iget-object v9, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v9, v8}, Lorg/jline/reader/Buffer;->move(I)I

    .line 2335
    iget-object v8, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v8, v7}, Lorg/jline/reader/Buffer;->currChar(I)Z

    .line 2336
    iget-object v8, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    if-eqz v6, :cond_6

    move v9, v5

    goto :goto_6

    :cond_6
    move v9, v4

    :goto_6
    invoke-interface {v8, v9}, Lorg/jline/reader/Buffer;->move(I)I

    .line 2325
    .end local v7    # "c":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 2338
    .end local v3    # "count":I
    :cond_7
    return v1
.end method

.method protected transposeWords()Z
    .locals 15

    .line 1802
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1803
    .local v0, "lstart":I
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    .line 1804
    .local v2, "lend":I
    :goto_0
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v3

    const/16 v4, 0xa

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1805
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1807
    :cond_0
    add-int/2addr v0, v1

    .line 1808
    :goto_1
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v2}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v2}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 1809
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1811
    :cond_1
    sub-int v3, v2, v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 1812
    return v5

    .line 1814
    :cond_2
    const/4 v3, 0x0

    .line 1815
    .local v3, "words":I
    const/4 v6, 0x0

    .line 1816
    .local v6, "inWord":Z
    iget-object v7, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v7, v0}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/jline/reader/impl/LineReaderImpl;->isDelimiter(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1817
    add-int/lit8 v3, v3, 0x1

    .line 1818
    const/4 v6, 0x1

    .line 1820
    :cond_3
    move v7, v0

    .local v7, "i":I
    :goto_2
    if-ge v7, v2, :cond_6

    .line 1821
    iget-object v8, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v8, v7}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/jline/reader/impl/LineReaderImpl;->isDelimiter(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1822
    const/4 v6, 0x0

    goto :goto_3

    .line 1824
    :cond_4
    if-nez v6, :cond_5

    .line 1825
    add-int/lit8 v3, v3, 0x1

    .line 1827
    :cond_5
    const/4 v6, 0x1

    .line 1820
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1830
    .end local v7    # "i":I
    :cond_6
    if-ge v3, v4, :cond_7

    .line 1831
    return v5

    .line 1834
    :cond_7
    iget v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v4, :cond_8

    move v7, v1

    goto :goto_4

    :cond_8
    move v7, v5

    .line 1835
    .local v7, "neg":Z
    :goto_4
    neg-int v8, v4

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .local v4, "count":I
    :goto_5
    if-lez v4, :cond_16

    .line 1838
    iget-object v8, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v8}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v8

    .line 1839
    .local v8, "sta1":I
    :goto_6
    if-le v8, v0, :cond_9

    iget-object v9, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v10, v8, -0x1

    invoke-interface {v9, v10}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lorg/jline/reader/impl/LineReaderImpl;->isDelimiter(I)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1840
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    .line 1842
    :cond_9
    move v9, v8

    .line 1843
    .local v9, "end1":I
    :goto_7
    if-ge v9, v2, :cond_a

    iget-object v10, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v10, v9}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v10

    invoke-virtual {p0, v10}, Lorg/jline/reader/impl/LineReaderImpl;->isDelimiter(I)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_7

    .line 1844
    :cond_a
    if-eqz v7, :cond_e

    .line 1845
    add-int/lit8 v10, v8, -0x1

    .line 1846
    .local v10, "end2":I
    :goto_8
    if-le v10, v0, :cond_b

    iget-object v11, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v12, v10, -0x1

    invoke-interface {v11, v12}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v11

    invoke-virtual {p0, v11}, Lorg/jline/reader/impl/LineReaderImpl;->isDelimiter(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1847
    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    .line 1849
    :cond_b
    if-ge v10, v0, :cond_d

    .line 1851
    move v11, v9

    .line 1852
    .local v11, "sta2":I
    :goto_9
    iget-object v12, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/2addr v11, v1

    invoke-interface {v12, v11}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lorg/jline/reader/impl/LineReaderImpl;->isDelimiter(I)Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_9

    .line 1853
    :cond_c
    move v10, v11

    .line 1854
    :goto_a
    if-ge v10, v2, :cond_12

    iget-object v12, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v12, v10}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lorg/jline/reader/impl/LineReaderImpl;->isDelimiter(I)Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_a

    .line 1856
    .end local v11    # "sta2":I
    :cond_d
    move v11, v10

    .line 1857
    .restart local v11    # "sta2":I
    :goto_b
    if-le v11, v0, :cond_12

    iget-object v12, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v13, v11, -0x1

    invoke-interface {v12, v13}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lorg/jline/reader/impl/LineReaderImpl;->isDelimiter(I)Z

    move-result v12

    if-nez v12, :cond_12

    .line 1858
    add-int/lit8 v11, v11, -0x1

    goto :goto_b

    .line 1862
    .end local v10    # "end2":I
    .end local v11    # "sta2":I
    :cond_e
    move v10, v9

    .line 1863
    .local v10, "sta2":I
    :goto_c
    if-ge v10, v2, :cond_f

    iget-object v11, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v11, v10}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v11

    invoke-virtual {p0, v11}, Lorg/jline/reader/impl/LineReaderImpl;->isDelimiter(I)Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_c

    :cond_f
    move v11, v10

    .line 1864
    .end local v10    # "sta2":I
    .restart local v11    # "sta2":I
    if-ne v11, v2, :cond_11

    .line 1866
    move v10, v8

    .line 1867
    .local v10, "end2":I
    :goto_d
    iget-object v12, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v13, v10, -0x1

    invoke-interface {v12, v13}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lorg/jline/reader/impl/LineReaderImpl;->isDelimiter(I)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1868
    add-int/lit8 v10, v10, -0x1

    goto :goto_d

    .line 1870
    :cond_10
    move v11, v10

    .line 1871
    :goto_e
    if-le v11, v0, :cond_12

    iget-object v12, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v13, v11, -0x1

    invoke-interface {v12, v13}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lorg/jline/reader/impl/LineReaderImpl;->isDelimiter(I)Z

    move-result v12

    if-nez v12, :cond_12

    .line 1872
    add-int/lit8 v11, v11, -0x1

    goto :goto_e

    .line 1875
    .end local v10    # "end2":I
    :cond_11
    move v10, v11

    .line 1876
    .restart local v10    # "end2":I
    :goto_f
    if-ge v10, v2, :cond_12

    iget-object v12, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v12, v10}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lorg/jline/reader/impl/LineReaderImpl;->isDelimiter(I)Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_f

    .line 1879
    :cond_12
    if-ge v8, v11, :cond_14

    .line 1880
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v13, v5, v8}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v13, v11, v10}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 1881
    invoke-interface {v13, v9, v11}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v13, v8, v9}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 1882
    invoke-interface {v13, v10}, Lorg/jline/reader/Buffer;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1883
    .local v12, "res":Ljava/lang/String;
    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v13}, Lorg/jline/reader/Buffer;->clear()Z

    .line 1884
    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v13, v12}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 1885
    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    if-eqz v7, :cond_13

    move v14, v9

    goto :goto_10

    :cond_13
    move v14, v10

    :goto_10
    invoke-interface {v13, v14}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 1886
    .end local v12    # "res":Ljava/lang/String;
    goto :goto_12

    .line 1887
    :cond_14
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v13, v5, v11}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v13, v8, v9}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 1888
    invoke-interface {v13, v10, v8}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v13, v11, v10}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 1889
    invoke-interface {v13, v9}, Lorg/jline/reader/Buffer;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1890
    .restart local v12    # "res":Ljava/lang/String;
    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v13}, Lorg/jline/reader/Buffer;->clear()Z

    .line 1891
    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v13, v12}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 1892
    iget-object v13, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    if-eqz v7, :cond_15

    move v14, v10

    goto :goto_11

    :cond_15
    move v14, v9

    :goto_11
    invoke-interface {v13, v14}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 1835
    .end local v8    # "sta1":I
    .end local v9    # "end1":I
    .end local v10    # "end2":I
    .end local v11    # "sta2":I
    .end local v12    # "res":Ljava/lang/String;
    :goto_12
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_5

    .line 1895
    .end local v4    # "count":I
    :cond_16
    return v1
.end method

.method protected undefinedKey()Z
    .locals 1

    .line 2233
    const/4 v0, 0x0

    return v0
.end method

.method protected undo()Z
    .locals 2

    .line 2342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->isUndo:Z

    .line 2343
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->undo:Lorg/jline/reader/impl/UndoTree;

    invoke-virtual {v1}, Lorg/jline/reader/impl/UndoTree;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2344
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->undo:Lorg/jline/reader/impl/UndoTree;

    invoke-virtual {v1}, Lorg/jline/reader/impl/UndoTree;->undo()V

    .line 2345
    return v0

    .line 2347
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected universalArgument()Z
    .locals 2

    .line 2387
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->mult:I

    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->universal:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->mult:I

    .line 2388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->isArgDigit:Z

    .line 2389
    return v0
.end method

.method public unsetOpt(Lorg/jline/reader/LineReader$Option;)V
    .locals 2
    .param p1, "option"    # Lorg/jline/reader/LineReader$Option;

    .line 1072
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->options:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    return-void
.end method

.method protected upCaseWord()Z
    .locals 5

    .line 1706
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1707
    .local v0, "count":I
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    .line 1708
    .local v1, "cursor":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "count":I
    .local v2, "count":I
    const/4 v3, 0x1

    if-lez v0, :cond_2

    .line 1709
    :goto_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1710
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v3}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_1

    .line 1712
    :cond_0
    :goto_2
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWord(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1713
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v4

    invoke-interface {v0, v4}, Lorg/jline/reader/Buffer;->currChar(I)Z

    .line 1714
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v3}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_2

    .line 1708
    :cond_1
    move v0, v2

    goto :goto_0

    .line 1717
    :cond_2
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_3

    .line 1718
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 1720
    :cond_3
    return v3
.end method

.method protected upHistory()Z
    .locals 2

    .line 3123
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 3124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->moveHistory(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3125
    sget-object v0, Lorg/jline/reader/LineReader$Option;->HISTORY_BEEP:Lorg/jline/reader/LineReader$Option;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isSet(Lorg/jline/reader/LineReader$Option;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 3128
    :cond_1
    return v1
.end method

.method protected upLine()Z
    .locals 1

    .line 3151
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->up()Z

    move-result v0

    return v0
.end method

.method protected upLineOrHistory()Z
    .locals 1

    .line 3159
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->upLine()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->upHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected upLineOrSearch()Z
    .locals 1

    .line 3163
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->upLine()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->historySearchBackward()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public variable(Ljava/lang/String;Ljava/lang/Object;)Lorg/jline/reader/LineReader;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1035
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->variables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    return-object p0
.end method

.method protected viAddEol()Z
    .locals 1

    .line 3196
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->endOfLine()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "viins"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setKeyMap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected viAddNext()Z
    .locals 2

    .line 3191
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3192
    const-string v0, "viins"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setKeyMap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected viBackwardBlankWord()Z
    .locals 2

    .line 1533
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1534
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda99;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda99;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1536
    :cond_0
    :goto_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v0, :cond_3

    .line 1537
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_2

    .line 1538
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1539
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1543
    :cond_2
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    if-lez v0, :cond_0

    .line 1544
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1545
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1546
    goto :goto_0

    .line 1550
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected viBackwardBlankWordEnd()Z
    .locals 2

    .line 1584
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1585
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda101;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda101;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1587
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v0, :cond_2

    .line 1588
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1589
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_0

    .line 1591
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1592
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_1

    .line 1595
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected viBackwardChar()Z
    .locals 4

    .line 1317
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1318
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda102;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda102;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1320
    :cond_0
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->findbol()I

    move-result v0

    .line 1321
    .local v0, "lim":I
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1322
    const/4 v1, 0x0

    return v1

    .line 1324
    :cond_1
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v2, 0x1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    if-lez v1, :cond_2

    .line 1325
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v3, -0x1

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1326
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 1327
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1331
    :cond_2
    return v2
.end method

.method protected viBackwardDeleteChar()Z
    .locals 2

    .line 3314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-ge v0, v1, :cond_1

    .line 3315
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->backspace()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3316
    const/4 v1, 0x0

    return v1

    .line 3314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3319
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected viBackwardKillWord()Z
    .locals 5

    .line 1637
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1638
    const/4 v0, 0x0

    return v0

    .line 1640
    :cond_0
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->findbol()I

    move-result v0

    .line 1641
    .local v0, "lim":I
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    .line 1642
    .local v1, "x":I
    :cond_1
    iget v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-lez v2, :cond_4

    .line 1643
    :goto_0
    if-le v1, v0, :cond_2

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1644
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1646
    :cond_2
    if-le v1, v0, :cond_1

    .line 1647
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1648
    :goto_1
    if-le v1, v0, :cond_1

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1649
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1652
    :cond_3
    :goto_2
    if-le v1, v0, :cond_1

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1653
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1658
    :cond_4
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v4

    invoke-interface {v3, v1, v4}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jline/reader/impl/KillRing;->addBackwards(Ljava/lang/String;)V

    .line 1659
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 1660
    const/4 v2, 0x1

    return v2
.end method

.method protected viBackwardWord()Z
    .locals 5

    .line 1495
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1496
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda144;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda144;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1498
    :cond_0
    :goto_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_9

    .line 1499
    const/4 v0, 0x0

    .line 1500
    .local v0, "nl":I
    :cond_1
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    const/4 v3, -0x1

    if-lez v2, :cond_4

    .line 1501
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1502
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1503
    goto :goto_2

    .line 1505
    :cond_2
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    .line 1506
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1507
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1511
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    if-lez v1, :cond_8

    .line 1512
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1513
    :goto_3
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    if-lez v1, :cond_8

    .line 1514
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1515
    goto :goto_5

    .line 1517
    :cond_5
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_3

    .line 1520
    :cond_6
    :goto_4
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    if-lez v1, :cond_8

    .line 1521
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1522
    goto :goto_5

    .line 1524
    :cond_7
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_4

    .line 1528
    .end local v0    # "nl":I
    :cond_8
    :goto_5
    goto/16 :goto_0

    .line 1529
    :cond_9
    return v1
.end method

.method protected viBackwardWordEnd()Z
    .locals 6

    .line 1554
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1555
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda104;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda104;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1557
    :cond_0
    :goto_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_9

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    if-le v0, v1, :cond_9

    .line 1559
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1560
    const/4 v0, 0x1

    .local v0, "start":I
    goto :goto_1

    .line 1561
    .end local v0    # "start":I
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1562
    const/4 v0, 0x2

    .restart local v0    # "start":I
    goto :goto_1

    .line 1564
    .end local v0    # "start":I
    :cond_2
    const/4 v0, 0x0

    .line 1566
    .restart local v0    # "start":I
    :goto_1
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    const/4 v3, -0x1

    if-lez v2, :cond_7

    .line 1567
    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    .line 1568
    .local v4, "same":Z
    :goto_2
    if-eqz v0, :cond_4

    .line 1569
    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v5

    or-int/2addr v4, v5

    .line 1571
    :cond_4
    const/4 v5, 0x2

    if-ne v0, v5, :cond_5

    move v2, v1

    :cond_5
    if-ne v4, v2, :cond_6

    .line 1572
    goto :goto_3

    .line 1574
    :cond_6
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1575
    .end local v4    # "same":Z
    goto :goto_1

    .line 1576
    :cond_7
    :goto_3
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1577
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_3

    .line 1579
    .end local v0    # "start":I
    :cond_8
    goto :goto_0

    .line 1580
    :cond_9
    return v1
.end method

.method protected viBeginningOfLine()Z
    .locals 2

    .line 3269
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->findbol()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 3270
    const/4 v0, 0x1

    return v0
.end method

.method protected viChange()Z
    .locals 6

    .line 2486
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 2487
    .local v0, "cursorStart":I
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getKeys()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->readBinding(Lorg/jline/keymap/KeyMap;)Lorg/jline/reader/Binding;

    move-result-object v1

    .line 2488
    .local v1, "o":Lorg/jline/reader/Binding;
    instance-of v2, v1, Lorg/jline/reader/Reference;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2490
    move-object v2, v1

    check-cast v2, Lorg/jline/reader/Reference;

    invoke-virtual {v2}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->viDeleteChangeYankToRemap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2492
    .local v2, "op":Ljava/lang/String;
    const-string v4, "vi-change-to"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2493
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->killWholeLine()Z

    goto :goto_0

    .line 2495
    :cond_0
    sget-object v4, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->CHANGE:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    iput-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->viMoveMode:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 2496
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->widgets:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/reader/Widget;

    .line 2497
    .local v4, "widget":Lorg/jline/reader/Widget;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/jline/reader/Widget;->apply()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2498
    sget-object v5, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->NORMAL:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    iput-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->viMoveMode:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 2499
    return v3

    .line 2501
    :cond_1
    sget-object v3, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->NORMAL:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    iput-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->viMoveMode:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 2503
    .end local v4    # "widget":Lorg/jline/reader/Widget;
    :goto_0
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/jline/reader/impl/LineReaderImpl;->viChange(II)Z

    move-result v3

    .line 2504
    .local v3, "res":Z
    const-string v4, "viins"

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->setKeyMap(Ljava/lang/String;)Z

    .line 2505
    return v3

    .line 2507
    .end local v2    # "op":Ljava/lang/String;
    .end local v3    # "res":Z
    :cond_2
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->pushBackBinding()V

    .line 2508
    return v3
.end method

.method protected viChange(II)Z
    .locals 1
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .line 3381
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/jline/reader/impl/LineReaderImpl;->doViDeleteOrChange(IIZ)Z

    move-result v0

    return v0
.end method

.method protected viChangeEol()Z
    .locals 2

    .line 3208
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->viChange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3209
    const-string v0, "viins"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setKeyMap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3208
    :goto_0
    return v0
.end method

.method protected viChangeWholeLine()Z
    .locals 1

    .line 3204
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->viFirstNonBlank()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->viChangeEol()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public viCmd()Lorg/jline/keymap/KeyMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;"
        }
    .end annotation

    .line 6056
    move-object/from16 v0, p0

    new-instance v1, Lorg/jline/keymap/KeyMap;

    invoke-direct {v1}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 6057
    .local v1, "vicmd":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v4, 0x44

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "list-choices"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6058
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x45

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "emacs-editing-mode"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6059
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x47

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "abort"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6060
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v8, 0x48

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    const-string v9, "vi-backward-char"

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6061
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x4a

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "accept-line"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6062
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v11, 0x4b

    invoke-static {v11}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v5

    const-string v11, "kill-line"

    invoke-direct {v0, v1, v11, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6063
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v11, 0x4c

    invoke-static {v11}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v5

    const-string v11, "clear-screen"

    invoke-direct {v0, v1, v11, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6064
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v11, 0x4d

    invoke-static {v11}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v5

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6065
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v10, 0x4e

    invoke-static {v10}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    const-string v10, "vi-down-line-or-history"

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6066
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v12, 0x50

    invoke-static {v12}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v5

    const-string v12, "vi-up-line-or-history"

    invoke-direct {v0, v1, v12, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6067
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v13, 0x51

    invoke-static {v13}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v5

    const-string v13, "quoted-insert"

    invoke-direct {v0, v1, v13, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6068
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v14, 0x52

    invoke-static {v14}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v5

    const-string v14, "history-incremental-search-backward"

    invoke-direct {v0, v1, v14, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6069
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v15, 0x53

    invoke-static {v15}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v5

    const-string v15, "history-incremental-search-forward"

    invoke-direct {v0, v1, v15, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6070
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v16, 0x54

    invoke-static/range {v16 .. v16}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v3, v5

    const-string v11, "transpose-chars"

    invoke-direct {v0, v1, v11, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6071
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v11, 0x55

    invoke-static {v11}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v5

    const-string v11, "kill-whole-line"

    invoke-direct {v0, v1, v11, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6072
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v11, 0x56

    invoke-static {v11}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v5

    invoke-direct {v0, v1, v13, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6073
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v11, 0x57

    invoke-static {v11}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v5

    const-string v11, "backward-kill-word"

    invoke-direct {v0, v1, v11, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6074
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v13, 0x59

    invoke-static {v13}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v5

    const-string v13, "yank"

    invoke-direct {v0, v1, v13, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6075
    new-array v3, v2, [Ljava/lang/CharSequence;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x58

    invoke-static/range {v17 .. v17}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "r"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-direct {v0, v1, v14, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6076
    new-array v3, v2, [Ljava/lang/CharSequence;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "s"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-direct {v0, v1, v15, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6077
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6078
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x48

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-direct {v0, v1, v11, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6079
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x4d

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "self-insert-unmeta"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6080
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->esc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "complete-word"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6081
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x5d

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "character-search-backward"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6082
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x20

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "set-mark-command"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6085
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v6, 0x2d

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "digit-argument"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6086
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x3c

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "beginning-of-history"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6087
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x3d

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6088
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x3e

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "end-of-history"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6089
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x3f

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6090
    const-string v3, "^[A-^[Z"

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->range(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    const-string v7, "do-lowercase-version"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 6091
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x62

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "backward-word"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6092
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x63

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "capitalize-word"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6093
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x64

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "kill-word"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6094
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x66

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "forward-word"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6095
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x6c

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "down-case-word"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6096
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x6e

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "history-search-forward"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6097
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x70

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "history-search-backward"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6098
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x74

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "transpose-words"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6099
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x75

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "up-case-word"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6100
    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v7, 0x79

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "yank-pop"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6101
    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v11, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6103
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, " "

    aput-object v7, v3, v5

    const-string v7, "forward-char"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6104
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, "#"

    aput-object v7, v3, v5

    const-string v7, "vi-insert-comment"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6105
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, "$"

    aput-object v7, v3, v5

    const-string v7, "end-of-line"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6106
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, "%"

    aput-object v7, v3, v5

    const-string v7, "vi-match-bracket"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6107
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, "+"

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v10, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6108
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, ","

    aput-object v7, v3, v5

    const-string v7, "vi-rev-repeat-find"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6109
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, "-"

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v12, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6110
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, "."

    aput-object v7, v3, v5

    const-string v7, "vi-repeat-change"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6111
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, "/"

    aput-object v7, v3, v5

    const-string v7, "vi-history-search-backward"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6112
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v7, "0"

    aput-object v7, v3, v5

    const-string v7, "vi-digit-or-beginning-of-line"

    invoke-direct {v0, v1, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6113
    const-string v3, "1-9"

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->range(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 6114
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v6, ";"

    aput-object v6, v3, v5

    const-string v6, "vi-repeat-find"

    invoke-direct {v0, v1, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6115
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v6, "="

    aput-object v6, v3, v5

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6116
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "?"

    aput-object v4, v3, v5

    const-string v4, "vi-history-search-forward"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6117
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "A"

    aput-object v4, v3, v5

    const-string v4, "vi-add-eol"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6118
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "B"

    aput-object v4, v3, v5

    const-string v4, "vi-backward-blank-word"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6119
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "C"

    aput-object v4, v3, v5

    const-string v4, "vi-change-eol"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6120
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "D"

    aput-object v4, v3, v5

    const-string v4, "vi-kill-eol"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6121
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "E"

    aput-object v4, v3, v5

    const-string v4, "vi-forward-blank-word-end"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6122
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "F"

    aput-object v4, v3, v5

    const-string v4, "vi-find-prev-char"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6123
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "G"

    aput-object v4, v3, v5

    const-string v4, "vi-fetch-history"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6124
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "I"

    aput-object v4, v3, v5

    const-string v4, "vi-insert-bol"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6125
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "J"

    aput-object v4, v3, v5

    const-string v4, "vi-join"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6126
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "N"

    aput-object v4, v3, v5

    const-string v4, "vi-rev-repeat-search"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6127
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "O"

    aput-object v4, v3, v5

    const-string v4, "vi-open-line-above"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6128
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "P"

    aput-object v4, v3, v5

    const-string v4, "vi-put-before"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6129
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "R"

    aput-object v4, v3, v5

    const-string v4, "vi-replace"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6130
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "S"

    aput-object v4, v3, v5

    const-string v4, "vi-kill-line"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6131
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "T"

    aput-object v4, v3, v5

    const-string v4, "vi-find-prev-char-skip"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6132
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "U"

    aput-object v4, v3, v5

    const-string v4, "redo"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6133
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "V"

    aput-object v4, v3, v5

    const-string v4, "visual-line-mode"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6134
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "W"

    aput-object v4, v3, v5

    const-string v4, "vi-forward-blank-word"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6135
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "X"

    aput-object v4, v3, v5

    const-string v4, "vi-backward-delete-char"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6136
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "Y"

    aput-object v4, v3, v5

    const-string v4, "vi-yank-whole-line"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6137
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "^"

    aput-object v4, v3, v5

    const-string v4, "vi-first-non-blank"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6138
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "a"

    aput-object v4, v3, v5

    const-string v4, "vi-add-next"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6139
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "b"

    aput-object v4, v3, v5

    const-string v4, "vi-backward-word"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6140
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "c"

    aput-object v4, v3, v5

    const-string v4, "vi-change-to"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6141
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "d"

    aput-object v4, v3, v5

    const-string v4, "vi-delete"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6142
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "e"

    aput-object v4, v3, v5

    const-string v4, "vi-forward-word-end"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6143
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "f"

    aput-object v4, v3, v5

    const-string v4, "vi-find-next-char"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6144
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "ga"

    aput-object v4, v3, v5

    const-string v4, "what-cursor-position"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6145
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "gE"

    aput-object v4, v3, v5

    const-string v4, "vi-backward-blank-word-end"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6146
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "ge"

    aput-object v4, v3, v5

    const-string v4, "vi-backward-word-end"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6147
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "h"

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v9, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6148
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "i"

    aput-object v4, v3, v5

    const-string v4, "vi-insert"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6149
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "j"

    aput-object v4, v3, v5

    const-string v4, "down-line-or-history"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6150
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "k"

    aput-object v4, v3, v5

    const-string v4, "up-line-or-history"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6151
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "l"

    aput-object v4, v3, v5

    const-string v4, "vi-forward-char"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6152
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "n"

    aput-object v4, v3, v5

    const-string v4, "vi-repeat-search"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6153
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "o"

    aput-object v4, v3, v5

    const-string v4, "vi-open-line-below"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6154
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "p"

    aput-object v4, v3, v5

    const-string v4, "vi-put-after"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6155
    new-array v3, v2, [Ljava/lang/CharSequence;

    aput-object v13, v3, v5

    const-string v4, "vi-replace-chars"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6156
    new-array v3, v2, [Ljava/lang/CharSequence;

    aput-object v14, v3, v5

    const-string v4, "vi-substitute"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6157
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "t"

    aput-object v4, v3, v5

    const-string v4, "vi-find-next-char-skip"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6158
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "u"

    aput-object v4, v3, v5

    const-string v4, "undo"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6159
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "v"

    aput-object v4, v3, v5

    const-string v4, "visual-mode"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6160
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "w"

    aput-object v4, v3, v5

    const-string v4, "vi-forward-word"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6161
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "x"

    aput-object v4, v3, v5

    const-string v4, "vi-delete-char"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6162
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "y"

    aput-object v4, v3, v5

    const-string v4, "vi-yank"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6163
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "|"

    aput-object v4, v3, v5

    const-string v4, "vi-goto-column"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6164
    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v4, "~"

    aput-object v4, v3, v5

    const-string v4, "vi-swap-case"

    invoke-direct {v0, v1, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6165
    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v9, v2}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6167
    invoke-direct {v0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bindArrowKeys(Lorg/jline/keymap/KeyMap;)V

    .line 6168
    return-object v1
.end method

.method protected viCmdMode()Z
    .locals 2

    .line 3180
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->state:Lorg/jline/reader/impl/LineReaderImpl$State;

    sget-object v1, Lorg/jline/reader/impl/LineReaderImpl$State;->NORMAL:Lorg/jline/reader/impl/LineReaderImpl$State;

    if-ne v0, v1, :cond_0

    .line 3181
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3183
    :cond_0
    const-string v0, "vicmd"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setKeyMap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected viDelete()Z
    .locals 6

    .line 2416
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 2417
    .local v0, "cursorStart":I
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getKeys()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->readBinding(Lorg/jline/keymap/KeyMap;)Lorg/jline/reader/Binding;

    move-result-object v1

    .line 2418
    .local v1, "o":Lorg/jline/reader/Binding;
    instance-of v2, v1, Lorg/jline/reader/Reference;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2420
    move-object v2, v1

    check-cast v2, Lorg/jline/reader/Reference;

    invoke-virtual {v2}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->viDeleteChangeYankToRemap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2425
    .local v2, "op":Ljava/lang/String;
    const-string v4, "vi-delete"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2426
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->killWholeLine()Z

    goto :goto_0

    .line 2428
    :cond_0
    sget-object v4, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->DELETE:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    iput-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->viMoveMode:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 2429
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->widgets:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/reader/Widget;

    .line 2430
    .local v4, "widget":Lorg/jline/reader/Widget;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/jline/reader/Widget;->apply()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2431
    sget-object v5, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->NORMAL:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    iput-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->viMoveMode:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 2432
    return v3

    .line 2434
    :cond_1
    sget-object v3, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->NORMAL:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    iput-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->viMoveMode:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 2436
    .end local v4    # "widget":Lorg/jline/reader/Widget;
    :goto_0
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/jline/reader/impl/LineReaderImpl;->viDeleteTo(II)Z

    move-result v3

    return v3

    .line 2438
    .end local v2    # "op":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->pushBackBinding()V

    .line 2439
    return v3
.end method

.method protected viDeleteChangeYankToRemap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "op"    # Ljava/lang/String;

    .line 1236
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "vi-match-bracket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "vi-digit-or-beginning-of-line"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "backward-char"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "vi-goto-column"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "vi-rev-repeat-find"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "vi-yank"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "neg-argument"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "abort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "vi-find-prev-char-skip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "vi-find-next-char"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "vi-backward-word"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "vi-backward-char"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "vi-delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "forward-char"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "vi-forward-word"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "vi-forward-char"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_10
    const-string v0, "vi-change-to"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_11
    const-string v0, "vi-first-non-blank"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_12
    const-string v0, "vi-repeat-find"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_13
    const-string v0, "digit-argument"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_14
    const-string v0, "vi-forward-word-end"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_15
    const-string v0, "vi-find-next-char-skip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_16
    const-string v0, "vi-find-prev-char"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_17
    const-string v0, "end-of-line"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1264
    const-string v0, "vi-cmd-mode"

    return-object v0

    .line 1261
    :pswitch_0
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7c57ccc8 -> :sswitch_17
        -0x7b8dbe0a -> :sswitch_16
        -0x73b6784a -> :sswitch_15
        -0x6559be86 -> :sswitch_14
        -0x64ca94a3 -> :sswitch_13
        -0x595c216f -> :sswitch_12
        -0x56045ba3 -> :sswitch_11
        -0x1aaacce2 -> :sswitch_10
        -0x174219c8 -> :sswitch_f
        -0x1738e614 -> :sswitch_e
        -0x1364eaa2 -> :sswitch_d
        -0x103a7dfb -> :sswitch_c
        -0xc37d69a -> :sswitch_b
        -0xc2ea2e6 -> :sswitch_a
        -0xd92eca -> :sswitch_9
        0x4468ef6 -> :sswitch_8
        0x5852330 -> :sswitch_7
        0x762fa5a -> :sswitch_6
        0x17fec59f -> :sswitch_5
        0x1ed46967 -> :sswitch_4
        0x536aa2e6 -> :sswitch_3
        0x6b90df00 -> :sswitch_2
        0x6f24bfca -> :sswitch_1
        0x76eb1f06 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected viDeleteChar()Z
    .locals 2

    .line 3328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-ge v0, v1, :cond_1

    .line 3329
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3330
    const/4 v1, 0x0

    return v1

    .line 3328
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3333
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected viDeleteTo(II)Z
    .locals 1
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .line 3385
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jline/reader/impl/LineReaderImpl;->doViDeleteOrChange(IIZ)Z

    move-result v0

    return v0
.end method

.method protected viDigitOrBeginningOfLine()Z
    .locals 1

    .line 2379
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->repeatCount:I

    if-lez v0, :cond_0

    .line 2380
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->digitArgument()Z

    move-result v0

    return v0

    .line 2382
    :cond_0
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->beginningOfLine()Z

    move-result v0

    return v0
.end method

.method protected viDownLineOrHistory()Z
    .locals 1

    .line 3146
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->downLine()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3147
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->downHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->viFirstNonBlank()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3146
    :goto_1
    return v0
.end method

.method protected viEndOfLine()Z
    .locals 3

    .line 3274
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 3275
    const/4 v0, 0x0

    return v0

    .line 3277
    :cond_0
    :goto_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 3278
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->findeol()I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->cursor(I)Z

    goto :goto_0

    .line 3280
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3281
    return v1
.end method

.method protected viFindNextChar()Z
    .locals 2

    .line 1933
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->vigetkey()I

    move-result v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findChar:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1934
    const/4 v0, 0x1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findDir:I

    .line 1935
    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->findTailAdd:I

    .line 1936
    invoke-direct {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->vifindchar(Z)Z

    move-result v0

    return v0

    .line 1938
    :cond_0
    return v1
.end method

.method protected viFindNextCharSkip()Z
    .locals 2

    .line 1951
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->vigetkey()I

    move-result v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findChar:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1952
    const/4 v0, 0x1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findDir:I

    .line 1953
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findTailAdd:I

    .line 1954
    invoke-direct {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->vifindchar(Z)Z

    move-result v0

    return v0

    .line 1956
    :cond_0
    return v1
.end method

.method protected viFindPrevChar()Z
    .locals 2

    .line 1942
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->vigetkey()I

    move-result v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findChar:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1943
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findDir:I

    .line 1944
    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->findTailAdd:I

    .line 1945
    invoke-direct {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->vifindchar(Z)Z

    move-result v0

    return v0

    .line 1947
    :cond_0
    return v1
.end method

.method protected viFindPrevCharSkip()Z
    .locals 2

    .line 1960
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->vigetkey()I

    move-result v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findChar:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1961
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findDir:I

    .line 1962
    const/4 v0, 0x1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findTailAdd:I

    .line 1963
    invoke-direct {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->vifindchar(Z)Z

    move-result v0

    return v0

    .line 1965
    :cond_0
    return v1
.end method

.method protected viFirstNonBlank()Z
    .locals 3

    .line 3261
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->beginningOfLine()Z

    .line 3262
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3263
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_0

    .line 3265
    :cond_0
    return v2
.end method

.method protected viForwardBlankWord()Z
    .locals 6

    .line 1388
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1389
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda155;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda155;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1391
    :cond_0
    :goto_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_6

    .line 1392
    :goto_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1393
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_1

    .line 1395
    :cond_1
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViChangeOperation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-nez v0, :cond_2

    .line 1396
    return v1

    .line 1398
    :cond_2
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 1399
    .local v0, "nl":I
    :goto_2
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v4

    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    const/4 v4, 0x2

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 1401
    invoke-interface {v4}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1402
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1403
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v4

    if-ne v4, v3, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    add-int/2addr v0, v4

    goto :goto_2

    .line 1405
    .end local v0    # "nl":I
    :cond_5
    goto :goto_0

    .line 1406
    :cond_6
    return v1
.end method

.method protected viForwardBlankWordEnd()Z
    .locals 3

    .line 1428
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1429
    const/4 v0, 0x0

    return v0

    .line 1431
    :cond_0
    :goto_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_3

    .line 1432
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1433
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1434
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1438
    :cond_2
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1439
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1440
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1441
    goto :goto_0

    .line 1445
    :cond_3
    return v1
.end method

.method protected viForwardChar()Z
    .locals 3

    .line 1300
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1301
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda166;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda166;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1303
    :cond_0
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->findeol()I

    move-result v0

    .line 1304
    .local v0, "lim":I
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViCmdMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViMoveOperation()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1305
    add-int/lit8 v0, v0, -0x1

    .line 1307
    :cond_1
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 1308
    const/4 v1, 0x0

    return v1

    .line 1310
    :cond_2
    :goto_0
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v2, 0x1

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 1311
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_0

    .line 1313
    :cond_3
    return v2
.end method

.method protected viForwardWord()Z
    .locals 6

    .line 1358
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1359
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda144;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda144;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1361
    :cond_0
    :goto_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_7

    .line 1362
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1363
    :goto_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1364
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_1

    .line 1367
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 1368
    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 1369
    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1370
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_2

    .line 1373
    :cond_2
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViChangeOperation()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-nez v0, :cond_3

    .line 1374
    return v1

    .line 1376
    :cond_3
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    .line 1377
    .local v0, "nl":I
    :goto_3
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v4

    iget-object v5, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    const/4 v4, 0x2

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    .line 1379
    invoke-interface {v4}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1380
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1381
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v4

    if-ne v4, v3, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    add-int/2addr v0, v4

    goto :goto_3

    .line 1383
    .end local v0    # "nl":I
    :cond_6
    goto/16 :goto_0

    .line 1384
    :cond_7
    return v1
.end method

.method protected viForwardWordEnd()Z
    .locals 3

    .line 1449
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1450
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda144;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda144;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1452
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v1, 0x1

    if-lez v0, :cond_4

    .line 1453
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1454
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->nextChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1455
    goto :goto_1

    .line 1457
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_0

    .line 1459
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1460
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->nextChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1461
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1462
    :goto_2
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->nextChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_2

    .line 1466
    :cond_3
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1467
    :goto_3
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->nextChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isViAlphaNum(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->nextChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1468
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_3

    .line 1473
    :cond_4
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViMoveOperation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1474
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 1476
    :cond_5
    return v1
.end method

.method protected viHistorySearchBackward()Z
    .locals 2

    .line 2058
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchDir:I

    .line 2059
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v0}, Lorg/jline/reader/History;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    .line 2060
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getViSearchString()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->viRepeatSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected viHistorySearchForward()Z
    .locals 3

    .line 2052
    const/4 v0, 0x1

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchDir:I

    .line 2053
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    .line 2054
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getViSearchString()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->viRepeatSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method protected viInsert()Z
    .locals 1

    .line 3187
    const-string v0, "viins"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setKeyMap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected viInsertBol()Z
    .locals 1

    .line 3246
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->beginningOfLine()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "viins"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setKeyMap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected viInsertComment()Z
    .locals 1

    .line 1919
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->doInsertComment(Z)Z

    move-result v0

    return v0
.end method

.method public viInsertion()Lorg/jline/keymap/KeyMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;"
        }
    .end annotation

    .line 6023
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 6024
    .local v0, "viins":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->bindKeys(Lorg/jline/keymap/KeyMap;)V

    .line 6025
    const-string v1, "^@-^_"

    invoke-static {v1}, Lorg/jline/keymap/KeyMap;->range(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    const-string v2, "self-insert"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 6026
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v4, 0x44

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "list-choices"

    invoke-direct {p0, v0, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6027
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v4, 0x47

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "abort"

    invoke-direct {p0, v0, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6028
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v4, 0x48

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "backward-delete-char"

    invoke-direct {p0, v0, v4, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6029
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v6, 0x49

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "expand-or-complete"

    invoke-direct {p0, v0, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6030
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v6, 0x4a

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "accept-line"

    invoke-direct {p0, v0, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6031
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v7, 0x4c

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "clear-screen"

    invoke-direct {p0, v0, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6032
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v7, 0x4d

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-direct {p0, v0, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6033
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v6, 0x4e

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "menu-complete"

    invoke-direct {p0, v0, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6034
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v6, 0x50

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "reverse-menu-complete"

    invoke-direct {p0, v0, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6035
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v6, 0x52

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "history-incremental-search-backward"

    invoke-direct {p0, v0, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6036
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v7, 0x53

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const-string v7, "history-incremental-search-forward"

    invoke-direct {p0, v0, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6037
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v8, 0x54

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    const-string v8, "transpose-chars"

    invoke-direct {p0, v0, v8, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6038
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v8, 0x55

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    const-string v8, "kill-whole-line"

    invoke-direct {p0, v0, v8, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6039
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v8, 0x56

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    const-string v8, "quoted-insert"

    invoke-direct {p0, v0, v8, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6040
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v8, 0x57

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    const-string v8, "backward-kill-word"

    invoke-direct {p0, v0, v8, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6041
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v8, 0x59

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    const-string v8, "yank"

    invoke-direct {p0, v0, v8, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6042
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v8, 0x5b

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    const-string v8, "vi-cmd-mode"

    invoke-direct {p0, v0, v8, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6043
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/16 v8, 0x5f

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    const-string v8, "undo"

    invoke-direct {p0, v0, v8, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6044
    new-array v3, v1, [Ljava/lang/CharSequence;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x58

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "r"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-direct {p0, v0, v6, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6045
    new-array v3, v1, [Ljava/lang/CharSequence;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "s"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-direct {p0, v0, v7, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6046
    const-string v3, " -~"

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->range(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 6047
    new-array v2, v1, [Ljava/lang/CharSequence;

    const-string v3, ")"

    aput-object v3, v2, v5

    const-string v3, "insert-close-paren"

    invoke-direct {p0, v0, v3, v2}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6048
    new-array v2, v1, [Ljava/lang/CharSequence;

    const-string v3, "]"

    aput-object v3, v2, v5

    const-string v3, "insert-close-square"

    invoke-direct {p0, v0, v3, v2}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6049
    new-array v2, v1, [Ljava/lang/CharSequence;

    const-string v3, "}"

    aput-object v3, v2, v5

    const-string v3, "insert-close-curly"

    invoke-direct {p0, v0, v3, v2}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6050
    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v4, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6051
    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->bindArrowKeys(Lorg/jline/keymap/KeyMap;)V

    .line 6052
    return-object v0
.end method

.method protected viJoin()Z
    .locals 3

    .line 3231
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->down()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3232
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3233
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->backspace()Z

    .line 3234
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->write(I)V

    .line 3235
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3236
    const/4 v0, 0x1

    return v0

    .line 3238
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected viKillEol()Z
    .locals 4

    .line 3213
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->findeol()I

    move-result v0

    .line 3214
    .local v0, "eol":I
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 3215
    const/4 v1, 0x0

    return v1

    .line 3217
    :cond_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    invoke-interface {v2, v3, v0}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/reader/impl/KillRing;->add(Ljava/lang/String;)V

    .line 3218
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    sub-int v2, v0, v2

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->delete(I)I

    .line 3219
    const/4 v1, 0x1

    return v1
.end method

.method protected viKillWholeLine()Z
    .locals 1

    .line 3242
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->killWholeLine()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "viins"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setKeyMap(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected viMatchBracket()Z
    .locals 1

    .line 2229
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->doViMatchBracket()Z

    move-result v0

    return v0
.end method

.method protected viOpenLineAbove()Z
    .locals 3

    .line 3457
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3458
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->write(I)V

    .line 3459
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3460
    const-string v0, "viins"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setKeyMap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected viOpenLineBelow()Z
    .locals 3

    .line 3464
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3465
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->write(I)V

    .line 3466
    const-string v0, "viins"

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->setKeyMap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public viOpp()Lorg/jline/keymap/KeyMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;"
        }
    .end annotation

    .line 6201
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 6202
    .local v0, "viOpp":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_up:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v3}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "k"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "up-line"

    invoke-direct {p0, v0, v3, v2}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6203
    new-array v1, v1, [Ljava/lang/CharSequence;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_down:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "j"

    aput-object v2, v1, v5

    const-string v2, "down-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6204
    new-array v1, v5, [Ljava/lang/CharSequence;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->esc()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "vi-cmd-mode"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6205
    return-object v0
.end method

.method protected viPutAfter()Z
    .locals 3

    .line 3475
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    .line 3476
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->move(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->currChar()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3477
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3478
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->putString(Ljava/lang/CharSequence;)V

    .line 3479
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    neg-int v1, v1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_2

    .line 3480
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 3481
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3482
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3484
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-ge v0, v1, :cond_3

    .line 3485
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->putString(Ljava/lang/CharSequence;)V

    .line 3484
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3487
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3489
    :cond_4
    :goto_2
    return v2
.end method

.method protected viPutBefore()Z
    .locals 3

    .line 3493
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ltz v0, :cond_1

    .line 3494
    :goto_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->move(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3495
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->putString(Ljava/lang/CharSequence;)V

    .line 3496
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    neg-int v1, v1

    invoke-interface {v0, v1}, Lorg/jline/reader/Buffer;->move(I)I

    goto :goto_2

    .line 3497
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 3498
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    if-lez v0, :cond_2

    .line 3499
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3501
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-ge v0, v1, :cond_3

    .line 3502
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->putString(Ljava/lang/CharSequence;)V

    .line 3501
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3504
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3506
    :cond_4
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method protected viRepeatFind()Z
    .locals 1

    .line 1969
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->vifindchar(Z)Z

    move-result v0

    return v0
.end method

.method protected viRepeatSearch()Z
    .locals 5

    .line 2064
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchDir:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2065
    return v1

    .line 2067
    :cond_0
    if-gez v0, :cond_1

    .line 2068
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchString:Ljava/lang/String;

    iget v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    invoke-virtual {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->searchBackwards(Ljava/lang/String;IZ)I

    move-result v0

    goto :goto_0

    .line 2069
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchString:Ljava/lang/String;

    iget v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    invoke-virtual {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->searchForwards(Ljava/lang/String;IZ)I

    move-result v0

    :goto_0
    nop

    .line 2070
    .local v0, "si":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    invoke-interface {v3}, Lorg/jline/reader/History;->index()I

    move-result v3

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 2073
    :cond_2
    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    .line 2078
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->clear()Z

    .line 2079
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    invoke-interface {v1, v3}, Lorg/jline/reader/History;->moveTo(I)Z

    .line 2080
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->history:Lorg/jline/reader/History;

    iget v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchIndex:I

    invoke-interface {v3, v4}, Lorg/jline/reader/History;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->write(Ljava/lang/CharSequence;)V

    .line 2081
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->keyMap:Ljava/lang/String;

    const-string v3, "vicmd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2082
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 2084
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 2071
    :cond_4
    :goto_1
    return v1
.end method

.method protected viReplaceChars()Z
    .locals 5

    .line 3362
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->readCharacter()I

    move-result v0

    .line 3364
    .local v0, "c":I
    const/4 v1, 0x1

    if-ltz v0, :cond_4

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 3368
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-ge v2, v3, :cond_3

    .line 3369
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    int-to-char v4, v0

    invoke-interface {v3, v4}, Lorg/jline/reader/Buffer;->currChar(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3370
    iget v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 3371
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v1}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3368
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3374
    :cond_2
    const/4 v1, 0x0

    return v1

    .line 3377
    .end local v2    # "i":I
    :cond_3
    return v1

    .line 3365
    :cond_4
    :goto_1
    return v1
.end method

.method protected viRevRepeatFind()Z
    .locals 2

    .line 1973
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    if-gez v0, :cond_0

    .line 1974
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda58;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda58;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->callNeg(Lorg/jline/reader/Widget;)Z

    move-result v0

    return v0

    .line 1976
    :cond_0
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findTailAdd:I

    neg-int v0, v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findTailAdd:I

    .line 1977
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findDir:I

    neg-int v0, v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->findDir:I

    .line 1978
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->vifindchar(Z)Z

    move-result v0

    .line 1979
    .local v0, "ret":Z
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->findTailAdd:I

    neg-int v1, v1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->findTailAdd:I

    .line 1980
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->findDir:I

    neg-int v1, v1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->findDir:I

    .line 1981
    return v0
.end method

.method protected viRevRepeatSearch()Z
    .locals 2

    .line 2089
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchDir:I

    neg-int v0, v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchDir:I

    .line 2090
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->viRepeatSearch()Z

    move-result v0

    .line 2091
    .local v0, "ret":Z
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchDir:I

    neg-int v1, v1

    iput v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->searchDir:I

    .line 2092
    return v0
.end method

.method protected viSwapCase()Z
    .locals 4

    .line 3343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->count:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 3344
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3345
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    invoke-interface {v1, v3}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v1

    .line 3346
    .local v1, "ch":I
    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->switchCase(I)I

    move-result v1

    .line 3347
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v1}, Lorg/jline/reader/Buffer;->currChar(I)Z

    .line 3348
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v2}, Lorg/jline/reader/Buffer;->move(I)I

    .line 3349
    .end local v1    # "ch":I
    nop

    .line 3343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3350
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 3353
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method protected viUpLineOrHistory()Z
    .locals 1

    .line 3141
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->upLine()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3142
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->upHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->viFirstNonBlank()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3141
    :goto_1
    return v0
.end method

.method protected viYankTo()Z
    .locals 6

    .line 2444
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 2445
    .local v0, "cursorStart":I
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->getKeys()Lorg/jline/keymap/KeyMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/reader/impl/LineReaderImpl;->readBinding(Lorg/jline/keymap/KeyMap;)Lorg/jline/reader/Binding;

    move-result-object v1

    .line 2446
    .local v1, "o":Lorg/jline/reader/Binding;
    instance-of v2, v1, Lorg/jline/reader/Reference;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2448
    move-object v2, v1

    check-cast v2, Lorg/jline/reader/Reference;

    invoke-virtual {v2}, Lorg/jline/reader/Reference;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->viDeleteChangeYankToRemap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2450
    .local v2, "op":Ljava/lang/String;
    const-string v4, "vi-yank"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2451
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    .line 2452
    const/4 v3, 0x1

    return v3

    .line 2454
    :cond_0
    sget-object v4, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->YANK:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    iput-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->viMoveMode:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 2455
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->widgets:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/reader/Widget;

    .line 2456
    .local v4, "widget":Lorg/jline/reader/Widget;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/jline/reader/Widget;->apply()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2457
    return v3

    .line 2459
    :cond_1
    sget-object v3, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->NORMAL:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    iput-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->viMoveMode:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 2461
    .end local v4    # "widget":Lorg/jline/reader/Widget;
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lorg/jline/reader/impl/LineReaderImpl;->viYankTo(II)Z

    move-result v3

    return v3

    .line 2463
    .end local v2    # "op":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lorg/jline/reader/impl/LineReaderImpl;->pushBackBinding()V

    .line 2464
    return v3
.end method

.method protected viYankTo(II)Z
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .line 3433
    move v0, p1

    .line 3435
    .local v0, "cursorPos":I
    if-ge p2, p1, :cond_0

    .line 3436
    move v1, p2

    .line 3437
    .local v1, "tmp":I
    move p2, p1

    .line 3438
    move p1, v1

    .line 3441
    .end local v1    # "tmp":I
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    .line 3442
    const-string v2, ""

    iput-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    .line 3443
    return v1

    .line 3446
    :cond_1
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, p1, p2}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    .line 3452
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2, v0}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 3453
    return v1
.end method

.method protected viYankWholeLine()Z
    .locals 7

    .line 2470
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    .line 2471
    .local v0, "p":I
    :goto_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/jline/reader/Buffer;->move(I)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 2472
    :cond_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v1}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v1

    .line 2473
    .local v1, "s":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->repeatCount:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2

    .line 2474
    :goto_2
    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4, v5}, Lorg/jline/reader/Buffer;->move(I)I

    move-result v4

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v4}, Lorg/jline/reader/Buffer;->prevChar()I

    move-result v4

    if-eq v4, v3, :cond_1

    goto :goto_2

    .line 2473
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2476
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v2}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v2

    .line 2477
    .local v2, "e":I
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v1, v2}, Lorg/jline/reader/Buffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    .line 2478
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->yankBuffer:Ljava/lang/String;

    .line 2481
    :cond_3
    iget-object v3, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v3, v0}, Lorg/jline/reader/Buffer;->cursor(I)Z

    .line 2482
    return v5
.end method

.method public visual()Lorg/jline/keymap/KeyMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/reader/Binding;",
            ">;"
        }
    .end annotation

    .line 6189
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 6190
    .local v0, "visual":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/reader/Binding;>;"
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_up:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v3}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "k"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "up-line"

    invoke-direct {p0, v0, v3, v2}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6191
    new-array v1, v1, [Ljava/lang/CharSequence;

    sget-object v2, Lorg/jline/utils/InfoCmp$Capability;->key_down:Lorg/jline/utils/InfoCmp$Capability;

    invoke-direct {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->key(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "j"

    aput-object v2, v1, v5

    const-string v2, "down-line"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6192
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda96;

    invoke-direct {v1, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda96;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    new-array v2, v5, [Ljava/lang/CharSequence;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->esc()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Lorg/jline/reader/Widget;[Ljava/lang/CharSequence;)V

    .line 6193
    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, "o"

    aput-object v2, v1, v4

    const-string v2, "exchange-point-and-mark"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6194
    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, "p"

    aput-object v2, v1, v4

    const-string v2, "put-replace-selection"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6195
    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, "x"

    aput-object v2, v1, v4

    const-string v2, "vi-delete"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6196
    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v2, "~"

    aput-object v2, v1, v4

    const-string v2, "vi-oper-swap-case"

    invoke-direct {p0, v0, v2, v1}, Lorg/jline/reader/impl/LineReaderImpl;->bind(Lorg/jline/keymap/KeyMap;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 6197
    return-object v0
.end method

.method protected visualLineMode()Z
    .locals 3

    .line 3560
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViMoveOperation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3561
    iput-boolean v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->isArgDigit:Z

    .line 3562
    iput-boolean v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->forceLine:Z

    .line 3563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->forceChar:Z

    .line 3564
    return v1

    .line 3566
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    sget-object v2, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    if-ne v0, v2, :cond_1

    .line 3567
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    .line 3568
    sget-object v0, Lorg/jline/reader/LineReader$RegionType;->LINE:Lorg/jline/reader/LineReader$RegionType;

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    goto :goto_0

    .line 3569
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    sget-object v2, Lorg/jline/reader/LineReader$RegionType;->CHAR:Lorg/jline/reader/LineReader$RegionType;

    if-ne v0, v2, :cond_2

    .line 3570
    sget-object v0, Lorg/jline/reader/LineReader$RegionType;->LINE:Lorg/jline/reader/LineReader$RegionType;

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    goto :goto_0

    .line 3571
    :cond_2
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    sget-object v2, Lorg/jline/reader/LineReader$RegionType;->LINE:Lorg/jline/reader/LineReader$RegionType;

    if-ne v0, v2, :cond_3

    .line 3572
    sget-object v0, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    .line 3574
    :cond_3
    :goto_0
    return v1
.end method

.method protected visualMode()Z
    .locals 3

    .line 3542
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl;->isInViMoveOperation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3543
    iput-boolean v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->isArgDigit:Z

    .line 3544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->forceLine:Z

    .line 3545
    iput-boolean v1, p0, Lorg/jline/reader/impl/LineReaderImpl;->forceChar:Z

    .line 3546
    return v1

    .line 3548
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    sget-object v2, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    if-ne v0, v2, :cond_1

    .line 3549
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-interface {v0}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v0

    iput v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionMark:I

    .line 3550
    sget-object v0, Lorg/jline/reader/LineReader$RegionType;->CHAR:Lorg/jline/reader/LineReader$RegionType;

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    goto :goto_0

    .line 3551
    :cond_1
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    sget-object v2, Lorg/jline/reader/LineReader$RegionType;->CHAR:Lorg/jline/reader/LineReader$RegionType;

    if-ne v0, v2, :cond_2

    .line 3552
    sget-object v0, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    goto :goto_0

    .line 3553
    :cond_2
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    sget-object v2, Lorg/jline/reader/LineReader$RegionType;->LINE:Lorg/jline/reader/LineReader$RegionType;

    if-ne v0, v2, :cond_3

    .line 3554
    sget-object v0, Lorg/jline/reader/LineReader$RegionType;->CHAR:Lorg/jline/reader/LineReader$RegionType;

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->regionActive:Lorg/jline/reader/LineReader$RegionType;

    .line 3556
    :cond_3
    :goto_0
    return v1
.end method

.method protected whatCursorPosition()Z
    .locals 1

    .line 3583
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda67;

    invoke-direct {v0, p0}, Lorg/jline/reader/impl/LineReaderImpl$$ExternalSyntheticLambda67;-><init>(Lorg/jline/reader/impl/LineReaderImpl;)V

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->post:Ljava/util/function/Supplier;

    .line 3621
    const/4 v0, 0x1

    return v0
.end method

.method public yank()Z
    .locals 2

    .line 5717
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    invoke-virtual {v0}, Lorg/jline/reader/impl/KillRing;->yank()Ljava/lang/String;

    move-result-object v0

    .line 5718
    .local v0, "yanked":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5719
    const/4 v1, 0x0

    return v1

    .line 5721
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jline/reader/impl/LineReaderImpl;->putString(Ljava/lang/CharSequence;)V

    .line 5722
    const/4 v1, 0x1

    return v1
.end method

.method public yankPop()Z
    .locals 4

    .line 5727
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    invoke-virtual {v0}, Lorg/jline/reader/impl/KillRing;->lastYank()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5728
    return v1

    .line 5730
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    invoke-virtual {v0}, Lorg/jline/reader/impl/KillRing;->yank()Ljava/lang/String;

    move-result-object v0

    .line 5731
    .local v0, "current":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 5733
    return v1

    .line 5735
    :cond_1
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->buf:Lorg/jline/reader/Buffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/jline/reader/Buffer;->backspace(I)I

    .line 5736
    iget-object v2, p0, Lorg/jline/reader/impl/LineReaderImpl;->killRing:Lorg/jline/reader/impl/KillRing;

    invoke-virtual {v2}, Lorg/jline/reader/impl/KillRing;->yankPop()Ljava/lang/String;

    move-result-object v2

    .line 5737
    .local v2, "yanked":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 5739
    return v1

    .line 5742
    :cond_2
    invoke-virtual {p0, v2}, Lorg/jline/reader/impl/LineReaderImpl;->putString(Ljava/lang/CharSequence;)V

    .line 5743
    const/4 v1, 0x1

    return v1
.end method
