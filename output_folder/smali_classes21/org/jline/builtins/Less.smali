.class public Lorg/jline/builtins/Less;
.super Ljava/lang/Object;
.source "Less.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/Less$Pair;,
        Lorg/jline/builtins/Less$InterruptibleInputStream;,
        Lorg/jline/builtins/Less$Operation;,
        Lorg/jline/builtins/Less$SavedSourcePositions;,
        Lorg/jline/builtins/Less$LineEditor;
    }
.end annotation


# static fields
.field private static final ESCAPE:I = 0x1b

.field private static final MESSAGE_FILE_INFO:Ljava/lang/String; = "FILE_INFO"


# instance fields
.field protected final bindingReader:Lorg/jline/keymap/BindingReader;

.field protected final buffer:Ljava/lang/StringBuilder;

.field public chopLongLines:Z

.field protected final currentDir:Ljava/nio/file/Path;

.field protected final display:Lorg/jline/utils/Display;

.field protected displayPattern:Ljava/lang/String;

.field protected errorMessage:Ljava/lang/String;

.field protected firstColumnToDisplay:I

.field protected firstLineInMemory:I

.field protected firstLineToDisplay:I

.field protected halfWindow:I

.field private highlight:Z

.field private historyLog:Ljava/lang/String;

.field public ignoreCaseAlways:Z

.field public ignoreCaseCond:Z

.field protected keys:Lorg/jline/keymap/KeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/builtins/Less$Operation;",
            ">;"
        }
    .end annotation
.end field

.field protected lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation
.end field

.field protected message:Ljava/lang/String;

.field private nanorcIgnoreErrors:Z

.field protected nbEof:I

.field public noInit:Z

.field public noKeypad:Z

.field protected offsetInLine:I

.field protected final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jline/builtins/Less$Operation;",
            ">;"
        }
    .end annotation
.end field

.field protected pattern:Ljava/lang/String;

.field protected patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

.field public printLineNumbers:Z

.field public quiet:Z

.field public quitAtFirstEof:Z

.field public quitAtSecondEof:Z

.field public quitIfOneScreen:Z

.field protected reader:Ljava/io/BufferedReader;

.field protected final size:Lorg/jline/terminal/Size;

.field protected sourceIdx:I

.field protected sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/builtins/Source;",
            ">;"
        }
    .end annotation
.end field

.field private final syntaxFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field syntaxHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

.field protected syntaxName:Ljava/lang/String;

.field protected tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final terminal:Lorg/jline/terminal/Terminal;

.field public veryQuiet:Z

.field protected window:I


# direct methods
.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "currentDir"    # Ljava/nio/file/Path;

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/builtins/Less;-><init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/builtins/Options;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/builtins/Options;)V
    .locals 1
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "currentDir"    # Ljava/nio/file/Path;
    .param p3, "opts"    # Lorg/jline/builtins/Options;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jline/builtins/Less;-><init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/builtins/Options;Lorg/jline/builtins/ConfigurationPath;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/builtins/Options;Lorg/jline/builtins/ConfigurationPath;)V
    .locals 10
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "currentDir"    # Ljava/nio/file/Path;
    .param p3, "opts"    # Lorg/jline/builtins/Options;
    .param p4, "configPath"    # Lorg/jline/builtins/ConfigurationPath;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/Less;->tabs:Ljava/util/List;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/builtins/Less;->historyLog:Ljava/lang/String;

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/builtins/Less;->firstLineInMemory:I

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/jline/builtins/Less;->lines:Ljava/util/List;

    .line 87
    iput v1, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 88
    iput v1, p0, Lorg/jline/builtins/Less;->firstColumnToDisplay:I

    .line 89
    iput v1, p0, Lorg/jline/builtins/Less;->offsetInLine:I

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    .line 95
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    .line 102
    new-instance v2, Lorg/jline/builtins/Nano$PatternHistory;

    invoke-direct {v2, v0}, Lorg/jline/builtins/Nano$PatternHistory;-><init>(Ljava/nio/file/Path;)V

    iput-object v2, p0, Lorg/jline/builtins/Less;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    .line 106
    new-instance v2, Lorg/jline/terminal/Size;

    invoke-direct {v2}, Lorg/jline/terminal/Size;-><init>()V

    iput-object v2, p0, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/jline/builtins/Less;->syntaxFiles:Ljava/util/List;

    .line 110
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jline/builtins/Less;->highlight:Z

    .line 145
    iput-object p1, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    .line 146
    new-instance v4, Lorg/jline/utils/Display;

    invoke-direct {v4, p1, v3}, Lorg/jline/utils/Display;-><init>(Lorg/jline/terminal/Terminal;Z)V

    iput-object v4, p0, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    .line 147
    new-instance v4, Lorg/jline/keymap/BindingReader;

    invoke-interface {p1}, Lorg/jline/terminal/Terminal;->reader()Lorg/jline/utils/NonBlockingReader;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jline/keymap/BindingReader;-><init>(Lorg/jline/utils/NonBlockingReader;)V

    iput-object v4, p0, Lorg/jline/builtins/Less;->bindingReader:Lorg/jline/keymap/BindingReader;

    .line 148
    iput-object p2, p0, Lorg/jline/builtins/Less;->currentDir:Ljava/nio/file/Path;

    .line 149
    if-eqz p4, :cond_0

    const-string v0, "jlessrc"

    invoke-virtual {p4, v0}, Lorg/jline/builtins/ConfigurationPath;->getConfig(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 150
    .local v0, "lessrc":Ljava/nio/file/Path;
    :cond_0
    if-eqz p3, :cond_1

    const-string v4, "ignorercfiles"

    invoke-virtual {p3, v4}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    .line 151
    .local v4, "ignorercfiles":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez v4, :cond_2

    .line 153
    :try_start_0
    invoke-direct {p0, v0}, Lorg/jline/builtins/Less;->parseConfig(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    goto :goto_2

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered error while reading config file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jline/builtins/Less;->errorMessage:Ljava/lang/String;

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 157
    :cond_2
    new-instance v5, Ljava/io/File;

    const-string v6, "/usr/share/nano"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 158
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v5

    const-string v7, "glob:/usr/share/nano/*.nanorc"

    invoke-virtual {v5, v7}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v5

    .line 160
    .local v5, "pathMatcher":Ljava/nio/file/PathMatcher;
    :try_start_1
    new-array v7, v1, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    const v7, 0x7fffffff

    new-instance v8, Lorg/jline/builtins/Less$$ExternalSyntheticLambda1;

    invoke-direct {v8, v5}, Lorg/jline/builtins/Less$$ExternalSyntheticLambda1;-><init>(Ljava/nio/file/PathMatcher;)V

    new-array v9, v1, [Ljava/nio/file/FileVisitOption;

    invoke-static {v6, v7, v8, v9}, Ljava/nio/file/Files;->find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 161
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/jline/builtins/Less$$ExternalSyntheticLambda2;

    invoke-direct {v7, v2}, Lorg/jline/builtins/Less$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 162
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->nanorcIgnoreErrors:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    goto :goto_2

    .line 163
    :catch_1
    move-exception v2

    .line 164
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "Encountered error while reading nanorc files"

    iput-object v6, p0, Lorg/jline/builtins/Less;->errorMessage:Ljava/lang/String;

    .line 167
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "pathMatcher":Ljava/nio/file/PathMatcher;
    :cond_3
    :goto_2
    if-eqz p3, :cond_11

    .line 168
    const-string v2, "QUIT-AT-EOF"

    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 169
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->quitAtFirstEof:Z

    .line 171
    :cond_4
    const-string v2, "quit-at-eof"

    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 172
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->quitAtSecondEof:Z

    .line 174
    :cond_5
    const-string v2, "quit-if-one-screen"

    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 175
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->quitIfOneScreen:Z

    .line 177
    :cond_6
    const-string v2, "quiet"

    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 178
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->quiet:Z

    .line 180
    :cond_7
    const-string v2, "QUIET"

    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 181
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->veryQuiet:Z

    .line 183
    :cond_8
    const-string v2, "chop-long-lines"

    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 184
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->chopLongLines:Z

    .line 186
    :cond_9
    const-string v2, "IGNORE-CASE"

    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 187
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->ignoreCaseAlways:Z

    .line 189
    :cond_a
    const-string v2, "ignore-case"

    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 190
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->ignoreCaseCond:Z

    .line 192
    :cond_b
    const-string v2, "LINE-NUMBERS"

    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 193
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->printLineNumbers:Z

    .line 195
    :cond_c
    const-string v2, "tabs"

    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 196
    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jline/builtins/Less;->doTabs(Ljava/lang/String;)V

    .line 198
    :cond_d
    const-string v2, "syntax"

    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 199
    invoke-virtual {p3, v2}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/builtins/Less;->syntaxName:Ljava/lang/String;

    .line 200
    iput-boolean v1, p0, Lorg/jline/builtins/Less;->nanorcIgnoreErrors:Z

    .line 202
    :cond_e
    const-string v1, "no-init"

    invoke-virtual {p3, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 203
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->noInit:Z

    .line 205
    :cond_f
    const-string v1, "no-keypad"

    invoke-virtual {p3, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 206
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->noKeypad:Z

    .line 208
    :cond_10
    const-string v1, "historylog"

    invoke-virtual {p3, v1}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 209
    invoke-virtual {p3, v1}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/builtins/Less;->historyLog:Ljava/lang/String;

    .line 212
    :cond_11
    if-eqz p4, :cond_12

    iget-object v1, p0, Lorg/jline/builtins/Less;->historyLog:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 214
    :try_start_2
    new-instance v2, Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {p4, v1, v3}, Lorg/jline/builtins/ConfigurationPath;->getUserConfig(Ljava/lang/String;Z)Ljava/nio/file/Path;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/jline/builtins/Nano$PatternHistory;-><init>(Ljava/nio/file/Path;)V

    iput-object v2, p0, Lorg/jline/builtins/Less;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 217
    goto :goto_3

    .line 215
    :catch_2
    move-exception v1

    .line 216
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered error while reading pattern-history file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/builtins/Less;->historyLog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/builtins/Less;->errorMessage:Ljava/lang/String;

    .line 219
    .end local v1    # "e":Ljava/io/IOException;
    :cond_12
    :goto_3
    return-void
.end method

.method private addFile()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 816
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 817
    .local v0, "fileKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Less$Operation;>;"
    sget-object v1, Lorg/jline/builtins/Less$Operation;->INSERT:Lorg/jline/builtins/Less$Operation;

    invoke-virtual {v0, v1}, Lorg/jline/keymap/KeyMap;->setUnicode(Ljava/lang/Object;)V

    .line 818
    const/16 v1, 0x20

    .local v1, "i":C
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 819
    sget-object v2, Lorg/jline/builtins/Less$Operation;->INSERT:Lorg/jline/builtins/Less$Operation;

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 818
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 821
    .end local v1    # "i":C
    :cond_0
    sget-object v1, Lorg/jline/builtins/Less$Operation;->RIGHT:Lorg/jline/builtins/Less$Operation;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v4, v5}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x6c

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 822
    sget-object v1, Lorg/jline/builtins/Less$Operation;->LEFT:Lorg/jline/builtins/Less$Operation;

    new-array v3, v2, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v4, v7}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x68

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 823
    sget-object v1, Lorg/jline/builtins/Less$Operation;->HOME:Lorg/jline/builtins/Less$Operation;

    new-array v3, v2, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->key_home:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v4, v7}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x30

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 824
    sget-object v1, Lorg/jline/builtins/Less$Operation;->END:Lorg/jline/builtins/Less$Operation;

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v4, Lorg/jline/utils/InfoCmp$Capability;->key_end:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v3, v4}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x24

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 825
    sget-object v1, Lorg/jline/builtins/Less$Operation;->BACKSPACE:Lorg/jline/builtins/Less$Operation;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 826
    sget-object v1, Lorg/jline/builtins/Less$Operation;->DELETE:Lorg/jline/builtins/Less$Operation;

    const/16 v2, 0x78

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 827
    sget-object v1, Lorg/jline/builtins/Less$Operation;->DELETE_WORD:Lorg/jline/builtins/Less$Operation;

    const/16 v2, 0x58

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 828
    sget-object v1, Lorg/jline/builtins/Less$Operation;->DELETE_LINE:Lorg/jline/builtins/Less$Operation;

    const/16 v2, 0x55

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 829
    sget-object v1, Lorg/jline/builtins/Less$Operation;->ACCEPT:Lorg/jline/builtins/Less$Operation;

    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 831
    new-instance v1, Lorg/jline/builtins/Less$SavedSourcePositions;

    invoke-direct {v1, p0}, Lorg/jline/builtins/Less$SavedSourcePositions;-><init>(Lorg/jline/builtins/Less;)V

    .line 832
    .local v1, "ssp":Lorg/jline/builtins/Less$SavedSourcePositions;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 833
    iget-object v2, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    const-string v3, "Examine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-object v2, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 835
    .local v2, "curPos":I
    move v3, v2

    .line 836
    .local v3, "begPos":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lorg/jline/builtins/Less;->display(ZLjava/lang/Integer;)Z

    .line 837
    new-instance v4, Lorg/jline/builtins/Less$LineEditor;

    invoke-direct {v4, p0, v3}, Lorg/jline/builtins/Less$LineEditor;-><init>(Lorg/jline/builtins/Less;I)V

    .line 839
    .local v4, "lineEditor":Lorg/jline/builtins/Less$LineEditor;
    :goto_1
    invoke-static {}, Lorg/jline/builtins/Less;->checkInterrupted()V

    .line 841
    sget-object v6, Lorg/jline/builtins/Less$1;->$SwitchMap$org$jline$builtins$Less$Operation:[I

    iget-object v7, p0, Lorg/jline/builtins/Less;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v7, v0}, Lorg/jline/keymap/BindingReader;->readBinding(Lorg/jline/keymap/KeyMap;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jline/builtins/Less$Operation;

    move-object v8, v7

    .local v8, "op":Lorg/jline/builtins/Less$Operation;
    invoke-virtual {v7}, Lorg/jline/builtins/Less$Operation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 852
    invoke-virtual {v4, v8, v2}, Lorg/jline/builtins/Less$LineEditor;->editBuffer(Lorg/jline/builtins/Less$Operation;I)I

    move-result v2

    .line 855
    if-le v2, v3, :cond_1

    .line 856
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/jline/builtins/Less;->display(ZLjava/lang/Integer;)Z

    goto :goto_3

    .line 843
    :pswitch_0
    iget-object v5, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 844
    .local v5, "name":Ljava/lang/String;
    invoke-direct {p0, v5}, Lorg/jline/builtins/Less;->addSource(Ljava/lang/String;)V

    .line 846
    :try_start_0
    invoke-virtual {p0}, Lorg/jline/builtins/Less;->openSource()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    goto :goto_2

    .line 847
    :catch_0
    move-exception v6

    .line 848
    .local v6, "exp":Ljava/lang/Exception;
    invoke-virtual {v1, v5}, Lorg/jline/builtins/Less$SavedSourcePositions;->restore(Ljava/lang/String;)V

    .line 850
    .end local v6    # "exp":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 861
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "op":Lorg/jline/builtins/Less$Operation;
    :goto_3
    goto :goto_1

    .line 858
    .restart local v8    # "op":Lorg/jline/builtins/Less$Operation;
    :cond_1
    iget-object v6, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 859
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch
.end method

.method private addSource(Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 810
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    new-instance v1, Lorg/jline/builtins/Source$URLSource;

    iget-object v2, p0, Lorg/jline/builtins/Less;->currentDir:Ljava/nio/file/Path;

    invoke-interface {v2, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/jline/builtins/Source$URLSource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 806
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/Less;->currentDir:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lorg/jline/builtins/Commands;->findFiles(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    .line 807
    .local v1, "p":Ljava/nio/file/Path;
    iget-object v2, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    new-instance v3, Lorg/jline/builtins/Source$URLSource;

    invoke-interface {v1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/jline/builtins/Source$URLSource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    .end local v1    # "p":Ljava/nio/file/Path;
    goto :goto_1

    :cond_2
    nop

    .line 812
    :goto_2
    iget-object v0, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    .line 813
    return-void
.end method

.method private bindKeys(Lorg/jline/keymap/KeyMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/builtins/Less$Operation;",
            ">;)V"
        }
    .end annotation

    .line 1441
    .local p1, "map":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Less$Operation;>;"
    sget-object v0, Lorg/jline/builtins/Less$Operation;->HELP:Lorg/jline/builtins/Less$Operation;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    const-string v3, "h"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "H"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1442
    sget-object v0, Lorg/jline/builtins/Less$Operation;->EXIT:Lorg/jline/builtins/Less$Operation;

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/CharSequence;

    const-string v6, "q"

    aput-object v6, v3, v4

    const-string v6, ":q"

    aput-object v6, v3, v5

    const-string v6, "Q"

    aput-object v6, v3, v1

    const-string v6, ":Q"

    const/4 v7, 0x3

    aput-object v6, v3, v7

    const-string v6, "ZZ"

    const/4 v8, 0x4

    aput-object v6, v3, v8

    invoke-virtual {p1, v0, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1443
    sget-object v0, Lorg/jline/builtins/Less$Operation;->FORWARD_ONE_LINE:Lorg/jline/builtins/Less$Operation;

    const/4 v3, 0x6

    new-array v6, v3, [Ljava/lang/CharSequence;

    const-string v9, "e"

    aput-object v9, v6, v4

    const/16 v9, 0x45

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v5

    const-string v9, "j"

    aput-object v9, v6, v1

    const/16 v9, 0x4e

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    const-string v10, "\r"

    aput-object v10, v6, v8

    iget-object v10, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v11, Lorg/jline/utils/InfoCmp$Capability;->key_down:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v10, v11}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v2

    invoke-virtual {p1, v0, v6}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1444
    sget-object v0, Lorg/jline/builtins/Less$Operation;->BACKWARD_ONE_LINE:Lorg/jline/builtins/Less$Operation;

    new-array v3, v3, [Ljava/lang/CharSequence;

    const-string v6, "y"

    aput-object v6, v3, v4

    const/16 v6, 0x59

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "k"

    aput-object v6, v3, v1

    const/16 v6, 0x4b

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v7

    const/16 v6, 0x50

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    iget-object v6, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v10, Lorg/jline/utils/InfoCmp$Capability;->key_up:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v6, v10}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {p1, v0, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1445
    sget-object v0, Lorg/jline/builtins/Less$Operation;->FORWARD_ONE_WINDOW_OR_LINES:Lorg/jline/builtins/Less$Operation;

    new-array v2, v2, [Ljava/lang/CharSequence;

    const-string v3, "f"

    aput-object v3, v2, v4

    const/16 v3, 0x46

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x56

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const-string v6, " "

    aput-object v6, v2, v7

    iget-object v6, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v10, Lorg/jline/utils/InfoCmp$Capability;->key_npage:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v6, v10}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v8

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1446
    sget-object v0, Lorg/jline/builtins/Less$Operation;->BACKWARD_ONE_WINDOW_OR_LINES:Lorg/jline/builtins/Less$Operation;

    new-array v2, v8, [Ljava/lang/CharSequence;

    const-string v6, "b"

    aput-object v6, v2, v4

    const/16 v6, 0x42

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v6, 0x76

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    iget-object v6, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->key_ppage:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v6, v8}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v7

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1447
    sget-object v0, Lorg/jline/builtins/Less$Operation;->FORWARD_ONE_WINDOW_AND_SET:Lorg/jline/builtins/Less$Operation;

    const-string v2, "z"

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1448
    sget-object v0, Lorg/jline/builtins/Less$Operation;->BACKWARD_ONE_WINDOW_AND_SET:Lorg/jline/builtins/Less$Operation;

    const-string v2, "w"

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1449
    sget-object v0, Lorg/jline/builtins/Less$Operation;->FORWARD_ONE_WINDOW_NO_STOP:Lorg/jline/builtins/Less$Operation;

    const/16 v2, 0x20

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1450
    sget-object v0, Lorg/jline/builtins/Less$Operation;->FORWARD_HALF_WINDOW_AND_SET:Lorg/jline/builtins/Less$Operation;

    new-array v2, v1, [Ljava/lang/CharSequence;

    const-string v6, "d"

    aput-object v6, v2, v4

    const/16 v6, 0x44

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1451
    sget-object v0, Lorg/jline/builtins/Less$Operation;->BACKWARD_HALF_WINDOW_AND_SET:Lorg/jline/builtins/Less$Operation;

    new-array v2, v1, [Ljava/lang/CharSequence;

    const-string v6, "u"

    aput-object v6, v2, v4

    const/16 v6, 0x55

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1452
    sget-object v0, Lorg/jline/builtins/Less$Operation;->RIGHT_ONE_HALF_SCREEN:Lorg/jline/builtins/Less$Operation;

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/16 v6, 0x29

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    iget-object v6, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v6, v8}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1453
    sget-object v0, Lorg/jline/builtins/Less$Operation;->LEFT_ONE_HALF_SCREEN:Lorg/jline/builtins/Less$Operation;

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/16 v6, 0x28

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    iget-object v6, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v6, v8}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1454
    sget-object v0, Lorg/jline/builtins/Less$Operation;->FORWARD_FOREVER:Lorg/jline/builtins/Less$Operation;

    const-string v2, "F"

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1455
    sget-object v0, Lorg/jline/builtins/Less$Operation;->REPAINT:Lorg/jline/builtins/Less$Operation;

    new-array v2, v7, [Ljava/lang/CharSequence;

    const-string v6, "r"

    aput-object v6, v2, v4

    const/16 v6, 0x52

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v6, 0x4c

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1456
    sget-object v0, Lorg/jline/builtins/Less$Operation;->REPAINT_AND_DISCARD:Lorg/jline/builtins/Less$Operation;

    const-string v2, "R"

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1457
    sget-object v0, Lorg/jline/builtins/Less$Operation;->REPEAT_SEARCH_FORWARD:Lorg/jline/builtins/Less$Operation;

    const-string v2, "n"

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1458
    sget-object v0, Lorg/jline/builtins/Less$Operation;->REPEAT_SEARCH_BACKWARD:Lorg/jline/builtins/Less$Operation;

    const-string v2, "N"

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1459
    sget-object v0, Lorg/jline/builtins/Less$Operation;->REPEAT_SEARCH_FORWARD_SPAN_FILES:Lorg/jline/builtins/Less$Operation;

    const/16 v2, 0x6e

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1460
    sget-object v0, Lorg/jline/builtins/Less$Operation;->REPEAT_SEARCH_BACKWARD_SPAN_FILES:Lorg/jline/builtins/Less$Operation;

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1461
    sget-object v0, Lorg/jline/builtins/Less$Operation;->UNDO_SEARCH:Lorg/jline/builtins/Less$Operation;

    const/16 v2, 0x75

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1462
    sget-object v0, Lorg/jline/builtins/Less$Operation;->GO_TO_FIRST_LINE_OR_N:Lorg/jline/builtins/Less$Operation;

    new-array v2, v7, [Ljava/lang/CharSequence;

    const-string v6, "g"

    aput-object v6, v2, v4

    const-string v6, "<"

    aput-object v6, v2, v5

    const/16 v6, 0x3c

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1463
    sget-object v0, Lorg/jline/builtins/Less$Operation;->GO_TO_LAST_LINE_OR_N:Lorg/jline/builtins/Less$Operation;

    new-array v2, v7, [Ljava/lang/CharSequence;

    const-string v6, "G"

    aput-object v6, v2, v4

    const-string v6, ">"

    aput-object v6, v2, v5

    const/16 v6, 0x3e

    invoke-static {v6}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1464
    sget-object v0, Lorg/jline/builtins/Less$Operation;->HOME:Lorg/jline/builtins/Less$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->key_home:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v6}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1465
    sget-object v0, Lorg/jline/builtins/Less$Operation;->END:Lorg/jline/builtins/Less$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->key_end:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v6}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1466
    sget-object v0, Lorg/jline/builtins/Less$Operation;->ADD_FILE:Lorg/jline/builtins/Less$Operation;

    new-array v2, v1, [Ljava/lang/CharSequence;

    const-string v6, ":e"

    aput-object v6, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x58

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1467
    sget-object v0, Lorg/jline/builtins/Less$Operation;->NEXT_FILE:Lorg/jline/builtins/Less$Operation;

    const-string v2, ":n"

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1468
    sget-object v0, Lorg/jline/builtins/Less$Operation;->PREV_FILE:Lorg/jline/builtins/Less$Operation;

    const-string v2, ":p"

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1469
    sget-object v0, Lorg/jline/builtins/Less$Operation;->GOTO_FILE:Lorg/jline/builtins/Less$Operation;

    const-string v2, ":x"

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1470
    sget-object v0, Lorg/jline/builtins/Less$Operation;->INFO_FILE:Lorg/jline/builtins/Less$Operation;

    new-array v2, v7, [Ljava/lang/CharSequence;

    const-string v3, "="

    aput-object v3, v2, v4

    const-string v3, ":f"

    aput-object v3, v2, v5

    const/16 v3, 0x47

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 1471
    sget-object v0, Lorg/jline/builtins/Less$Operation;->DELETE_FILE:Lorg/jline/builtins/Less$Operation;

    const-string v1, ":d"

    invoke-virtual {p1, v0, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1472
    sget-object v0, Lorg/jline/builtins/Less$Operation;->BACKSPACE:Lorg/jline/builtins/Less$Operation;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1473
    const-string v0, "-/0123456789?&"

    invoke-virtual {v0}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/jline/builtins/Less$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/jline/builtins/Less$$ExternalSyntheticLambda4;-><init>(Lorg/jline/keymap/KeyMap;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 1474
    return-void
.end method

.method private bof()V
    .locals 3

    .line 1258
    iget-boolean v0, p0, Lorg/jline/builtins/Less;->quiet:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jline/builtins/Less;->veryQuiet:Z

    if-nez v0, :cond_0

    .line 1259
    iget-object v0, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->bell:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 1260
    iget-object v0, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1262
    :cond_0
    return-void
.end method

.method public static checkInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1434
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1435
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1438
    return-void

    .line 1436
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private doTabs(Ljava/lang/String;)V
    .locals 7
    .param p1, "val"    # Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Less;->tabs:Ljava/util/List;

    .line 284
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 286
    .local v3, "s":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lorg/jline/builtins/Less;->tabs:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_1

    .line 287
    :catch_0
    move-exception v4

    .line 288
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Less config: tabs option error parsing number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jline/builtins/Less;->errorMessage:Ljava/lang/String;

    .line 284
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method private eof()V
    .locals 3

    .line 1245
    iget v0, p0, Lorg/jline/builtins/Less;->nbEof:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jline/builtins/Less;->nbEof:I

    .line 1246
    iget v0, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(END) - Next: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    iget v2, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Source;

    invoke-interface {v1}, Lorg/jline/builtins/Source;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    goto :goto_0

    .line 1249
    :cond_0
    const-string v0, "(END)"

    iput-object v0, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 1251
    :goto_0
    iget-boolean v0, p0, Lorg/jline/builtins/Less;->quiet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jline/builtins/Less;->veryQuiet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jline/builtins/Less;->quitAtFirstEof:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jline/builtins/Less;->quitAtSecondEof:Z

    if-nez v0, :cond_1

    .line 1252
    iget-object v0, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->bell:Lorg/jline/utils/InfoCmp$Capability;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 1253
    iget-object v0, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1255
    :cond_1
    return-void
.end method

.method private getPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 1400
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jline/builtins/Less;->getPattern(Z)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private getPattern(Z)Ljava/util/regex/Pattern;
    .locals 6
    .param p1, "doDisplayPattern"    # Z

    .line 1404
    const/4 v0, 0x0

    .line 1405
    .local v0, "compiled":Ljava/util/regex/Pattern;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/jline/builtins/Less;->displayPattern:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jline/builtins/Less;->pattern:Ljava/lang/String;

    .line 1406
    .local v1, "_pattern":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_4

    .line 1407
    iget-boolean v2, p0, Lorg/jline/builtins/Less;->ignoreCaseAlways:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/jline/builtins/Less;->ignoreCaseCond:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 1408
    .local v2, "insensitive":Z
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_3

    const/16 v3, 0x42

    :cond_3
    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1410
    .end local v2    # "insensitive":Z
    :cond_4
    return-object v0
.end method

.method private help()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    new-instance v0, Lorg/jline/builtins/Less$SavedSourcePositions;

    invoke-direct {v0, p0}, Lorg/jline/builtins/Less$SavedSourcePositions;-><init>(Lorg/jline/builtins/Less;)V

    .line 963
    .local v0, "ssp":Lorg/jline/builtins/Less$SavedSourcePositions;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jline/builtins/Less;->printLineNumbers:Z

    .line 964
    iput v1, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    .line 966
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/jline/builtins/Less;->openSource()V

    .line 967
    invoke-virtual {p0, v1}, Lorg/jline/builtins/Less;->display(Z)Z

    .line 970
    :cond_0
    invoke-static {}, Lorg/jline/builtins/Less;->checkInterrupted()V

    .line 971
    iget-object v3, p0, Lorg/jline/builtins/Less;->bindingReader:Lorg/jline/keymap/BindingReader;

    iget-object v4, p0, Lorg/jline/builtins/Less;->keys:Lorg/jline/keymap/KeyMap;

    invoke-virtual {v3, v4, v2, v1}, Lorg/jline/keymap/BindingReader;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/Less$Operation;

    .line 972
    .local v3, "op":Lorg/jline/builtins/Less$Operation;
    if-eqz v3, :cond_1

    .line 973
    sget-object v4, Lorg/jline/builtins/Less$1;->$SwitchMap$org$jline$builtins$Less$Operation:[I

    invoke-virtual {v3}, Lorg/jline/builtins/Less$Operation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 978
    :sswitch_0
    iget v4, p0, Lorg/jline/builtins/Less;->window:I

    invoke-virtual {p0, v4}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/builtins/Less;->moveBackward(I)V

    goto :goto_0

    .line 975
    :sswitch_1
    iget v4, p0, Lorg/jline/builtins/Less;->window:I

    invoke-virtual {p0, v4}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/builtins/Less;->moveForward(I)V

    .line 982
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lorg/jline/builtins/Less;->display(Z)Z

    .line 983
    sget-object v4, Lorg/jline/builtins/Less$Operation;->EXIT:Lorg/jline/builtins/Less$Operation;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_0

    .end local v3    # "op":Lorg/jline/builtins/Less$Operation;
    goto :goto_1

    .line 987
    :catchall_0
    move-exception v1

    invoke-virtual {v0, v2}, Lorg/jline/builtins/Less$SavedSourcePositions;->restore(Ljava/lang/String;)V

    .line 988
    throw v1

    .line 984
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 987
    :goto_1
    invoke-virtual {v0, v2}, Lorg/jline/builtins/Less$SavedSourcePositions;->restore(Ljava/lang/String;)V

    .line 988
    nop

    .line 989
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic lambda$bindKeys$3(Lorg/jline/keymap/KeyMap;I)V
    .locals 2
    .param p0, "map"    # Lorg/jline/keymap/KeyMap;
    .param p1, "c"    # I

    .line 1473
    sget-object v0, Lorg/jline/builtins/Less$Operation;->CHAR:Lorg/jline/builtins/Less$Operation;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 1
    .param p0, "pathMatcher"    # Ljava/nio/file/PathMatcher;
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "f"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 160
    invoke-interface {p0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseConfig$1(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 1
    .param p0, "pathMatcher"    # Ljava/nio/file/PathMatcher;
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "f"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 231
    invoke-interface {p0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method private moveToMatch(ZZ)V
    .locals 0
    .param p1, "forward"    # Z
    .param p2, "spanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    if-eqz p1, :cond_0

    .line 679
    invoke-direct {p0, p2}, Lorg/jline/builtins/Less;->moveToNextMatch(Z)V

    goto :goto_0

    .line 681
    :cond_0
    invoke-direct {p0, p2}, Lorg/jline/builtins/Less;->moveToPreviousMatch(Z)V

    .line 683
    :goto_0
    return-void
.end method

.method private moveToNextMatch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1068
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jline/builtins/Less;->moveToNextMatch(Z)V

    .line 1069
    return-void
.end method

.method private moveToNextMatch(Z)V
    .locals 6
    .param p1, "spanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    invoke-direct {p0}, Lorg/jline/builtins/Less;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1073
    .local v0, "compiled":Ljava/util/regex/Pattern;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jline/builtins/Less;->getPattern(Z)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1074
    .local v2, "dpCompiled":Ljava/util/regex/Pattern;
    if-eqz v0, :cond_3

    .line 1075
    iget v3, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    add-int/2addr v3, v1

    .line 1076
    .local v3, "lineNumber":I
    :goto_0
    invoke-virtual {p0, v3}, Lorg/jline/builtins/Less;->getLine(I)Lorg/jline/utils/AttributedString;

    move-result-object v4

    .line 1077
    .local v4, "line":Lorg/jline/utils/AttributedString;
    if-nez v4, :cond_0

    .line 1078
    goto :goto_2

    .line 1079
    :cond_0
    invoke-direct {p0, v4, v2}, Lorg/jline/builtins/Less;->toBeDisplayed(Lorg/jline/utils/AttributedString;Ljava/util/regex/Pattern;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1080
    goto :goto_1

    .line 1081
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1082
    iget-object v1, p0, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    invoke-virtual {v1}, Lorg/jline/utils/Display;->clear()V

    .line 1083
    iput v3, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 1084
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/builtins/Less;->offsetInLine:I

    .line 1085
    return-void

    .line 1075
    .end local v4    # "line":Lorg/jline/utils/AttributedString;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1089
    .end local v3    # "lineNumber":I
    :cond_3
    :goto_2
    const-string v3, "Pattern not found"

    if-eqz p1, :cond_5

    .line 1090
    iget v4, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    iget-object v5, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v4, v5, :cond_4

    .line 1091
    new-instance v3, Lorg/jline/builtins/Less$SavedSourcePositions;

    invoke-direct {v3, p0}, Lorg/jline/builtins/Less$SavedSourcePositions;-><init>(Lorg/jline/builtins/Less;)V

    .line 1092
    .local v3, "ssp":Lorg/jline/builtins/Less$SavedSourcePositions;
    iget-object v4, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    iget v5, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    add-int/2addr v5, v1

    iput v5, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/builtins/Source;

    invoke-interface {v4}, Lorg/jline/builtins/Source;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1094
    .local v4, "newSource":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/jline/builtins/Less;->openSource()V

    .line 1095
    invoke-direct {p0, v1}, Lorg/jline/builtins/Less;->moveToNextMatch(Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    goto :goto_3

    .line 1096
    :catch_0
    move-exception v1

    .line 1097
    .local v1, "exp":Ljava/io/FileNotFoundException;
    invoke-virtual {v3, v4}, Lorg/jline/builtins/Less$SavedSourcePositions;->restore(Ljava/lang/String;)V

    .line 1099
    .end local v1    # "exp":Ljava/io/FileNotFoundException;
    .end local v3    # "ssp":Lorg/jline/builtins/Less$SavedSourcePositions;
    .end local v4    # "newSource":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 1100
    :cond_4
    iput-object v3, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    goto :goto_4

    .line 1103
    :cond_5
    iput-object v3, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 1105
    :goto_4
    return-void
.end method

.method private moveToPreviousMatch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jline/builtins/Less;->moveToPreviousMatch(Z)V

    .line 1109
    return-void
.end method

.method private moveToPreviousMatch(Z)V
    .locals 7
    .param p1, "spanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1112
    invoke-direct {p0}, Lorg/jline/builtins/Less;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1113
    .local v0, "compiled":Ljava/util/regex/Pattern;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/jline/builtins/Less;->getPattern(Z)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1114
    .local v2, "dpCompiled":Ljava/util/regex/Pattern;
    if-eqz v0, :cond_3

    .line 1115
    iget v3, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    sub-int/2addr v3, v1

    .local v3, "lineNumber":I
    :goto_0
    iget v4, p0, Lorg/jline/builtins/Less;->firstLineInMemory:I

    if-lt v3, v4, :cond_3

    .line 1116
    invoke-virtual {p0, v3}, Lorg/jline/builtins/Less;->getLine(I)Lorg/jline/utils/AttributedString;

    move-result-object v4

    .line 1117
    .local v4, "line":Lorg/jline/utils/AttributedString;
    if-nez v4, :cond_0

    .line 1118
    goto :goto_2

    .line 1119
    :cond_0
    invoke-direct {p0, v4, v2}, Lorg/jline/builtins/Less;->toBeDisplayed(Lorg/jline/utils/AttributedString;Ljava/util/regex/Pattern;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1120
    goto :goto_1

    .line 1121
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1122
    iget-object v1, p0, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    invoke-virtual {v1}, Lorg/jline/utils/Display;->clear()V

    .line 1123
    iput v3, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 1124
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/builtins/Less;->offsetInLine:I

    .line 1125
    return-void

    .line 1115
    .end local v4    # "line":Lorg/jline/utils/AttributedString;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1129
    .end local v3    # "lineNumber":I
    :cond_3
    :goto_2
    const-string v3, "Pattern not found"

    if-eqz p1, :cond_5

    .line 1130
    iget v4, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    if-le v4, v1, :cond_4

    .line 1131
    new-instance v3, Lorg/jline/builtins/Less$SavedSourcePositions;

    const/4 v4, -0x1

    invoke-direct {v3, p0, v4}, Lorg/jline/builtins/Less$SavedSourcePositions;-><init>(Lorg/jline/builtins/Less;I)V

    .line 1132
    .local v3, "ssp":Lorg/jline/builtins/Less$SavedSourcePositions;
    iget-object v4, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    iget v5, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    sub-int/2addr v5, v1

    iput v5, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jline/builtins/Source;

    invoke-interface {v4}, Lorg/jline/builtins/Source;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1134
    .local v4, "newSource":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/jline/builtins/Less;->openSource()V

    .line 1135
    iget-object v5, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    iget v6, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jline/builtins/Source;

    invoke-interface {v5}, Lorg/jline/builtins/Source;->lines()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 1136
    invoke-direct {p0, v1}, Lorg/jline/builtins/Less;->moveToPreviousMatch(Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    goto :goto_3

    .line 1137
    :catch_0
    move-exception v1

    .line 1138
    .local v1, "exp":Ljava/io/FileNotFoundException;
    invoke-virtual {v3, v4}, Lorg/jline/builtins/Less$SavedSourcePositions;->restore(Ljava/lang/String;)V

    .line 1140
    .end local v1    # "exp":Ljava/io/FileNotFoundException;
    .end local v3    # "ssp":Lorg/jline/builtins/Less$SavedSourcePositions;
    .end local v4    # "newSource":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 1141
    :cond_4
    iput-object v3, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    goto :goto_4

    .line 1144
    :cond_5
    iput-object v3, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 1146
    :goto_4
    return-void
.end method

.method private nextLine2display(ILjava/util/regex/Pattern;)Lorg/jline/builtins/Less$Pair;
    .locals 3
    .param p1, "line"    # I
    .param p2, "dpCompiled"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/regex/Pattern;",
            ")",
            "Lorg/jline/builtins/Less$Pair<",
            "Ljava/lang/Integer;",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1278
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "line":I
    .local v0, "line":I
    invoke-virtual {p0, p1}, Lorg/jline/builtins/Less;->getLine(I)Lorg/jline/utils/AttributedString;

    move-result-object p1

    .line 1279
    .local p1, "curLine":Lorg/jline/utils/AttributedString;
    invoke-direct {p0, p1, p2}, Lorg/jline/builtins/Less;->toBeDisplayed(Lorg/jline/utils/AttributedString;Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    new-instance v1, Lorg/jline/builtins/Less$Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/jline/builtins/Less$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 1279
    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private parseConfig(Ljava/nio/file/Path;)V
    .locals 10
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 223
    .local v0, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "line":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_16

    .line 225
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 227
    invoke-static {v1}, Lorg/jline/builtins/Nano$Parser;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 228
    .local v2, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "include"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 229
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    iget-object v4, p0, Lorg/jline/builtins/Less;->syntaxFiles:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v5, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 230
    :cond_1
    :goto_1
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "glob:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v4

    .line 231
    .local v4, "pathMatcher":Ljava/nio/file/PathMatcher;
    new-instance v6, Ljava/io/File;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    const v6, 0x7fffffff

    new-instance v7, Lorg/jline/builtins/Less$$ExternalSyntheticLambda3;

    invoke-direct {v7, v4}, Lorg/jline/builtins/Less$$ExternalSyntheticLambda3;-><init>(Ljava/nio/file/PathMatcher;)V

    new-array v3, v3, [Ljava/nio/file/FileVisitOption;

    invoke-static {v5, v6, v7, v3}, Ljava/nio/file/Files;->find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v3

    iget-object v5, p0, Lorg/jline/builtins/Less;->syntaxFiles:Ljava/util/List;

    .line 232
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/jline/builtins/Less$$ExternalSyntheticLambda2;

    invoke-direct {v6, v5}, Lorg/jline/builtins/Less$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 233
    .end local v4    # "pathMatcher":Ljava/nio/file/PathMatcher;
    goto/16 :goto_7

    .line 236
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const-string v6, "Less config: Unknown or unsupported configuration option "

    const/4 v7, 0x2

    const-string v8, "set"

    if-ne v4, v7, :cond_f

    .line 237
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, "unset"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 238
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 239
    .local v4, "option":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 240
    .local v3, "val":Z
    const-string v5, "QUIT-AT-EOF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 241
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->quitAtFirstEof:Z

    goto/16 :goto_4

    .line 242
    :cond_4
    const-string v5, "quit-at-eof"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 243
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->quitAtSecondEof:Z

    goto/16 :goto_4

    .line 244
    :cond_5
    const-string v5, "quit-if-one-screen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 245
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->quitIfOneScreen:Z

    goto/16 :goto_4

    .line 246
    :cond_6
    const-string v5, "quiet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "silent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    .line 248
    :cond_7
    const-string v5, "QUIET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "SILENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    .line 250
    :cond_8
    const-string v5, "chop-long-lines"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 251
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->chopLongLines:Z

    goto :goto_4

    .line 252
    :cond_9
    const-string v5, "IGNORE-CASE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 253
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->ignoreCaseAlways:Z

    goto :goto_4

    .line 254
    :cond_a
    const-string v5, "ignore-case"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 255
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->ignoreCaseCond:Z

    goto :goto_4

    .line 256
    :cond_b
    const-string v5, "LINE-NUMBERS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 257
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->printLineNumbers:Z

    goto :goto_4

    .line 259
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jline/builtins/Less;->errorMessage:Ljava/lang/String;

    goto :goto_4

    .line 249
    :cond_d
    :goto_2
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->veryQuiet:Z

    goto :goto_4

    .line 247
    :cond_e
    :goto_3
    iput-boolean v3, p0, Lorg/jline/builtins/Less;->quiet:Z

    .line 261
    .end local v3    # "val":Z
    .end local v4    # "option":Ljava/lang/String;
    :goto_4
    goto/16 :goto_7

    :cond_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x3

    if-ne v4, v9, :cond_12

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 262
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 263
    .local v3, "option":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 264
    .local v4, "val":Ljava/lang/String;
    const-string v5, "tabs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 265
    invoke-direct {p0, v4}, Lorg/jline/builtins/Less;->doTabs(Ljava/lang/String;)V

    goto :goto_5

    .line 266
    :cond_10
    const-string v5, "historylog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 267
    iput-object v4, p0, Lorg/jline/builtins/Less;->historyLog:Ljava/lang/String;

    goto :goto_5

    .line 269
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jline/builtins/Less;->errorMessage:Ljava/lang/String;

    .line 271
    .end local v3    # "option":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :goto_5
    goto :goto_7

    :cond_12
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "bind"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "unbind"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_6

    .line 274
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Less config: Bad configuration \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/builtins/Less;->errorMessage:Ljava/lang/String;

    goto :goto_7

    .line 272
    :cond_14
    :goto_6
    const-string v3, "Less config: Key bindings can not be changed!"

    iput-object v3, p0, Lorg/jline/builtins/Less;->errorMessage:Ljava/lang/String;

    .line 277
    .end local v2    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    :goto_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 279
    :cond_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 280
    return-void
.end method

.method private prevLine2display(ILjava/util/regex/Pattern;)Lorg/jline/builtins/Less$Pair;
    .locals 3
    .param p1, "line"    # I
    .param p2, "dpCompiled"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/regex/Pattern;",
            ")",
            "Lorg/jline/builtins/Less$Pair<",
            "Ljava/lang/Integer;",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1286
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .end local p1    # "line":I
    .local v0, "line":I
    invoke-virtual {p0, p1}, Lorg/jline/builtins/Less;->getLine(I)Lorg/jline/utils/AttributedString;

    move-result-object p1

    .line 1287
    .local p1, "curLine":Lorg/jline/utils/AttributedString;
    if-lez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/jline/builtins/Less;->toBeDisplayed(Lorg/jline/utils/AttributedString;Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move p1, v0

    goto :goto_0

    .line 1288
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/jline/builtins/Less;->toBeDisplayed(Lorg/jline/utils/AttributedString;Ljava/util/regex/Pattern;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1289
    const/4 p1, 0x0

    .line 1291
    :cond_2
    new-instance v1, Lorg/jline/builtins/Less$Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/jline/builtins/Less$Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1150
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1151
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1152
    .local v2, "c":C
    const/16 v3, 0x1b

    if-ne v2, v3, :cond_0

    .line 1153
    const-string v3, "ESC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1154
    :cond_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 1155
    const/16 v3, 0x5e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x40

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1156
    :cond_1
    const/16 v3, 0x80

    if-ge v2, v3, :cond_2

    .line 1157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1159
    :cond_2
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%03o"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1162
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private search()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 865
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 866
    .local v0, "searchKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Less$Operation;>;"
    sget-object v1, Lorg/jline/builtins/Less$Operation;->INSERT:Lorg/jline/builtins/Less$Operation;

    invoke-virtual {v0, v1}, Lorg/jline/keymap/KeyMap;->setUnicode(Ljava/lang/Object;)V

    .line 867
    const/16 v1, 0x20

    .local v1, "i":C
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 868
    sget-object v2, Lorg/jline/builtins/Less$Operation;->INSERT:Lorg/jline/builtins/Less$Operation;

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 867
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 870
    .end local v1    # "i":C
    :cond_0
    sget-object v1, Lorg/jline/builtins/Less$Operation;->RIGHT:Lorg/jline/builtins/Less$Operation;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v4, v5}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/16 v4, 0x6c

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 871
    sget-object v1, Lorg/jline/builtins/Less$Operation;->LEFT:Lorg/jline/builtins/Less$Operation;

    new-array v3, v2, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v4, v7}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x68

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 872
    sget-object v1, Lorg/jline/builtins/Less$Operation;->NEXT_WORD:Lorg/jline/builtins/Less$Operation;

    const/16 v3, 0x77

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 873
    sget-object v1, Lorg/jline/builtins/Less$Operation;->PREV_WORD:Lorg/jline/builtins/Less$Operation;

    const/16 v3, 0x62

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 874
    sget-object v1, Lorg/jline/builtins/Less$Operation;->HOME:Lorg/jline/builtins/Less$Operation;

    new-array v3, v2, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->key_home:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v4, v7}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x30

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 875
    sget-object v1, Lorg/jline/builtins/Less$Operation;->END:Lorg/jline/builtins/Less$Operation;

    new-array v3, v2, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->key_end:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v4, v7}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x24

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 876
    sget-object v1, Lorg/jline/builtins/Less$Operation;->BACKSPACE:Lorg/jline/builtins/Less$Operation;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 877
    sget-object v1, Lorg/jline/builtins/Less$Operation;->DELETE:Lorg/jline/builtins/Less$Operation;

    const/16 v3, 0x78

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 878
    sget-object v1, Lorg/jline/builtins/Less$Operation;->DELETE_WORD:Lorg/jline/builtins/Less$Operation;

    const/16 v3, 0x58

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 879
    sget-object v1, Lorg/jline/builtins/Less$Operation;->DELETE_LINE:Lorg/jline/builtins/Less$Operation;

    const/16 v3, 0x55

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 880
    sget-object v1, Lorg/jline/builtins/Less$Operation;->UP:Lorg/jline/builtins/Less$Operation;

    new-array v3, v2, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->key_up:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v4, v7}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x6b

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 881
    sget-object v1, Lorg/jline/builtins/Less$Operation;->DOWN:Lorg/jline/builtins/Less$Operation;

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v4, Lorg/jline/utils/InfoCmp$Capability;->key_down:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v3, v4}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0x6a

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 882
    sget-object v1, Lorg/jline/builtins/Less$Operation;->ACCEPT:Lorg/jline/builtins/Less$Operation;

    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 884
    const/4 v1, 0x1

    .line 885
    .local v1, "forward":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 886
    iget-object v3, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 887
    .local v3, "curPos":I
    move v4, v3

    .line 888
    .local v4, "begPos":I
    iget-object v7, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 889
    .local v7, "type":C
    iget-object v8, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 890
    .local v8, "currentBuffer":Ljava/lang/String;
    new-instance v9, Lorg/jline/builtins/Less$LineEditor;

    invoke-direct {v9, p0, v4}, Lorg/jline/builtins/Less$LineEditor;-><init>(Lorg/jline/builtins/Less;I)V

    .line 892
    .local v9, "lineEditor":Lorg/jline/builtins/Less$LineEditor;
    :goto_1
    invoke-static {}, Lorg/jline/builtins/Less;->checkInterrupted()V

    .line 894
    sget-object v10, Lorg/jline/builtins/Less$1;->$SwitchMap$org$jline$builtins$Less$Operation:[I

    iget-object v11, p0, Lorg/jline/builtins/Less;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v11, v0}, Lorg/jline/keymap/BindingReader;->readBinding(Lorg/jline/keymap/KeyMap;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jline/builtins/Less$Operation;

    move-object v12, v11

    .local v12, "op":Lorg/jline/builtins/Less$Operation;
    invoke-virtual {v11}, Lorg/jline/builtins/Less$Operation;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 948
    invoke-virtual {v9, v12, v3}, Lorg/jline/builtins/Less$LineEditor;->editBuffer(Lorg/jline/builtins/Less$Operation;I)I

    move-result v3

    .line 949
    iget-object v10, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7

    .line 902
    :pswitch_0
    iget-object v10, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 903
    iget-object v10, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 904
    iget-object v10, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    iget-object v11, p0, Lorg/jline/builtins/Less;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/jline/builtins/Nano$PatternHistory;->down(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    iget-object v10, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 906
    goto/16 :goto_7

    .line 896
    :pswitch_1
    iget-object v10, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 897
    iget-object v10, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 898
    iget-object v10, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    iget-object v11, p0, Lorg/jline/builtins/Less;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/jline/builtins/Nano$PatternHistory;->up(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    iget-object v10, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 900
    goto/16 :goto_7

    .line 909
    :pswitch_2
    const/16 v10, 0x26

    :try_start_0
    iget-object v11, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 910
    .local v11, "_pattern":Ljava/lang/String;
    if-ne v7, v10, :cond_2

    .line 911
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    move-object v13, v11

    goto :goto_2

    :cond_1
    move-object v13, v2

    :goto_2
    iput-object v13, p0, Lorg/jline/builtins/Less;->displayPattern:Ljava/lang/String;

    .line 912
    invoke-direct {p0, v6}, Lorg/jline/builtins/Less;->getPattern(Z)Ljava/util/regex/Pattern;

    goto :goto_4

    .line 914
    :cond_2
    iput-object v11, p0, Lorg/jline/builtins/Less;->pattern:Ljava/lang/String;

    .line 915
    invoke-direct {p0}, Lorg/jline/builtins/Less;->getPattern()Ljava/util/regex/Pattern;

    .line 916
    const/16 v13, 0x2f

    if-ne v7, v13, :cond_3

    .line 917
    invoke-direct {p0}, Lorg/jline/builtins/Less;->moveToNextMatch()V

    goto :goto_4

    .line 919
    :cond_3
    iget-object v13, p0, Lorg/jline/builtins/Less;->lines:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    iget v14, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    sub-int/2addr v13, v14

    iget-object v14, p0, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v14}, Lorg/jline/terminal/Size;->getRows()I

    move-result v14

    if-gt v13, v14, :cond_4

    .line 920
    iget-object v6, p0, Lorg/jline/builtins/Less;->lines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    goto :goto_3

    .line 922
    :cond_4
    iget-object v13, p0, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v13}, Lorg/jline/terminal/Size;->getRows()I

    move-result v13

    sub-int/2addr v13, v6

    invoke-virtual {p0, v13}, Lorg/jline/builtins/Less;->moveForward(I)V

    .line 924
    :goto_3
    invoke-direct {p0}, Lorg/jline/builtins/Less;->moveToPreviousMatch()V

    .line 925
    const/4 v1, 0x0

    .line 928
    :goto_4
    iget-object v6, p0, Lorg/jline/builtins/Less;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v6, v11}, Lorg/jline/builtins/Nano$PatternHistory;->add(Ljava/lang/String;)V

    .line 929
    iget-object v6, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    .end local v11    # "_pattern":Ljava/lang/String;
    goto :goto_6

    .line 930
    :catch_0
    move-exception v6

    .line 931
    .local v6, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual {v6}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 932
    .local v11, "str":Ljava/lang/String;
    const/16 v13, 0xa

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-lez v14, :cond_5

    .line 933
    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v11, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 935
    :cond_5
    if-ne v7, v10, :cond_6

    .line 936
    iput-object v2, p0, Lorg/jline/builtins/Less;->displayPattern:Ljava/lang/String;

    goto :goto_5

    .line 938
    :cond_6
    iput-object v2, p0, Lorg/jline/builtins/Less;->pattern:Ljava/lang/String;

    .line 940
    :goto_5
    iget-object v10, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 941
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid pattern: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " (Press a key)"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 942
    invoke-virtual {p0, v5}, Lorg/jline/builtins/Less;->display(Z)Z

    .line 943
    iget-object v5, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v5}, Lorg/jline/terminal/Terminal;->reader()Lorg/jline/utils/NonBlockingReader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jline/utils/NonBlockingReader;->read()I

    .line 944
    iput-object v2, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 946
    .end local v6    # "e":Ljava/util/regex/PatternSyntaxException;
    .end local v11    # "str":Ljava/lang/String;
    :goto_6
    return v1

    .line 952
    :goto_7
    if-ge v3, v4, :cond_7

    .line 953
    iget-object v2, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 954
    return v1

    .line 956
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Lorg/jline/builtins/Less;->display(ZLjava/lang/Integer;)Z

    .line 958
    .end local v12    # "op":Lorg/jline/builtins/Less$Operation;
    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toBeDisplayed(Lorg/jline/utils/AttributedString;Ljava/util/regex/Pattern;)Z
    .locals 1
    .param p1, "curLine"    # Lorg/jline/utils/AttributedString;
    .param p2, "dpCompiled"    # Ljava/util/regex/Pattern;

    .line 1295
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget v0, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

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

.method public static usage()[Ljava/lang/String;
    .locals 18

    .line 114
    const-string v0, "less -  file pager"

    const-string v1, "Usage: less [OPTIONS] [FILES]"

    const-string v2, "  -? --help                    Show help"

    const-string v3, "  -e --quit-at-eof             Exit on second EOF"

    const-string v4, "  -E --QUIT-AT-EOF             Exit on EOF"

    const-string v5, "  -F --quit-if-one-screen      Exit if entire file fits on first screen"

    const-string v6, "  -q --quiet --silent          Silent mode"

    const-string v7, "  -Q --QUIET --SILENT          Completely silent"

    const-string v8, "  -S --chop-long-lines         Do not fold long lines"

    const-string v9, "  -i --ignore-case             Search ignores lowercase case"

    const-string v10, "  -I --IGNORE-CASE             Search ignores all case"

    const-string v11, "  -x --tabs=N[,...]            Set tab stops"

    const-string v12, "  -N --LINE-NUMBERS            Display line number for each line"

    const-string v13, "  -Y --syntax=name             The name of the syntax highlighting to use."

    const-string v14, "     --no-init                 Disable terminal initialization"

    const-string v15, "     --no-keypad               Disable keypad handling"

    const-string v16, "     --ignorercfiles           Don\'t look at the system\'s lessrc nor at the user\'s lessrc."

    const-string v17, "  -H --historylog=name         Log search strings to file, so they can be retrieved in later sessions"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized display(Z)Z
    .locals 1
    .param p1, "oneScreen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1299
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jline/builtins/Less;->display(ZLjava/lang/Integer;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1299
    .end local p0    # "this":Lorg/jline/builtins/Less;
    .end local p1    # "oneScreen":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized display(ZLjava/lang/Integer;)Z
    .locals 18
    .param p1, "oneScreen"    # Z
    .param p2, "curPos"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1303
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    .local v0, "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget-object v2, v1, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    iget-boolean v3, v1, Lorg/jline/builtins/Less;->printLineNumbers:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    sub-int/2addr v2, v3

    .line 1305
    .local v2, "width":I
    iget-object v3, v1, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v3}, Lorg/jline/terminal/Size;->getRows()I

    move-result v3

    .line 1306
    .local v3, "height":I
    iget v5, v1, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 1307
    .local v5, "inputLine":I
    const/4 v6, 0x0

    .line 1308
    .local v6, "curLine":Lorg/jline/utils/AttributedString;
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Less;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v7

    .line 1309
    .local v7, "compiled":Ljava/util/regex/Pattern;
    const/4 v8, 0x1

    invoke-direct {v1, v8}, Lorg/jline/builtins/Less;->getPattern(Z)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 1310
    .local v9, "dpCompiled":Ljava/util/regex/Pattern;
    const/4 v10, 0x0

    .line 1311
    .local v10, "fitOnOneScreen":Z
    const/4 v11, 0x0

    .line 1312
    .local v11, "eof":Z
    iget-object v12, v1, Lorg/jline/builtins/Less;->syntaxHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    invoke-virtual {v12}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->reset()V

    .line 1313
    const/4 v12, 0x0

    .local v12, "terminalLine":I
    :goto_1
    add-int/lit8 v13, v3, -0x1

    if-ge v12, v13, :cond_b

    .line 1314
    if-nez v6, :cond_4

    .line 1315
    invoke-direct {v1, v5, v9}, Lorg/jline/builtins/Less;->nextLine2display(ILjava/util/regex/Pattern;)Lorg/jline/builtins/Less$Pair;

    move-result-object v13

    .line 1316
    .local v13, "nextLine":Lorg/jline/builtins/Less$Pair;, "Lorg/jline/builtins/Less$Pair<Ljava/lang/Integer;Lorg/jline/utils/AttributedString;>;"
    invoke-virtual {v13}, Lorg/jline/builtins/Less$Pair;->getU()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v5, v14

    .line 1317
    invoke-virtual {v13}, Lorg/jline/builtins/Less$Pair;->getV()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jline/utils/AttributedString;

    move-object v6, v14

    .line 1318
    if-nez v6, :cond_2

    .line 1319
    if-eqz p1, :cond_1

    .line 1320
    const/4 v10, 0x1

    .line 1321
    goto/16 :goto_6

    .line 1323
    :cond_1
    const/4 v11, 0x1

    .line 1324
    new-instance v14, Lorg/jline/utils/AttributedString;

    const-string v15, "~"

    invoke-direct {v14, v15}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    move-object v6, v14

    goto :goto_2

    .line 1325
    .end local p0    # "this":Lorg/jline/builtins/Less;
    :cond_2
    iget-boolean v14, v1, Lorg/jline/builtins/Less;->highlight:Z

    if-eqz v14, :cond_3

    .line 1326
    iget-object v14, v1, Lorg/jline/builtins/Less;->syntaxHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    invoke-virtual {v14, v6}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->highlight(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedString;

    move-result-object v14

    move-object v6, v14

    .line 1328
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 1329
    sget-object v14, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v14}, Lorg/jline/utils/AttributedStyle;->inverse()Lorg/jline/utils/AttributedStyle;

    move-result-object v14

    invoke-virtual {v6, v7, v14}, Lorg/jline/utils/AttributedString;->styleMatches(Ljava/util/regex/Pattern;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedString;

    move-result-object v14

    move-object v6, v14

    .line 1333
    .end local v13    # "nextLine":Lorg/jline/builtins/Less$Pair;, "Lorg/jline/builtins/Less$Pair<Ljava/lang/Integer;Lorg/jline/utils/AttributedString;>;"
    :cond_4
    iget v13, v1, Lorg/jline/builtins/Less;->firstColumnToDisplay:I

    if-gtz v13, :cond_7

    iget-boolean v14, v1, Lorg/jline/builtins/Less;->chopLongLines:Z

    if-eqz v14, :cond_5

    goto :goto_3

    .line 1341
    :cond_5
    const v13, 0x7fffffff

    if-nez v12, :cond_6

    iget v14, v1, Lorg/jline/builtins/Less;->offsetInLine:I

    if-lez v14, :cond_6

    .line 1342
    invoke-virtual {v6, v14, v13}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v14

    move-object v6, v14

    .line 1344
    :cond_6
    invoke-virtual {v6, v4, v2}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v14

    .line 1345
    .local v14, "toDisplay":Lorg/jline/utils/AttributedString;
    invoke-virtual {v6, v2, v13}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v13

    move-object v6, v13

    .line 1346
    invoke-virtual {v6}, Lorg/jline/utils/AttributedString;->length()I

    move-result v13

    if-nez v13, :cond_9

    .line 1347
    const/4 v6, 0x0

    goto :goto_4

    .line 1334
    .end local v14    # "toDisplay":Lorg/jline/utils/AttributedString;
    :cond_7
    :goto_3
    nop

    .line 1335
    .local v13, "off":I
    if-nez v12, :cond_8

    iget v14, v1, Lorg/jline/builtins/Less;->offsetInLine:I

    if-lez v14, :cond_8

    .line 1336
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v13, v14

    .line 1338
    :cond_8
    add-int v14, v13, v2

    invoke-virtual {v6, v13, v14}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v14

    .line 1339
    .restart local v14    # "toDisplay":Lorg/jline/utils/AttributedString;
    const/4 v6, 0x0

    .line 1340
    .end local v13    # "off":I
    nop

    .line 1350
    :cond_9
    :goto_4
    iget-boolean v13, v1, Lorg/jline/builtins/Less;->printLineNumbers:Z

    if-eqz v13, :cond_a

    if-nez v11, :cond_a

    .line 1351
    new-instance v13, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v13}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 1352
    .local v13, "sb":Lorg/jline/utils/AttributedStringBuilder;
    const-string v15, "%7d "

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v4, v16

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1353
    invoke-virtual {v13, v14}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1354
    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1355
    nop

    .end local v13    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    goto :goto_5

    .line 1356
    :cond_a
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    .end local v14    # "toDisplay":Lorg/jline/utils/AttributedString;
    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1359
    .end local v12    # "terminalLine":I
    :cond_b
    :goto_6
    if-eqz p1, :cond_d

    .line 1360
    if-eqz v10, :cond_c

    .line 1361
    new-instance v4, Lorg/jline/builtins/Less$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lorg/jline/builtins/Less$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/Less;)V

    invoke-interface {v0, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    :cond_c
    monitor-exit p0

    return v10

    .line 1365
    :cond_d
    :try_start_1
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 1366
    .local v4, "msg":Lorg/jline/utils/AttributedStringBuilder;
    const-string v12, "FILE_INFO"

    iget-object v13, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1367
    iget-object v12, v1, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    iget v13, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jline/builtins/Source;

    .line 1368
    .local v12, "source":Lorg/jline/builtins/Source;
    invoke-interface {v12}, Lorg/jline/builtins/Source;->lines()Ljava/lang/Long;

    move-result-object v13

    .line 1369
    .local v13, "allLines":Ljava/lang/Long;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Lorg/jline/builtins/Source;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1370
    iget-object v15, v1, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/4 v8, 0x2

    if-le v15, v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " (file "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v15, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, " of "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v15, v1, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ")"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_e
    const-string v8, ""

    :goto_7
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, " lines "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v14, v1, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    const/4 v15, 0x1

    add-int/2addr v14, v15

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "-"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "/"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1371
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_8

    :cond_f
    iget-object v14, v1, Lorg/jline/builtins/Less;->lines:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    int-to-long v14, v14

    :goto_8
    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1372
    if-eqz v11, :cond_10

    const-string v14, " (END)"

    goto :goto_9

    :cond_10
    const-string v14, ""

    :goto_9
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 1374
    .end local v12    # "source":Lorg/jline/builtins/Source;
    .end local v13    # "allLines":Ljava/lang/Long;
    :cond_11
    iget-object v8, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_12

    .line 1375
    const-string v8, " "

    invoke-virtual {v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v8

    iget-object v12, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_a

    .line 1376
    :cond_12
    iget-object v8, v1, Lorg/jline/builtins/Less;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v8}, Lorg/jline/keymap/BindingReader;->getCurrentBuffer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_13

    iget-object v8, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    .line 1377
    invoke-interface {v8}, Lorg/jline/terminal/Terminal;->reader()Lorg/jline/utils/NonBlockingReader;

    move-result-object v8

    const-wide/16 v12, 0x1

    invoke-virtual {v8, v12, v13}, Lorg/jline/utils/NonBlockingReader;->peek(J)I

    move-result v8

    const/4 v12, -0x2

    if-ne v8, v12, :cond_13

    .line 1378
    const-string v8, " "

    invoke-virtual {v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v8

    iget-object v12, v1, Lorg/jline/builtins/Less;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v12}, Lorg/jline/keymap/BindingReader;->getCurrentBuffer()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lorg/jline/builtins/Less;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_a

    .line 1379
    :cond_13
    iget-object v8, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    if-eqz v8, :cond_14

    .line 1380
    sget-object v8, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1381
    iget-object v8, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1382
    sget-object v8, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8}, Lorg/jline/utils/AttributedStyle;->inverseOff()Lorg/jline/utils/AttributedStyle;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_a

    .line 1383
    :cond_14
    iget-object v8, v1, Lorg/jline/builtins/Less;->displayPattern:Ljava/lang/String;

    if-eqz v8, :cond_15

    .line 1384
    const-string v8, "&"

    invoke-virtual {v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_a

    .line 1386
    :cond_15
    const-string v8, ":"

    invoke-virtual {v4, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1388
    :goto_a
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    iget-object v8, v1, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    iget-object v12, v1, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v12}, Lorg/jline/terminal/Size;->getRows()I

    move-result v12

    iget-object v13, v1, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v13}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Lorg/jline/utils/Display;->resize(II)V

    .line 1391
    if-nez p2, :cond_16

    .line 1392
    iget-object v8, v1, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    const/4 v12, -0x1

    invoke-virtual {v8, v0, v12}, Lorg/jline/utils/Display;->update(Ljava/util/List;I)V

    goto :goto_b

    .line 1394
    :cond_16
    iget-object v8, v1, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    iget-object v12, v1, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v12}, Lorg/jline/terminal/Size;->getRows()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v12, v13, v15}, Lorg/jline/terminal/Size;->cursorPos(II)I

    move-result v12

    invoke-virtual {v8, v0, v12}, Lorg/jline/utils/Display;->update(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1396
    :goto_b
    monitor-exit p0

    const/4 v8, 0x0

    return v8

    .line 1302
    .end local v0    # "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "msg":Lorg/jline/utils/AttributedStringBuilder;
    .end local v5    # "inputLine":I
    .end local v6    # "curLine":Lorg/jline/utils/AttributedString;
    .end local v7    # "compiled":Ljava/util/regex/Pattern;
    .end local v9    # "dpCompiled":Ljava/util/regex/Pattern;
    .end local v10    # "fitOnOneScreen":Z
    .end local v11    # "eof":Z
    .end local p1    # "oneScreen":Z
    .end local p2    # "curPos":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getLine(I)Lorg/jline/utils/AttributedString;
    .locals 3
    .param p1, "line"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1414
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/Less;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1415
    iget-object v0, p0, Lorg/jline/builtins/Less;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1416
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1417
    iget-object v1, p0, Lorg/jline/builtins/Less;->lines:Ljava/util/List;

    iget-object v2, p0, Lorg/jline/builtins/Less;->tabs:Ljava/util/List;

    invoke-static {v0, v2}, Lorg/jline/utils/AttributedString;->fromAnsi(Ljava/lang/String;Ljava/util/List;)Lorg/jline/utils/AttributedString;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1421
    .end local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 1422
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Less;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1423
    iget-object v0, p0, Lorg/jline/builtins/Less;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/utils/AttributedString;

    return-object v0

    .line 1425
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStrictPositiveNumberInBuffer(I)I
    .locals 4
    .param p1, "def"    # I

    .line 1266
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    .local v1, "n":I
    if-lez v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p1

    .line 1271
    :goto_0
    iget-object v3, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1267
    return v2

    .line 1271
    .end local v1    # "n":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1272
    throw v1

    .line 1268
    :catch_0
    move-exception v1

    .line 1269
    .local v1, "e":Ljava/lang/NumberFormatException;
    nop

    .line 1271
    iget-object v2, p0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1269
    return p1
.end method

.method public handle(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 2
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 300
    iget-object v0, p0, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    iget-object v1, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 302
    :try_start_0
    iget-object v0, p0, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    invoke-virtual {v0}, Lorg/jline/utils/Display;->clear()V

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Less;->display(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method synthetic lambda$display$2$org-jline-builtins-Less(Lorg/jline/utils/AttributedString;)V
    .locals 1
    .param p1, "l"    # Lorg/jline/utils/AttributedString;

    .line 1361
    iget-object v0, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-virtual {p1, v0}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    return-void
.end method

.method moveBackward(I)V
    .locals 7
    .param p1, "lines"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/builtins/Less;->getPattern(Z)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1222
    .local v1, "dpCompiled":Ljava/util/regex/Pattern;
    iget-object v2, p0, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    iget-boolean v3, p0, Lorg/jline/builtins/Less;->printLineNumbers:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    sub-int/2addr v2, v3

    .line 1223
    .local v2, "width":I
    iget-object v3, p0, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v3}, Lorg/jline/terminal/Size;->getRows()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p1, v3, :cond_1

    .line 1224
    iget-object v0, p0, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    invoke-virtual {v0}, Lorg/jline/utils/Display;->clear()V

    .line 1226
    :cond_1
    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_5

    .line 1227
    iget v0, p0, Lorg/jline/builtins/Less;->offsetInLine:I

    if-lez v0, :cond_2

    .line 1228
    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/Less;->offsetInLine:I

    goto :goto_1

    .line 1229
    :cond_2
    iget v0, p0, Lorg/jline/builtins/Less;->firstLineInMemory:I

    iget v3, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    if-ge v0, v3, :cond_4

    .line 1230
    invoke-direct {p0, v3, v1}, Lorg/jline/builtins/Less;->prevLine2display(ILjava/util/regex/Pattern;)Lorg/jline/builtins/Less$Pair;

    move-result-object v0

    .line 1231
    .local v0, "prevLine":Lorg/jline/builtins/Less$Pair;, "Lorg/jline/builtins/Less$Pair<Ljava/lang/Integer;Lorg/jline/utils/AttributedString;>;"
    invoke-virtual {v0}, Lorg/jline/builtins/Less$Pair;->getU()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 1232
    invoke-virtual {v0}, Lorg/jline/builtins/Less$Pair;->getV()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/utils/AttributedString;

    .line 1233
    .local v3, "line":Lorg/jline/utils/AttributedString;
    if-eqz v3, :cond_3

    iget v5, p0, Lorg/jline/builtins/Less;->firstColumnToDisplay:I

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lorg/jline/builtins/Less;->chopLongLines:Z

    if-nez v5, :cond_3

    .line 1234
    invoke-virtual {v3}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v5

    .line 1235
    .local v5, "length":I
    rem-int v6, v5, v2

    sub-int v6, v5, v6

    iput v6, p0, Lorg/jline/builtins/Less;->offsetInLine:I

    .line 1237
    .end local v0    # "prevLine":Lorg/jline/builtins/Less$Pair;, "Lorg/jline/builtins/Less$Pair<Ljava/lang/Integer;Lorg/jline/utils/AttributedString;>;"
    .end local v3    # "line":Lorg/jline/utils/AttributedString;
    .end local v5    # "length":I
    :cond_3
    goto :goto_1

    .line 1238
    :cond_4
    invoke-direct {p0}, Lorg/jline/builtins/Less;->bof()V

    .line 1239
    return-void

    .line 1242
    :cond_5
    return-void
.end method

.method moveForward(I)V
    .locals 12
    .param p1, "lines"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/builtins/Less;->getPattern(Z)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1167
    .local v1, "dpCompiled":Ljava/util/regex/Pattern;
    iget-object v2, p0, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    iget-boolean v3, p0, Lorg/jline/builtins/Less;->printLineNumbers:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    sub-int/2addr v2, v3

    .line 1168
    .local v2, "width":I
    iget-object v3, p0, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v3}, Lorg/jline/terminal/Size;->getRows()I

    move-result v3

    .line 1169
    .local v3, "height":I
    iget v5, p0, Lorg/jline/builtins/Less;->firstColumnToDisplay:I

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/jline/builtins/Less;->chopLongLines:Z

    if-nez v5, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v4

    .line 1170
    .local v5, "doOffsets":Z
    :goto_1
    iget-object v6, p0, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v6}, Lorg/jline/terminal/Size;->getRows()I

    move-result v6

    sub-int/2addr v6, v0

    if-lt p1, v6, :cond_2

    .line 1171
    iget-object v0, p0, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    invoke-virtual {v0}, Lorg/jline/utils/Display;->clear()V

    .line 1173
    :cond_2
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_3

    .line 1174
    iget-object v0, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    iget v6, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Source;

    invoke-interface {v0}, Lorg/jline/builtins/Source;->lines()Ljava/lang/Long;

    move-result-object v0

    .line 1175
    .local v0, "allLines":Ljava/lang/Long;
    if-eqz v0, :cond_3

    .line 1176
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 1177
    const/4 v6, 0x0

    .local v6, "l":I
    :goto_2
    add-int/lit8 v7, v3, -0x1

    if-ge v6, v7, :cond_3

    .line 1178
    iget v7, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    invoke-direct {p0, v7, v1}, Lorg/jline/builtins/Less;->prevLine2display(ILjava/util/regex/Pattern;)Lorg/jline/builtins/Less$Pair;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jline/builtins/Less$Pair;->getU()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 1177
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1182
    .end local v0    # "allLines":Ljava/lang/Long;
    .end local v6    # "l":I
    :cond_3
    :goto_3
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_b

    .line 1183
    iget v0, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 1184
    .local v0, "lastLineToDisplay":I
    if-nez v5, :cond_5

    .line 1185
    const/4 v6, 0x0

    .restart local v6    # "l":I
    :goto_4
    add-int/lit8 v7, v3, -0x1

    if-ge v6, v7, :cond_4

    .line 1186
    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/Less;->nextLine2display(ILjava/util/regex/Pattern;)Lorg/jline/builtins/Less$Pair;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jline/builtins/Less$Pair;->getU()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1185
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v6    # "l":I
    :cond_4
    goto :goto_7

    .line 1189
    :cond_5
    iget v6, p0, Lorg/jline/builtins/Less;->offsetInLine:I

    .line 1190
    .local v6, "off":I
    const/4 v7, 0x0

    .local v7, "l":I
    :goto_5
    add-int/lit8 v8, v3, -0x1

    if-ge v7, v8, :cond_8

    .line 1191
    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/Less;->nextLine2display(ILjava/util/regex/Pattern;)Lorg/jline/builtins/Less$Pair;

    move-result-object v8

    .line 1192
    .local v8, "nextLine":Lorg/jline/builtins/Less$Pair;, "Lorg/jline/builtins/Less$Pair<Ljava/lang/Integer;Lorg/jline/utils/AttributedString;>;"
    invoke-virtual {v8}, Lorg/jline/builtins/Less$Pair;->getV()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jline/utils/AttributedString;

    .line 1193
    .local v9, "line":Lorg/jline/utils/AttributedString;
    if-nez v9, :cond_6

    .line 1194
    invoke-virtual {v8}, Lorg/jline/builtins/Less$Pair;->getU()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1195
    goto :goto_7

    .line 1197
    :cond_6
    invoke-virtual {v9}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v10

    add-int v11, v6, v2

    if-le v10, v11, :cond_7

    .line 1198
    add-int/2addr v6, v2

    goto :goto_6

    .line 1200
    :cond_7
    const/4 v6, 0x0

    .line 1201
    invoke-virtual {v8}, Lorg/jline/builtins/Less$Pair;->getU()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1190
    .end local v8    # "nextLine":Lorg/jline/builtins/Less$Pair;, "Lorg/jline/builtins/Less$Pair<Ljava/lang/Integer;Lorg/jline/utils/AttributedString;>;"
    .end local v9    # "line":Lorg/jline/utils/AttributedString;
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1205
    .end local v6    # "off":I
    .end local v7    # "l":I
    :cond_8
    :goto_7
    invoke-virtual {p0, v0}, Lorg/jline/builtins/Less;->getLine(I)Lorg/jline/utils/AttributedString;

    move-result-object v6

    if-nez v6, :cond_9

    .line 1206
    invoke-direct {p0}, Lorg/jline/builtins/Less;->eof()V

    .line 1207
    return-void

    .line 1209
    :cond_9
    iget v6, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    invoke-direct {p0, v6, v1}, Lorg/jline/builtins/Less;->nextLine2display(ILjava/util/regex/Pattern;)Lorg/jline/builtins/Less$Pair;

    move-result-object v6

    .line 1210
    .local v6, "nextLine":Lorg/jline/builtins/Less$Pair;, "Lorg/jline/builtins/Less$Pair<Ljava/lang/Integer;Lorg/jline/utils/AttributedString;>;"
    invoke-virtual {v6}, Lorg/jline/builtins/Less$Pair;->getV()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jline/utils/AttributedString;

    .line 1211
    .local v7, "line":Lorg/jline/utils/AttributedString;
    if-eqz v5, :cond_a

    invoke-virtual {v7}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v8

    iget v9, p0, Lorg/jline/builtins/Less;->offsetInLine:I

    add-int v10, v2, v9

    if-le v8, v10, :cond_a

    .line 1212
    add-int/2addr v9, v2

    iput v9, p0, Lorg/jline/builtins/Less;->offsetInLine:I

    goto :goto_8

    .line 1214
    :cond_a
    iput v4, p0, Lorg/jline/builtins/Less;->offsetInLine:I

    .line 1215
    invoke-virtual {v6}, Lorg/jline/builtins/Less$Pair;->getU()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 1217
    .end local v0    # "lastLineToDisplay":I
    .end local v6    # "nextLine":Lorg/jline/builtins/Less$Pair;, "Lorg/jline/builtins/Less$Pair<Ljava/lang/Integer;Lorg/jline/utils/AttributedString;>;"
    .end local v7    # "line":Lorg/jline/utils/AttributedString;
    :goto_8
    goto/16 :goto_3

    .line 1218
    :cond_b
    return-void
.end method

.method moveTo(I)V
    .locals 3
    .param p1, "lineNum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1054
    invoke-virtual {p0, p1}, Lorg/jline/builtins/Less;->getLine(I)Lorg/jline/utils/AttributedString;

    move-result-object v0

    .line 1055
    .local v0, "line":Lorg/jline/utils/AttributedString;
    if-eqz v0, :cond_1

    .line 1056
    iget-object v1, p0, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    invoke-virtual {v1}, Lorg/jline/utils/Display;->clear()V

    .line 1057
    iget v1, p0, Lorg/jline/builtins/Less;->firstLineInMemory:I

    if-le v1, p1, :cond_0

    .line 1058
    invoke-virtual {p0}, Lorg/jline/builtins/Less;->openSource()V

    .line 1060
    :cond_0
    iput p1, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 1061
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/builtins/Less;->offsetInLine:I

    goto :goto_0

    .line 1063
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot seek to line number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 1065
    :goto_0
    return-void
.end method

.method protected openSource()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 992
    const/4 v0, 0x0

    .line 993
    .local v0, "wasOpen":Z
    iget-object v1, p0, Lorg/jline/builtins/Less;->reader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    .line 994
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 995
    const/4 v0, 0x1

    .line 998
    :cond_0
    const/4 v1, 0x0

    .line 1000
    .local v1, "displayMessage":Z
    :cond_1
    iget-object v2, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    iget v3, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jline/builtins/Source;

    .line 1002
    .local v2, "source":Lorg/jline/builtins/Source;
    :try_start_0
    invoke-interface {v2}, Lorg/jline/builtins/Source;->read()Ljava/io/InputStream;

    move-result-object v3

    .line 1003
    .local v3, "in":Ljava/io/InputStream;
    iget-object v4, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    iget v4, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    if-nez v4, :cond_2

    goto :goto_0

    .line 1006
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/jline/builtins/Source;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    .line 1007
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    goto :goto_1

    .line 1004
    :cond_3
    :goto_0
    invoke-interface {v2}, Lorg/jline/builtins/Source;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 1009
    :goto_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Lorg/jline/builtins/Less$InterruptibleInputStream;

    invoke-direct {v6, v3}, Lorg/jline/builtins/Less$InterruptibleInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v4, p0, Lorg/jline/builtins/Less;->reader:Ljava/io/BufferedReader;

    .line 1011
    const/4 v4, 0x0

    iput v4, p0, Lorg/jline/builtins/Less;->firstLineInMemory:I

    .line 1012
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/jline/builtins/Less;->lines:Ljava/util/List;

    .line 1013
    iput v4, p0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 1014
    iput v4, p0, Lorg/jline/builtins/Less;->firstColumnToDisplay:I

    .line 1015
    iput v4, p0, Lorg/jline/builtins/Less;->offsetInLine:I

    .line 1016
    iget-object v4, p0, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    invoke-virtual {v4}, Lorg/jline/utils/Display;->clear()V

    .line 1017
    iget v4, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    if-nez v4, :cond_4

    .line 1018
    iget-object v4, p0, Lorg/jline/builtins/Less;->syntaxFiles:Ljava/util/List;

    const/4 v5, 0x0

    const-string v6, "none"

    invoke-static {v4, v5, v6}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->build(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/jline/builtins/Nano$SyntaxHighlighter;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/Less;->syntaxHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    goto :goto_2

    .line 1020
    :cond_4
    iget-object v4, p0, Lorg/jline/builtins/Less;->syntaxFiles:Ljava/util/List;

    invoke-interface {v2}, Lorg/jline/builtins/Source;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jline/builtins/Less;->syntaxName:Ljava/lang/String;

    iget-boolean v7, p0, Lorg/jline/builtins/Less;->nanorcIgnoreErrors:Z

    invoke-static {v4, v5, v6, v7}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->build(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jline/builtins/Nano$SyntaxHighlighter;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/Less;->syntaxHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    .line 1022
    :goto_2
    const/4 v4, 0x1

    .line 1023
    .local v4, "open":Z
    if-eqz v1, :cond_5

    .line 1024
    new-instance v5, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v5}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 1025
    .local v5, "asb":Lorg/jline/utils/AttributedStringBuilder;
    sget-object v6, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v5, v6}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1026
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/jline/builtins/Source;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (press RETURN)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1027
    invoke-virtual {v5}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v6

    iget-object v7, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-virtual {v6, v7}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 1028
    iget-object v6, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v6}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 1029
    iget-object v6, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v6}, Lorg/jline/terminal/Terminal;->reader()Lorg/jline/utils/NonBlockingReader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jline/utils/NonBlockingReader;->read()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v5    # "asb":Lorg/jline/utils/AttributedStringBuilder;
    :cond_5
    goto :goto_3

    .line 1031
    .end local v4    # "open":Z
    :catch_0
    move-exception v3

    .line 1032
    .local v3, "exp":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    iget v5, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1033
    iget v4, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    iget-object v5, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_6

    .line 1034
    iget-object v4, p0, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    .line 1036
    :cond_6
    if-nez v0, :cond_9

    .line 1039
    new-instance v4, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v4}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 1040
    .local v4, "asb":Lorg/jline/utils/AttributedStringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/jline/builtins/Source;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 1041
    invoke-virtual {v4}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v5

    iget-object v6, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-virtual {v5, v6}, Lorg/jline/utils/AttributedString;->println(Lorg/jline/terminal/Terminal;)V

    .line 1042
    iget-object v5, p0, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v5}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 1043
    const/4 v5, 0x0

    .line 1044
    .local v5, "open":Z
    const/4 v1, 0x1

    move v4, v5

    .line 1047
    .end local v2    # "source":Lorg/jline/builtins/Source;
    .end local v3    # "exp":Ljava/io/FileNotFoundException;
    .end local v5    # "open":Z
    .local v4, "open":Z
    :goto_3
    if-nez v4, :cond_7

    iget v2, p0, Lorg/jline/builtins/Less;->sourceIdx:I

    if-gtz v2, :cond_1

    .line 1048
    :cond_7
    if-eqz v4, :cond_8

    .line 1051
    return-void

    .line 1049
    :cond_8
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    .line 1037
    .end local v4    # "open":Z
    .restart local v2    # "source":Lorg/jline/builtins/Source;
    .restart local v3    # "exp":Ljava/io/FileNotFoundException;
    :cond_9
    throw v3
.end method

.method public run(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jline/builtins/Source;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 314
    .local p1, "sources":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Source;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_40

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    .line 317
    new-instance v3, Lorg/jline/builtins/Source$ResourceSource;

    const-string v4, "less-help.txt"

    const-string v5, "HELP -- Press SPACE for more, or q when done"

    invoke-direct {v3, v4, v5}, Lorg/jline/builtins/Source$ResourceSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 318
    iput-object v2, v1, Lorg/jline/builtins/Less;->sources:Ljava/util/List;

    .line 320
    const/4 v3, 0x1

    iput v3, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    .line 321
    invoke-virtual/range {p0 .. p0}, Lorg/jline/builtins/Less;->openSource()V

    .line 322
    iget-object v5, v1, Lorg/jline/builtins/Less;->errorMessage:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 323
    iput-object v5, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 324
    iput-object v6, v1, Lorg/jline/builtins/Less;->errorMessage:Ljava/lang/String;

    .line 326
    :cond_0
    iget-object v5, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-static {v5, v4}, Lorg/jline/utils/Status;->getStatus(Lorg/jline/terminal/Terminal;Z)Lorg/jline/utils/Status;

    move-result-object v5

    .line 329
    .local v5, "status":Lorg/jline/utils/Status;
    if-eqz v5, :cond_1

    .line 330
    :try_start_0
    invoke-virtual {v5}, Lorg/jline/utils/Status;->suspend()V

    .line 332
    :cond_1
    iget-object v7, v1, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    iget-object v8, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v8}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 334
    iget-boolean v7, v1, Lorg/jline/builtins/Less;->quitIfOneScreen:Z

    const/4 v8, 0x2

    if-eqz v7, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v8, :cond_4

    .line 335
    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->display(Z)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_4

    .line 667
    iget-object v3, v1, Lorg/jline/builtins/Less;->reader:Ljava/io/BufferedReader;

    if-eqz v3, :cond_2

    .line 668
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 670
    :cond_2
    if-eqz v5, :cond_3

    .line 671
    invoke-virtual {v5}, Lorg/jline/utils/Status;->restore()V

    .line 673
    :cond_3
    iget-object v3, v1, Lorg/jline/builtins/Less;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$PatternHistory;->persist()V

    .line 336
    return-void

    .line 340
    :cond_4
    :try_start_1
    iget-object v7, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    new-instance v10, Lorg/jline/builtins/Less$$ExternalSyntheticLambda5;

    invoke-direct {v10, v1}, Lorg/jline/builtins/Less$$ExternalSyntheticLambda5;-><init>(Lorg/jline/builtins/Less;)V

    invoke-interface {v7, v9, v10}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v7

    .line 341
    .local v7, "prevHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    iget-object v9, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v9}, Lorg/jline/terminal/Terminal;->enterRawMode()Lorg/jline/terminal/Attributes;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 343
    .local v9, "attr":Lorg/jline/terminal/Attributes;
    :try_start_2
    iget-object v10, v1, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v10}, Lorg/jline/terminal/Size;->getRows()I

    move-result v10

    sub-int/2addr v10, v3

    iput v10, v1, Lorg/jline/builtins/Less;->window:I

    .line 344
    div-int/2addr v10, v8

    iput v10, v1, Lorg/jline/builtins/Less;->halfWindow:I

    .line 345
    new-instance v10, Lorg/jline/keymap/KeyMap;

    invoke-direct {v10}, Lorg/jline/keymap/KeyMap;-><init>()V

    iput-object v10, v1, Lorg/jline/builtins/Less;->keys:Lorg/jline/keymap/KeyMap;

    .line 346
    invoke-direct {v1, v10}, Lorg/jline/builtins/Less;->bindKeys(Lorg/jline/keymap/KeyMap;)V

    .line 349
    iget-boolean v10, v1, Lorg/jline/builtins/Less;->noInit:Z

    if-nez v10, :cond_5

    .line 350
    iget-object v10, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v11, Lorg/jline/utils/InfoCmp$Capability;->enter_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    new-array v12, v4, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 352
    :cond_5
    iget-boolean v10, v1, Lorg/jline/builtins/Less;->noKeypad:Z

    if-nez v10, :cond_6

    .line 353
    iget-object v10, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v11, Lorg/jline/utils/InfoCmp$Capability;->keypad_xmit:Lorg/jline/utils/InfoCmp$Capability;

    new-array v12, v4, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 355
    :cond_6
    iget-object v10, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v10}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    .line 357
    iget-object v10, v1, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    invoke-virtual {v10}, Lorg/jline/utils/Display;->clear()V

    .line 358
    invoke-virtual {v1, v4}, Lorg/jline/builtins/Less;->display(Z)Z

    .line 359
    invoke-static {}, Lorg/jline/builtins/Less;->checkInterrupted()V

    .line 361
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "-e"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_QUIT_AT_SECOND_EOF:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "--quit-at-eof"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_QUIT_AT_SECOND_EOF:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "-E"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_QUIT_AT_FIRST_EOF:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "-QUIT-AT-EOF"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_QUIT_AT_FIRST_EOF:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "-N"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_PRINT_LINES:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "--LINE-NUMBERS"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_PRINT_LINES:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "-q"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_QUIET:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "--quiet"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_QUIET:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "--silent"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_QUIET:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "-Q"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_VERY_QUIET:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "--QUIET"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_VERY_QUIET:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "--SILENT"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_VERY_QUIET:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "-S"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_CHOP_LONG_LINES:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "--chop-long-lines"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_CHOP_LONG_LINES:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "-i"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_IGNORE_CASE_COND:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "--ignore-case"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_IGNORE_CASE_COND:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "-I"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_IGNORE_CASE_ALWAYS:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "--IGNORE-CASE"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_IGNORE_CASE_ALWAYS:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "-Y"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_SYNTAX_HIGHLIGHT:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v10, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    const-string v11, "--syntax"

    sget-object v12, Lorg/jline/builtins/Less$Operation;->OPT_SYNTAX_HIGHLIGHT:Lorg/jline/builtins/Less$Operation;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const/4 v10, 0x1

    .line 385
    .local v10, "forward":Z
    :goto_0
    invoke-static {}, Lorg/jline/builtins/Less;->checkInterrupted()V

    .line 387
    const/4 v11, 0x0

    .line 391
    .local v11, "op":Lorg/jline/builtins/Less$Operation;
    iget-object v12, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/16 v13, 0x2d

    if-lez v12, :cond_d

    iget-object v12, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    if-ne v12, v13, :cond_d

    .line 392
    iget-object v12, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v12}, Lorg/jline/terminal/Terminal;->reader()Lorg/jline/utils/NonBlockingReader;

    move-result-object v12

    invoke-virtual {v12}, Lorg/jline/utils/NonBlockingReader;->read()I

    move-result v12

    .line 393
    .local v12, "c":I
    iput-object v6, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 394
    iget-object v14, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v15, " option"

    const-string v8, "There is no "

    if-ne v14, v3, :cond_7

    .line 395
    :try_start_3
    iget-object v14, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    int-to-char v3, v12

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    if-eq v12, v13, :cond_c

    .line 397
    iget-object v3, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    iget-object v13, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/Less$Operation;

    .line 398
    .end local v11    # "op":Lorg/jline/builtins/Less$Operation;
    .local v3, "op":Lorg/jline/builtins/Less$Operation;
    if-nez v3, :cond_8

    .line 399
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/jline/builtins/Less;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 400
    iget-object v8, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 403
    .end local v3    # "op":Lorg/jline/builtins/Less$Operation;
    .restart local v11    # "op":Lorg/jline/builtins/Less$Operation;
    :cond_7
    const/16 v3, 0xd

    if-ne v12, v3, :cond_9

    .line 404
    iget-object v3, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    iget-object v13, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/Less$Operation;

    .line 405
    .end local v11    # "op":Lorg/jline/builtins/Less$Operation;
    .restart local v3    # "op":Lorg/jline/builtins/Less$Operation;
    if-nez v3, :cond_8

    .line 406
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/jline/builtins/Less;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 407
    iget-object v8, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 427
    .end local v12    # "c":I
    :cond_8
    :goto_1
    move-object v11, v3

    goto :goto_3

    .line 410
    .end local v3    # "op":Lorg/jline/builtins/Less$Operation;
    .restart local v11    # "op":Lorg/jline/builtins/Less$Operation;
    .restart local v12    # "c":I
    :cond_9
    iget-object v3, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    int-to-char v8, v12

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 412
    .local v3, "matching":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/builtins/Less$Operation;>;"
    iget-object v8, v1, Lorg/jline/builtins/Less;->options:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 413
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jline/builtins/Less$Operation;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v15, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 414
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/jline/builtins/Less$Operation;

    invoke-interface {v3, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jline/builtins/Less$Operation;>;"
    :cond_a
    goto :goto_2

    .line 417
    :cond_b
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_3

    .line 422
    :pswitch_0
    iget-object v8, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 423
    iget-object v8, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 419
    :pswitch_1
    iget-object v8, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 420
    nop

    .line 427
    .end local v3    # "matching":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jline/builtins/Less$Operation;>;"
    .end local v12    # "c":I
    :cond_c
    :goto_3
    goto/16 :goto_4

    .line 431
    :cond_d
    iget-object v3, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v8, 0x26

    const/16 v12, 0x3f

    const/16 v14, 0x2f

    if-lez v3, :cond_f

    iget-object v3, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v14, :cond_e

    iget-object v3, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v12, :cond_e

    iget-object v3, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_f

    .line 432
    :cond_e
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Less;->search()Z

    move-result v3

    move v10, v3

    .end local v10    # "forward":Z
    .local v3, "forward":Z
    goto :goto_4

    .line 438
    .end local v3    # "forward":Z
    .restart local v10    # "forward":Z
    :cond_f
    iget-object v3, v1, Lorg/jline/builtins/Less;->bindingReader:Lorg/jline/keymap/BindingReader;

    iget-object v15, v1, Lorg/jline/builtins/Less;->keys:Lorg/jline/keymap/KeyMap;

    invoke-virtual {v3, v15, v6, v4}, Lorg/jline/keymap/BindingReader;->readBinding(Lorg/jline/keymap/KeyMap;Lorg/jline/keymap/KeyMap;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jline/builtins/Less$Operation;

    .line 439
    .local v3, "obj":Lorg/jline/builtins/Less$Operation;
    sget-object v15, Lorg/jline/builtins/Less$Operation;->CHAR:Lorg/jline/builtins/Less$Operation;

    if-ne v3, v15, :cond_12

    .line 440
    iget-object v15, v1, Lorg/jline/builtins/Less;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v15}, Lorg/jline/keymap/BindingReader;->getLastBinding()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 442
    .local v15, "c":C
    if-eq v15, v13, :cond_10

    if-eq v15, v14, :cond_10

    if-eq v15, v12, :cond_10

    if-ne v15, v8, :cond_11

    .line 443
    :cond_10
    iget-object v8, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 445
    :cond_11
    iget-object v8, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    nop

    .end local v15    # "c":C
    goto :goto_4

    :cond_12
    sget-object v8, Lorg/jline/builtins/Less$Operation;->BACKSPACE:Lorg/jline/builtins/Less$Operation;

    if-ne v3, v8, :cond_13

    .line 447
    iget-object v8, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_14

    .line 448
    iget-object v8, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 451
    :cond_13
    move-object v11, v3

    .line 454
    .end local v3    # "obj":Lorg/jline/builtins/Less$Operation;
    :cond_14
    :goto_4
    if-eqz v11, :cond_2c

    .line 455
    iput-object v6, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 456
    sget-object v3, Lorg/jline/builtins/Less$1;->$SwitchMap$org$jline$builtins$Less$Operation:[I

    invoke-virtual {v11}, Lorg/jline/builtins/Less$Operation;->ordinal()I

    move-result v8

    aget v3, v3, v8
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v8, "Ring the bell for errors AND at eof/bof"

    const-string v12, "Case is significant in searches"

    const/4 v13, -0x1

    const v14, 0x7fffffff

    packed-switch v3, :pswitch_data_1

    const/4 v12, 0x2

    goto/16 :goto_15

    .line 635
    :pswitch_2
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Less;->help()V

    const/4 v12, 0x2

    goto/16 :goto_15

    .line 630
    :pswitch_3
    iput-object v6, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 631
    iget-object v3, v1, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    iget-object v8, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v8}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 632
    iget-object v3, v1, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    invoke-virtual {v3}, Lorg/jline/utils/Display;->clear()V

    .line 633
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 626
    :pswitch_4
    iget-object v3, v1, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    iget-object v8, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v8}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 627
    iget-object v3, v1, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    invoke-virtual {v3}, Lorg/jline/utils/Display;->clear()V

    .line 628
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 617
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x2

    if-le v3, v8, :cond_16

    .line 618
    iget v3, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 619
    iget v3, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_15

    .line 620
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    iput v3, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    .line 622
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/jline/builtins/Less;->openSource()V

    const/4 v12, 0x2

    goto/16 :goto_15

    .line 617
    :cond_16
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 614
    :pswitch_6
    const-string v3, "FILE_INFO"

    iput-object v3, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 615
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 599
    :pswitch_7
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v8

    move v3, v8

    .line 600
    .local v3, "tofile":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_18

    .line 601
    new-instance v8, Lorg/jline/builtins/Less$SavedSourcePositions;

    iget v12, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    if-ge v3, v12, :cond_17

    goto :goto_5

    :cond_17
    move v13, v4

    :goto_5
    invoke-direct {v8, v1, v13}, Lorg/jline/builtins/Less$SavedSourcePositions;-><init>(Lorg/jline/builtins/Less;I)V

    .line 602
    .local v8, "ssp":Lorg/jline/builtins/Less$SavedSourcePositions;
    iput v3, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    .line 603
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jline/builtins/Source;

    invoke-interface {v12}, Lorg/jline/builtins/Source;->getName()Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 605
    .local v12, "newSource":Ljava/lang/String;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/jline/builtins/Less;->openSource()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 608
    goto :goto_6

    .line 606
    :catch_0
    move-exception v0

    move-object v13, v0

    .line 607
    .local v13, "exp":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v8, v12}, Lorg/jline/builtins/Less$SavedSourcePositions;->restore(Ljava/lang/String;)V

    .line 609
    .end local v8    # "ssp":Lorg/jline/builtins/Less$SavedSourcePositions;
    .end local v12    # "newSource":Ljava/lang/String;
    .end local v13    # "exp":Ljava/io/FileNotFoundException;
    :goto_6
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 610
    :cond_18
    const-string v8, "No such file"

    iput-object v8, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 612
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 584
    .end local v3    # "tofile":I
    :pswitch_8
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v8

    move v3, v8

    .line 585
    .local v3, "prev":I
    iget v8, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    if-le v8, v3, :cond_19

    .line 586
    new-instance v8, Lorg/jline/builtins/Less$SavedSourcePositions;

    invoke-direct {v8, v1, v13}, Lorg/jline/builtins/Less$SavedSourcePositions;-><init>(Lorg/jline/builtins/Less;I)V

    .line 587
    .restart local v8    # "ssp":Lorg/jline/builtins/Less$SavedSourcePositions;
    iget v12, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    sub-int/2addr v12, v3

    iput v12, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    .line 588
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jline/builtins/Source;

    invoke-interface {v12}, Lorg/jline/builtins/Source;->getName()Ljava/lang/String;

    move-result-object v12
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 590
    .restart local v12    # "newSource":Ljava/lang/String;
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lorg/jline/builtins/Less;->openSource()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 593
    goto :goto_7

    .line 591
    :catch_1
    move-exception v0

    move-object v13, v0

    .line 592
    .restart local v13    # "exp":Ljava/io/FileNotFoundException;
    :try_start_8
    invoke-virtual {v8, v12}, Lorg/jline/builtins/Less$SavedSourcePositions;->restore(Ljava/lang/String;)V

    .line 594
    .end local v8    # "ssp":Lorg/jline/builtins/Less$SavedSourcePositions;
    .end local v12    # "newSource":Ljava/lang/String;
    .end local v13    # "exp":Ljava/io/FileNotFoundException;
    :goto_7
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 595
    :cond_19
    const-string v8, "No previous file"

    iput-object v8, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 597
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 569
    .end local v3    # "prev":I
    :pswitch_9
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v8

    move v3, v8

    .line 570
    .local v3, "next":I
    iget v8, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v3

    if-ge v8, v12, :cond_1a

    .line 571
    new-instance v8, Lorg/jline/builtins/Less$SavedSourcePositions;

    invoke-direct {v8, v1}, Lorg/jline/builtins/Less$SavedSourcePositions;-><init>(Lorg/jline/builtins/Less;)V

    .line 572
    .restart local v8    # "ssp":Lorg/jline/builtins/Less$SavedSourcePositions;
    iget v12, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    add-int/2addr v12, v3

    iput v12, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    .line 573
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jline/builtins/Source;

    invoke-interface {v12}, Lorg/jline/builtins/Source;->getName()Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 575
    .restart local v12    # "newSource":Ljava/lang/String;
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lorg/jline/builtins/Less;->openSource()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 578
    goto :goto_8

    .line 576
    :catch_2
    move-exception v0

    move-object v13, v0

    .line 577
    .restart local v13    # "exp":Ljava/io/FileNotFoundException;
    :try_start_a
    invoke-virtual {v8, v12}, Lorg/jline/builtins/Less$SavedSourcePositions;->restore(Ljava/lang/String;)V

    .line 579
    .end local v8    # "ssp":Lorg/jline/builtins/Less$SavedSourcePositions;
    .end local v12    # "newSource":Ljava/lang/String;
    .end local v13    # "exp":Ljava/io/FileNotFoundException;
    :goto_8
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 580
    :cond_1a
    const-string v8, "No next file"

    iput-object v8, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 582
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 566
    .end local v3    # "next":I
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lorg/jline/builtins/Less;->addFile()V

    .line 567
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 562
    :pswitch_b
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->highlight:Z

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_9

    :cond_1b
    move v3, v4

    :goto_9
    iput-boolean v3, v1, Lorg/jline/builtins/Less;->highlight:Z

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Highlight "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v8, v1, Lorg/jline/builtins/Less;->highlight:Z

    if-eqz v8, :cond_1c

    const-string v8, "enabled"

    goto :goto_a

    :cond_1c
    const-string v8, "disabled"

    :goto_a
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 564
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 557
    :pswitch_c
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->ignoreCaseAlways:Z

    if-nez v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_b

    :cond_1d
    move v3, v4

    :goto_b
    iput-boolean v3, v1, Lorg/jline/builtins/Less;->ignoreCaseAlways:Z

    .line 558
    iput-boolean v4, v1, Lorg/jline/builtins/Less;->ignoreCaseCond:Z

    .line 559
    if-eqz v3, :cond_1e

    const-string v12, "Ignore case in searches and in patterns"

    :cond_1e
    iput-object v12, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 560
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 552
    :pswitch_d
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->ignoreCaseCond:Z

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_c

    :cond_1f
    move v3, v4

    :goto_c
    iput-boolean v3, v1, Lorg/jline/builtins/Less;->ignoreCaseCond:Z

    .line 553
    iput-boolean v4, v1, Lorg/jline/builtins/Less;->ignoreCaseAlways:Z

    .line 554
    if-eqz v3, :cond_20

    const-string v12, "Ignore case in searches"

    :cond_20
    iput-object v12, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 555
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 545
    :pswitch_e
    iget-object v3, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 546
    iput v4, v1, Lorg/jline/builtins/Less;->offsetInLine:I

    .line 547
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->chopLongLines:Z

    if-nez v3, :cond_21

    const/4 v3, 0x1

    goto :goto_d

    :cond_21
    move v3, v4

    :goto_d
    iput-boolean v3, v1, Lorg/jline/builtins/Less;->chopLongLines:Z

    .line 548
    if-eqz v3, :cond_22

    const-string v3, "Chop long lines"

    goto :goto_e

    :cond_22
    const-string v3, "Fold long lines"

    :goto_e
    iput-object v3, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 549
    iget-object v3, v1, Lorg/jline/builtins/Less;->display:Lorg/jline/utils/Display;

    invoke-virtual {v3}, Lorg/jline/utils/Display;->clear()V

    .line 550
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 539
    :pswitch_f
    iget-object v3, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 540
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->veryQuiet:Z

    if-nez v3, :cond_23

    const/4 v3, 0x1

    goto :goto_f

    :cond_23
    move v3, v4

    :goto_f
    iput-boolean v3, v1, Lorg/jline/builtins/Less;->veryQuiet:Z

    .line 541
    iput-boolean v4, v1, Lorg/jline/builtins/Less;->quiet:Z

    .line 542
    if-eqz v3, :cond_24

    const-string v8, "Never ring the bell"

    :cond_24
    iput-object v8, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 543
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 533
    :pswitch_10
    iget-object v3, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 534
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->quiet:Z

    if-nez v3, :cond_25

    const/4 v3, 0x1

    goto :goto_10

    :cond_25
    move v3, v4

    :goto_10
    iput-boolean v3, v1, Lorg/jline/builtins/Less;->quiet:Z

    .line 535
    iput-boolean v4, v1, Lorg/jline/builtins/Less;->veryQuiet:Z

    .line 536
    if-eqz v3, :cond_26

    const-string v8, "Ring the bell for errors but not at eof/bof"

    :cond_26
    iput-object v8, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 537
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 528
    :pswitch_11
    iget-object v3, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 529
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->printLineNumbers:Z

    if-nez v3, :cond_27

    const/4 v3, 0x1

    goto :goto_11

    :cond_27
    move v3, v4

    :goto_11
    iput-boolean v3, v1, Lorg/jline/builtins/Less;->printLineNumbers:Z

    .line 530
    if-eqz v3, :cond_28

    const-string v3, "Constantly display line numbers"

    goto :goto_12

    :cond_28
    const-string v3, "Don\'t use line numbers"

    :goto_12
    iput-object v3, v1, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 531
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 525
    :pswitch_12
    iput-object v6, v1, Lorg/jline/builtins/Less;->pattern:Ljava/lang/String;

    .line 526
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 522
    :pswitch_13
    invoke-direct {v1, v10, v4}, Lorg/jline/builtins/Less;->moveToMatch(ZZ)V

    .line 523
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 519
    :pswitch_14
    const/4 v3, 0x1

    invoke-direct {v1, v10, v3}, Lorg/jline/builtins/Less;->moveToMatch(ZZ)V

    .line 520
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 516
    :pswitch_15
    if-nez v10, :cond_29

    const/4 v3, 0x1

    goto :goto_13

    :cond_29
    move v3, v4

    :goto_13
    invoke-direct {v1, v3, v4}, Lorg/jline/builtins/Less;->moveToMatch(ZZ)V

    .line 517
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 513
    :pswitch_16
    if-nez v10, :cond_2a

    const/4 v3, 0x1

    goto :goto_14

    :cond_2a
    move v3, v4

    :goto_14
    const/4 v8, 0x1

    invoke-direct {v1, v3, v8}, Lorg/jline/builtins/Less;->moveToMatch(ZZ)V

    .line 514
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 510
    :pswitch_17
    iget v3, v1, Lorg/jline/builtins/Less;->firstColumnToDisplay:I

    iget-object v8, v1, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v8}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v8

    const/4 v12, 0x2

    div-int/2addr v8, v12

    add-int/2addr v3, v8

    iput v3, v1, Lorg/jline/builtins/Less;->firstColumnToDisplay:I

    .line 511
    const/4 v12, 0x2

    goto/16 :goto_15

    .line 507
    :pswitch_18
    iget v3, v1, Lorg/jline/builtins/Less;->firstColumnToDisplay:I

    iget-object v8, v1, Lorg/jline/builtins/Less;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v8}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v8

    const/4 v12, 0x2

    div-int/2addr v8, v12

    sub-int/2addr v3, v8

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Lorg/jline/builtins/Less;->firstColumnToDisplay:I

    .line 508
    goto/16 :goto_15

    .line 504
    :pswitch_19
    const/4 v12, 0x2

    invoke-virtual {v1, v14}, Lorg/jline/builtins/Less;->moveForward(I)V

    .line 505
    goto/16 :goto_15

    .line 501
    :pswitch_1a
    const/4 v12, 0x2

    invoke-virtual {v1, v4}, Lorg/jline/builtins/Less;->moveTo(I)V

    .line 502
    goto/16 :goto_15

    .line 493
    :pswitch_1b
    const/4 v12, 0x2

    invoke-virtual {v1, v4}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    .line 494
    .local v3, "lineNum":I
    if-gez v3, :cond_2b

    .line 495
    invoke-virtual {v1, v14}, Lorg/jline/builtins/Less;->moveForward(I)V

    goto/16 :goto_15

    .line 497
    :cond_2b
    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->moveTo(I)V

    .line 499
    goto/16 :goto_15

    .line 490
    .end local v3    # "lineNum":I
    :pswitch_1c
    const/4 v12, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v1, v8}, Lorg/jline/builtins/Less;->moveTo(I)V

    .line 491
    goto :goto_15

    .line 486
    :pswitch_1d
    const/4 v12, 0x2

    iget v3, v1, Lorg/jline/builtins/Less;->halfWindow:I

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v3

    iput v3, v1, Lorg/jline/builtins/Less;->halfWindow:I

    .line 487
    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->moveBackward(I)V

    .line 488
    goto :goto_15

    .line 483
    :pswitch_1e
    const/4 v12, 0x2

    iget v3, v1, Lorg/jline/builtins/Less;->window:I

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->moveBackward(I)V

    .line 484
    goto :goto_15

    .line 479
    :pswitch_1f
    const/4 v12, 0x2

    iget v3, v1, Lorg/jline/builtins/Less;->window:I

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v3

    iput v3, v1, Lorg/jline/builtins/Less;->window:I

    .line 480
    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->moveBackward(I)V

    .line 481
    goto :goto_15

    .line 475
    :pswitch_20
    const/4 v12, 0x2

    iget v3, v1, Lorg/jline/builtins/Less;->halfWindow:I

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v3

    iput v3, v1, Lorg/jline/builtins/Less;->halfWindow:I

    .line 476
    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->moveForward(I)V

    .line 477
    goto :goto_15

    .line 471
    :pswitch_21
    const/4 v12, 0x2

    iget v3, v1, Lorg/jline/builtins/Less;->window:I

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->moveForward(I)V

    .line 473
    goto :goto_15

    .line 467
    :pswitch_22
    const/4 v12, 0x2

    iget v3, v1, Lorg/jline/builtins/Less;->window:I

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v3

    iput v3, v1, Lorg/jline/builtins/Less;->window:I

    .line 468
    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->moveForward(I)V

    .line 469
    goto :goto_15

    .line 464
    :pswitch_23
    const/4 v12, 0x2

    iget v3, v1, Lorg/jline/builtins/Less;->window:I

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->moveForward(I)V

    .line 465
    goto :goto_15

    .line 461
    :pswitch_24
    const/4 v12, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/jline/builtins/Less;->moveBackward(I)V

    .line 462
    goto :goto_15

    .line 458
    :pswitch_25
    const/4 v12, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Less;->getStrictPositiveNumberInBuffer(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/jline/builtins/Less;->moveForward(I)V

    .line 459
    nop

    .line 638
    :goto_15
    iget-object v3, v1, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_16

    .line 454
    :cond_2c
    const/4 v12, 0x2

    .line 640
    :goto_16
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->quitAtFirstEof:Z

    if-eqz v3, :cond_2e

    iget v3, v1, Lorg/jline/builtins/Less;->nbEof:I

    if-gtz v3, :cond_2d

    goto :goto_17

    :cond_2d
    const/4 v8, 0x1

    goto :goto_18

    :cond_2e
    :goto_17
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->quitAtSecondEof:Z

    if-eqz v3, :cond_30

    iget v3, v1, Lorg/jline/builtins/Less;->nbEof:I

    const/4 v8, 0x1

    if-le v3, v8, :cond_31

    .line 641
    :goto_18
    iget v3, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v8

    if-ge v3, v13, :cond_2f

    .line 642
    iget v3, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    add-int/2addr v3, v8

    iput v3, v1, Lorg/jline/builtins/Less;->sourceIdx:I

    .line 643
    invoke-virtual/range {p0 .. p0}, Lorg/jline/builtins/Less;->openSource()V

    goto :goto_19

    .line 645
    :cond_2f
    sget-object v3, Lorg/jline/builtins/Less$Operation;->EXIT:Lorg/jline/builtins/Less$Operation;

    move-object v11, v3

    goto :goto_19

    .line 640
    :cond_30
    const/4 v8, 0x1

    .line 648
    :cond_31
    :goto_19
    invoke-virtual {v1, v4}, Lorg/jline/builtins/Less;->display(Z)Z

    .line 649
    sget-object v3, Lorg/jline/builtins/Less$Operation;->EXIT:Lorg/jline/builtins/Less$Operation;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-ne v11, v3, :cond_35

    .line 653
    .end local v10    # "forward":Z
    .end local v11    # "op":Lorg/jline/builtins/Less$Operation;
    :try_start_b
    iget-object v3, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v3, v9}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 654
    if-eqz v7, :cond_32

    .line 655
    iget-object v3, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v3, v6, v7}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 658
    :cond_32
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->noInit:Z

    if-nez v3, :cond_33

    .line 659
    iget-object v3, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->exit_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v3, v6, v8}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 661
    :cond_33
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->noKeypad:Z

    if-nez v3, :cond_34

    .line 662
    iget-object v3, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->keypad_local:Lorg/jline/utils/InfoCmp$Capability;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v6, v4}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 664
    :cond_34
    iget-object v3, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v3}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v3

    goto :goto_1a

    .line 649
    .restart local v10    # "forward":Z
    .restart local v11    # "op":Lorg/jline/builtins/Less$Operation;
    :cond_35
    move v3, v8

    move v8, v12

    goto/16 :goto_0

    .line 653
    .end local v10    # "forward":Z
    .end local v11    # "op":Lorg/jline/builtins/Less$Operation;
    :catchall_0
    move-exception v0

    move-object v3, v0

    iget-object v6, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v6, v9}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 654
    if-eqz v7, :cond_36

    .line 655
    iget-object v6, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v6, v8, v7}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 658
    :cond_36
    iget-boolean v6, v1, Lorg/jline/builtins/Less;->noInit:Z

    if-nez v6, :cond_37

    .line 659
    iget-object v6, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->exit_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    new-array v10, v4, [Ljava/lang/Object;

    invoke-interface {v6, v8, v10}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 661
    :cond_37
    iget-boolean v6, v1, Lorg/jline/builtins/Less;->noKeypad:Z

    if-nez v6, :cond_38

    .line 662
    iget-object v6, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v8, Lorg/jline/utils/InfoCmp$Capability;->keypad_local:Lorg/jline/utils/InfoCmp$Capability;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v6, v8, v4}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 664
    :cond_38
    iget-object v4, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v4}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 665
    nop

    .end local v5    # "status":Lorg/jline/utils/Status;
    .end local p1    # "sources":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Source;>;"
    throw v3

    .line 650
    .restart local v5    # "status":Lorg/jline/utils/Status;
    .restart local p1    # "sources":Ljava/util/List;, "Ljava/util/List<Lorg/jline/builtins/Source;>;"
    :catch_3
    move-exception v0

    .line 653
    iget-object v3, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v3, v9}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 654
    if-eqz v7, :cond_39

    .line 655
    iget-object v3, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v3, v6, v7}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 658
    :cond_39
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->noInit:Z

    if-nez v3, :cond_3a

    .line 659
    iget-object v3, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->exit_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v3, v6, v8}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 661
    :cond_3a
    iget-boolean v3, v1, Lorg/jline/builtins/Less;->noKeypad:Z

    if-nez v3, :cond_3b

    .line 662
    iget-object v3, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->keypad_local:Lorg/jline/utils/InfoCmp$Capability;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v6, v4}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 664
    :cond_3b
    iget-object v3, v1, Lorg/jline/builtins/Less;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v3}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v3

    :goto_1a
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 665
    nop

    .line 667
    .end local v7    # "prevHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    .end local v9    # "attr":Lorg/jline/terminal/Attributes;
    iget-object v3, v1, Lorg/jline/builtins/Less;->reader:Ljava/io/BufferedReader;

    if-eqz v3, :cond_3c

    .line 668
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 670
    :cond_3c
    if-eqz v5, :cond_3d

    .line 671
    invoke-virtual {v5}, Lorg/jline/utils/Status;->restore()V

    .line 673
    :cond_3d
    iget-object v3, v1, Lorg/jline/builtins/Less;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$PatternHistory;->persist()V

    .line 674
    nop

    .line 675
    return-void

    .line 667
    :catchall_1
    move-exception v0

    move-object v3, v0

    iget-object v4, v1, Lorg/jline/builtins/Less;->reader:Ljava/io/BufferedReader;

    if-eqz v4, :cond_3e

    .line 668
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 670
    :cond_3e
    if-eqz v5, :cond_3f

    .line 671
    invoke-virtual {v5}, Lorg/jline/utils/Status;->restore()V

    .line 673
    :cond_3f
    iget-object v4, v1, Lorg/jline/builtins/Less;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$PatternHistory;->persist()V

    .line 674
    throw v3

    .line 315
    .end local v5    # "status":Lorg/jline/utils/Status;
    :cond_40
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No sources"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public varargs run([Lorg/jline/builtins/Source;)V
    .locals 1
    .param p1, "sources"    # [Lorg/jline/builtins/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 310
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Less;->run(Ljava/util/List;)V

    .line 311
    return-void
.end method

.method public tabs(Ljava/util/List;)Lorg/jline/builtins/Less;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/jline/builtins/Less;"
        }
    .end annotation

    .line 295
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/jline/builtins/Less;->tabs:Ljava/util/List;

    .line 296
    return-object p0
.end method
