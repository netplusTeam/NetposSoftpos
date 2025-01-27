.class public Lorg/jline/builtins/Nano;
.super Ljava/lang/Object;
.source "Nano.java"

# interfaces
.implements Lorg/jline/reader/Editor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/Nano$Operation;,
        Lorg/jline/builtins/Nano$PatternHistory;,
        Lorg/jline/builtins/Nano$Parser;,
        Lorg/jline/builtins/Nano$NanorcParser;,
        Lorg/jline/builtins/Nano$HighlightRule;,
        Lorg/jline/builtins/Nano$SyntaxHighlighter;,
        Lorg/jline/builtins/Nano$Buffer;,
        Lorg/jline/builtins/Nano$CursorMovement;,
        Lorg/jline/builtins/Nano$WriteFormat;,
        Lorg/jline/builtins/Nano$WriteMode;
    }
.end annotation


# instance fields
.field private atBlanks:Z

.field private autoIndent:Z

.field protected final bindingReader:Lorg/jline/keymap/BindingReader;

.field public brackets:Ljava/lang/String;

.field protected buffer:Lorg/jline/builtins/Nano$Buffer;

.field protected bufferIndex:I

.field protected final buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jline/builtins/Nano$Buffer;",
            ">;"
        }
    .end annotation
.end field

.field public constantCursor:Z

.field private cut2end:Z

.field protected cutbuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final display:Lorg/jline/utils/Display;

.field protected final editBuffer:Ljava/lang/StringBuilder;

.field protected editMessage:Ljava/lang/String;

.field protected errorMessage:Ljava/lang/String;

.field protected highlight:Z

.field private historyLog:Ljava/lang/String;

.field protected keys:Lorg/jline/keymap/KeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/builtins/Nano$Operation;",
            ">;"
        }
    .end annotation
.end field

.field protected mark:Z

.field public matchBrackets:Ljava/lang/String;

.field protected matchedLength:I

.field protected message:Ljava/lang/String;

.field public mouseSupport:Z

.field private nanorcIgnoreErrors:Z

.field protected nbBindings:I

.field public oneMoreLine:Z

.field protected patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

.field public printLineNumbers:Z

.field public punct:Ljava/lang/String;

.field public quickBlank:Z

.field public quoteStr:Ljava/lang/String;

.field protected readNewBuffer:Z

.field private restricted:Z

.field protected final root:Ljava/nio/file/Path;

.field protected searchBackwards:Z

.field protected searchCaseSensitive:Z

.field protected searchRegexp:Z

.field protected searchTerm:Ljava/lang/String;

.field private searchToReplace:Z

.field protected shortcuts:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final size:Lorg/jline/terminal/Size;

.field public smoothScrolling:Z

.field private final syntaxFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private syntaxName:Ljava/lang/String;

.field public tabs:I

.field private tabsToSpaces:Z

.field private tempFile:Z

.field protected final terminal:Lorg/jline/terminal/Terminal;

.field public title:Ljava/lang/String;

.field private view:Z

.field protected final vsusp:I

.field public wrapping:Z

.field private writeBackup:Z

.field protected writeMode:Lorg/jline/builtins/Nano$WriteMode;


# direct methods
.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/io/File;)V
    .locals 1
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "root"    # Ljava/io/File;

    .line 1930
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jline/builtins/Nano;-><init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;)V

    .line 1931
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "root"    # Ljava/nio/file/Path;

    .line 1934
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/builtins/Nano;-><init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/builtins/Options;)V

    .line 1935
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/builtins/Options;)V
    .locals 1
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "root"    # Ljava/nio/file/Path;
    .param p3, "opts"    # Lorg/jline/builtins/Options;

    .line 1938
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jline/builtins/Nano;-><init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/builtins/Options;Lorg/jline/builtins/ConfigurationPath;)V

    .line 1939
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/nio/file/Path;Lorg/jline/builtins/Options;Lorg/jline/builtins/ConfigurationPath;)V
    .locals 16
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "root"    # Ljava/nio/file/Path;
    .param p3, "opts"    # Lorg/jline/builtins/Options;
    .param p4, "configPath"    # Lorg/jline/builtins/ConfigurationPath;

    .line 1941
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/jline/builtins/Nano;->syntaxFiles:Ljava/util/List;

    .line 75
    const-string v5, "JLine Nano 3.0.0"

    iput-object v5, v1, Lorg/jline/builtins/Nano;->title:Ljava/lang/String;

    .line 76
    const/4 v5, 0x0

    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    .line 77
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->wrapping:Z

    .line 78
    const/4 v6, 0x1

    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->smoothScrolling:Z

    .line 79
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->mouseSupport:Z

    .line 80
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->oneMoreLine:Z

    .line 81
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->constantCursor:Z

    .line 82
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->quickBlank:Z

    .line 83
    const/4 v7, 0x4

    iput v7, v1, Lorg/jline/builtins/Nano;->tabs:I

    .line 84
    const-string v7, "\"\u2019)>]}"

    iput-object v7, v1, Lorg/jline/builtins/Nano;->brackets:Ljava/lang/String;

    .line 85
    const-string v7, "(<[{)>]}"

    iput-object v7, v1, Lorg/jline/builtins/Nano;->matchBrackets:Ljava/lang/String;

    .line 86
    const-string v7, "!.?"

    iput-object v7, v1, Lorg/jline/builtins/Nano;->punct:Ljava/lang/String;

    .line 87
    const-string v7, "^([ \\t]*[#:>\\|}])+"

    iput-object v7, v1, Lorg/jline/builtins/Nano;->quoteStr:Ljava/lang/String;

    .line 88
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->restricted:Z

    .line 90
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->writeBackup:Z

    .line 91
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->atBlanks:Z

    .line 92
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->view:Z

    .line 93
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->cut2end:Z

    .line 94
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->tempFile:Z

    .line 95
    const/4 v7, 0x0

    iput-object v7, v1, Lorg/jline/builtins/Nano;->historyLog:Ljava/lang/String;

    .line 96
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->tabsToSpaces:Z

    .line 97
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->autoIndent:Z

    .line 100
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    .line 105
    iput-object v7, v1, Lorg/jline/builtins/Nano;->errorMessage:Ljava/lang/String;

    .line 106
    iput v5, v1, Lorg/jline/builtins/Nano;->nbBindings:I

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v8, v1, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    .line 117
    const/4 v8, -0x1

    iput v8, v1, Lorg/jline/builtins/Nano;->matchedLength:I

    .line 118
    new-instance v8, Lorg/jline/builtins/Nano$PatternHistory;

    invoke-direct {v8, v7}, Lorg/jline/builtins/Nano$PatternHistory;-><init>(Ljava/nio/file/Path;)V

    iput-object v8, v1, Lorg/jline/builtins/Nano;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    .line 119
    sget-object v8, Lorg/jline/builtins/Nano$WriteMode;->WRITE:Lorg/jline/builtins/Nano$WriteMode;

    iput-object v8, v1, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    .line 120
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    .line 121
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->mark:Z

    .line 122
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->highlight:Z

    .line 123
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->searchToReplace:Z

    .line 124
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->readNewBuffer:Z

    .line 1942
    iput-object v2, v1, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    .line 1943
    move-object/from16 v8, p2

    iput-object v8, v1, Lorg/jline/builtins/Nano;->root:Ljava/nio/file/Path;

    .line 1944
    new-instance v9, Lorg/jline/utils/Display;

    invoke-direct {v9, v2, v6}, Lorg/jline/utils/Display;-><init>(Lorg/jline/terminal/Terminal;Z)V

    iput-object v9, v1, Lorg/jline/builtins/Nano;->display:Lorg/jline/utils/Display;

    .line 1945
    new-instance v9, Lorg/jline/keymap/BindingReader;

    invoke-interface/range {p1 .. p1}, Lorg/jline/terminal/Terminal;->reader()Lorg/jline/utils/NonBlockingReader;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/jline/keymap/BindingReader;-><init>(Lorg/jline/utils/NonBlockingReader;)V

    iput-object v9, v1, Lorg/jline/builtins/Nano;->bindingReader:Lorg/jline/keymap/BindingReader;

    .line 1946
    new-instance v9, Lorg/jline/terminal/Size;

    invoke-direct {v9}, Lorg/jline/terminal/Size;-><init>()V

    iput-object v9, v1, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    .line 1947
    invoke-interface/range {p1 .. p1}, Lorg/jline/terminal/Terminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v9

    .line 1948
    .local v9, "attrs":Lorg/jline/terminal/Attributes;
    sget-object v10, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v9, v10}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v10

    iput v10, v1, Lorg/jline/builtins/Nano;->vsusp:I

    .line 1949
    if-lez v10, :cond_0

    .line 1950
    sget-object v10, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v9, v10, v5}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 1951
    invoke-interface {v2, v9}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 1953
    :cond_0
    if-eqz v4, :cond_1

    const-string v10, "jnanorc"

    invoke-virtual {v4, v10}, Lorg/jline/builtins/ConfigurationPath;->getConfig(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    goto :goto_0

    :cond_1
    move-object v10, v7

    .line 1954
    .local v10, "nanorc":Ljava/nio/file/Path;
    :goto_0
    if-eqz v3, :cond_2

    const-string v11, "ignorercfiles"

    invoke-virtual {v3, v11}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v6

    goto :goto_1

    :cond_2
    move v11, v5

    .line 1955
    .local v11, "ignorercfiles":Z
    :goto_1
    if-eqz v10, :cond_3

    if-nez v11, :cond_3

    .line 1957
    :try_start_0
    invoke-direct {v1, v10}, Lorg/jline/builtins/Nano;->parseConfig(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1960
    :goto_2
    goto :goto_3

    .line 1958
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 1959
    .local v0, "e":Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Encountered error while reading config file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lorg/jline/builtins/Nano;->errorMessage:Ljava/lang/String;

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 1961
    :cond_3
    new-instance v12, Ljava/io/File;

    const-string v13, "/usr/share/nano"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    if-nez v11, :cond_4

    .line 1962
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v12

    const-string v14, "glob:/usr/share/nano/*.nanorc"

    invoke-virtual {v12, v14}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v12

    .line 1964
    .local v12, "pathMatcher":Ljava/nio/file/PathMatcher;
    :try_start_1
    new-array v14, v5, [Ljava/lang/String;

    invoke-static {v13, v14}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v13

    const v14, 0x7fffffff

    new-instance v15, Lorg/jline/builtins/Nano$$ExternalSyntheticLambda1;

    invoke-direct {v15, v12}, Lorg/jline/builtins/Nano$$ExternalSyntheticLambda1;-><init>(Ljava/nio/file/PathMatcher;)V

    new-array v7, v5, [Ljava/nio/file/FileVisitOption;

    invoke-static {v13, v14, v15, v7}, Ljava/nio/file/Files;->find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 1965
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lorg/jline/builtins/Less$$ExternalSyntheticLambda2;

    invoke-direct {v13, v0}, Lorg/jline/builtins/Less$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1966
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->nanorcIgnoreErrors:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1969
    goto :goto_3

    .line 1967
    :catch_1
    move-exception v0

    .line 1968
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "Encountered error while reading nanorc files"

    iput-object v7, v1, Lorg/jline/builtins/Nano;->errorMessage:Ljava/lang/String;

    .line 1971
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "pathMatcher":Ljava/nio/file/PathMatcher;
    :cond_4
    :goto_3
    if-eqz v3, :cond_17

    .line 1972
    const-string v0, "restricted"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lorg/jline/builtins/Nano;->restricted:Z

    .line 1973
    const/4 v7, 0x0

    iput-object v7, v1, Lorg/jline/builtins/Nano;->syntaxName:Ljava/lang/String;

    .line 1974
    const-string v0, "syntax"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1975
    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/jline/builtins/Nano;->syntaxName:Ljava/lang/String;

    .line 1976
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->nanorcIgnoreErrors:Z

    .line 1978
    :cond_5
    const-string v0, "backup"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1979
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->writeBackup:Z

    .line 1981
    :cond_6
    const-string v0, "quotestr"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1982
    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/jline/builtins/Nano;->quoteStr:Ljava/lang/String;

    .line 1984
    :cond_7
    const-string v0, "tabsize"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1985
    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->getNumber(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lorg/jline/builtins/Nano;->tabs:I

    .line 1987
    :cond_8
    const-string v0, "quickblank"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1988
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->quickBlank:Z

    .line 1990
    :cond_9
    const-string v0, "constantshow"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1991
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->constantCursor:Z

    .line 1993
    :cond_a
    const-string v0, "emptyline"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1994
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->oneMoreLine:Z

    .line 1996
    :cond_b
    const-string v0, "jumpyscrolling"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1997
    iput-boolean v5, v1, Lorg/jline/builtins/Nano;->smoothScrolling:Z

    .line 1999
    :cond_c
    const-string v0, "linenumbers"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2000
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    .line 2002
    :cond_d
    const-string v0, "mouse"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2003
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->mouseSupport:Z

    .line 2005
    :cond_e
    const-string v0, "softwrap"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2006
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->wrapping:Z

    .line 2008
    :cond_f
    const-string v0, "atblanks"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2009
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->atBlanks:Z

    .line 2011
    :cond_10
    const-string v0, "suspend"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2012
    invoke-virtual/range {p0 .. p0}, Lorg/jline/builtins/Nano;->enableSuspension()V

    .line 2014
    :cond_11
    const-string v0, "view"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2015
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->view:Z

    .line 2017
    :cond_12
    const-string v0, "cutfromcursor"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2018
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->cut2end:Z

    .line 2020
    :cond_13
    const-string v0, "tempfile"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2021
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->tempFile:Z

    .line 2023
    :cond_14
    const-string v0, "historylog"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2024
    const-string v0, "historyLog"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/jline/builtins/Nano;->historyLog:Ljava/lang/String;

    .line 2026
    :cond_15
    const-string v0, "tabstospaces"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2027
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->tabsToSpaces:Z

    .line 2029
    :cond_16
    const-string v0, "autoindent"

    invoke-virtual {v3, v0}, Lorg/jline/builtins/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2030
    iput-boolean v6, v1, Lorg/jline/builtins/Nano;->autoIndent:Z

    .line 2033
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/jline/builtins/Nano;->bindKeys()V

    .line 2034
    if-eqz v4, :cond_18

    iget-object v0, v1, Lorg/jline/builtins/Nano;->historyLog:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 2036
    :try_start_2
    new-instance v5, Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v4, v0, v6}, Lorg/jline/builtins/ConfigurationPath;->getUserConfig(Ljava/lang/String;Z)Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/jline/builtins/Nano$PatternHistory;-><init>(Ljava/nio/file/Path;)V

    iput-object v5, v1, Lorg/jline/builtins/Nano;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2039
    goto :goto_4

    .line 2037
    :catch_2
    move-exception v0

    .line 2038
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered error while reading pattern-history file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lorg/jline/builtins/Nano;->historyLog:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/jline/builtins/Nano;->errorMessage:Ljava/lang/String;

    .line 2041
    .end local v0    # "e":Ljava/io/IOException;
    :cond_18
    :goto_4
    return-void
.end method

.method static synthetic access$000(Lorg/jline/builtins/Nano;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Nano;

    .line 60
    iget-object v0, p0, Lorg/jline/builtins/Nano;->syntaxFiles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jline/builtins/Nano;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Nano;

    .line 60
    iget-object v0, p0, Lorg/jline/builtins/Nano;->syntaxName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jline/builtins/Nano;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Nano;

    .line 60
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->nanorcIgnoreErrors:Z

    return v0
.end method

.method static synthetic access$300(Lorg/jline/builtins/Nano;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Nano;

    .line 60
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->tabsToSpaces:Z

    return v0
.end method

.method static synthetic access$400(Lorg/jline/builtins/Nano;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Nano;

    .line 60
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->autoIndent:Z

    return v0
.end method

.method static synthetic access$500(Lorg/jline/builtins/Nano;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Nano;

    .line 60
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->atBlanks:Z

    return v0
.end method

.method static synthetic access$600(Lorg/jline/builtins/Nano;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Nano;

    .line 60
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    return v0
.end method

.method static synthetic access$700(Lorg/jline/builtins/Nano;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Nano;

    .line 60
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->cut2end:Z

    return v0
.end method

.method private editInputBuffer(Lorg/jline/builtins/Nano$Operation;I)I
    .locals 3
    .param p1, "operation"    # Lorg/jline/builtins/Nano$Operation;
    .param p2, "curPos"    # I

    .line 2375
    sget-object v0, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    invoke-virtual {p1}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2380
    :pswitch_0
    if-lez p2, :cond_0

    .line 2381
    iget-object v0, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2377
    :pswitch_1
    iget-object v0, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "curPos":I
    .local v1, "curPos":I
    iget-object v2, p0, Lorg/jline/builtins/Nano;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v2}, Lorg/jline/keymap/BindingReader;->getLastBinding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    move p2, v1

    goto :goto_0

    .line 2390
    .end local v1    # "curPos":I
    .restart local p2    # "curPos":I
    :pswitch_2
    iget-object v0, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 2391
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2385
    :pswitch_3
    if-lez p2, :cond_0

    .line 2386
    add-int/lit8 p2, p2, -0x1

    .line 2395
    :cond_0
    :goto_0
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getReadMessage()Ljava/lang/String;
    .locals 2

    .line 2693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2694
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "File to insert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2695
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->readNewBuffer:Z

    if-eqz v1, :cond_0

    .line 2696
    const-string v1, " into new buffer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2698
    :cond_0
    const-string v1, " [from ./]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSearchMessage()Ljava/lang/String;
    .locals 2

    .line 3209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3210
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3211
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    if-eqz v1, :cond_0

    .line 3212
    const-string v1, " (to replace)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3214
    :cond_0
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->searchCaseSensitive:Z

    if-eqz v1, :cond_1

    .line 3215
    const-string v1, " [Case Sensitive]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3217
    :cond_1
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->searchRegexp:Z

    if-eqz v1, :cond_2

    .line 3218
    const-string v1, " [Regexp]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3220
    :cond_2
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->searchBackwards:Z

    if-eqz v1, :cond_3

    .line 3221
    const-string v1, " [Backwards]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3223
    :cond_3
    iget-object v1, p0, Lorg/jline/builtins/Nano;->searchTerm:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 3224
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3225
    iget-object v1, p0, Lorg/jline/builtins/Nano;->searchTerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3226
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3228
    :cond_4
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getWriteMessage()Ljava/lang/String;
    .locals 3

    .line 2584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2585
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "File Name to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    sget-object v1, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$WriteMode:[I

    iget-object v2, p0, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$WriteMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2594
    :pswitch_0
    const-string v1, "Prepend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2591
    :pswitch_1
    const-string v1, "Append"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2592
    goto :goto_0

    .line 2588
    :pswitch_2
    const-string v1, "Write"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2589
    nop

    .line 2597
    :goto_0
    sget-object v1, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$WriteFormat:[I

    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v2, v2, Lorg/jline/builtins/Nano$Buffer;->format:Lorg/jline/builtins/Nano$WriteFormat;

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$WriteFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 2604
    :pswitch_3
    const-string v1, " [Mac Format]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2601
    :pswitch_4
    const-string v1, " [DOS Format]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2602
    goto :goto_1

    .line 2599
    :pswitch_5
    nop

    .line 2607
    :goto_1
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->writeBackup:Z

    if-eqz v1, :cond_0

    .line 2608
    const-string v1, " [Backup]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2610
    :cond_0
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getYNC(Ljava/lang/String;)Lorg/jline/builtins/Nano$Operation;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 2550
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jline/builtins/Nano;->getYNC(Ljava/lang/String;Z)Lorg/jline/builtins/Nano$Operation;

    move-result-object v0

    return-object v0
.end method

.method private getYNC(Ljava/lang/String;Z)Lorg/jline/builtins/Nano$Operation;
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "andAll"    # Z

    .line 2554
    iget-object v0, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2555
    .local v0, "oldEditMessage":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2556
    .local v1, "oldEditBuffer":Ljava/lang/String;
    iget-object v2, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2558
    .local v2, "oldShortcuts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iput-object p1, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2559
    iget-object v3, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2560
    new-instance v3, Lorg/jline/keymap/KeyMap;

    invoke-direct {v3}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 2561
    .local v3, "yncKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    sget-object v5, Lorg/jline/builtins/Nano$Operation;->YES:Lorg/jline/builtins/Nano$Operation;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/CharSequence;

    const-string v8, "y"

    aput-object v8, v7, v4

    const-string v8, "Y"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v3, v5, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 2562
    if-eqz p2, :cond_0

    .line 2563
    sget-object v5, Lorg/jline/builtins/Nano$Operation;->ALL:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v6, [Ljava/lang/CharSequence;

    const-string v8, "a"

    aput-object v8, v7, v4

    const-string v8, "A"

    aput-object v8, v7, v9

    invoke-virtual {v3, v5, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 2565
    :cond_0
    sget-object v5, Lorg/jline/builtins/Nano$Operation;->NO:Lorg/jline/builtins/Nano$Operation;

    new-array v6, v6, [Ljava/lang/CharSequence;

    const-string v7, "n"

    aput-object v7, v6, v4

    const-string v4, "N"

    aput-object v4, v6, v9

    invoke-virtual {v3, v5, v6}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 2566
    sget-object v4, Lorg/jline/builtins/Nano$Operation;->CANCEL:Lorg/jline/builtins/Nano$Operation;

    const/16 v5, 0x43

    invoke-static {v5}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2567
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2568
    const-string v5, " Y"

    const-string v6, "Yes"

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2569
    if-eqz p2, :cond_1

    .line 2570
    iget-object v4, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    const-string v5, " A"

    const-string v6, "All"

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2572
    :cond_1
    iget-object v4, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    const-string v5, " N"

    const-string v6, "No"

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2573
    iget-object v4, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    const-string v5, "^C"

    const-string v6, "Cancel"

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2574
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->display()V

    .line 2575
    invoke-direct {p0, v3}, Lorg/jline/builtins/Nano;->readOperation(Lorg/jline/keymap/KeyMap;)Lorg/jline/builtins/Nano$Operation;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2577
    iput-object v0, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2578
    iget-object v5, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    iput-object v2, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2575
    return-object v4

    .line 2577
    .end local v3    # "yncKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    :catchall_0
    move-exception v3

    iput-object v0, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2578
    iget-object v4, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    iput-object v2, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2580
    throw v3
.end method

.method private gotoShortcuts()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2777
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2778
    .local v0, "shortcuts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "^G"

    const-string v2, "Get Help"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2779
    const-string v1, "^Y"

    const-string v2, "First Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2780
    const-string v1, "^T"

    const-string v2, "Go To Text"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2781
    const-string v1, "^C"

    const-string v2, "Cancel"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2782
    const-string v1, "^V"

    const-string v2, "Last Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2783
    return-object v0
.end method

.method private helpShortcuts()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2812
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2813
    .local v0, "s":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "^L"

    const-string v2, "Refresh"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2814
    const-string v1, "^Y"

    const-string v2, "Prev Page"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2815
    const-string v1, "^P"

    const-string v2, "Prev Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2816
    const-string v1, "M-\\"

    const-string v2, "First Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2817
    const-string v1, "^X"

    const-string v2, "Exit"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2818
    const-string v1, "^V"

    const-string v2, "Next Page"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2819
    const-string v1, "^N"

    const-string v2, "Next Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2820
    const-string v1, "M-/"

    const-string v2, "Last Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2821
    return-object v0
.end method

.method static synthetic lambda$new$0(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 1
    .param p0, "pathMatcher"    # Ljava/nio/file/PathMatcher;
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "f"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 1964
    invoke-interface {p0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseConfig$1(Ljava/nio/file/PathMatcher;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 1
    .param p0, "pathMatcher"    # Ljava/nio/file/PathMatcher;
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "f"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 2053
    invoke-interface {p0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method private parseConfig(Ljava/nio/file/Path;)V
    .locals 10
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2044
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2045
    .local v0, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 2046
    .local v1, "line":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1e

    .line 2047
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2048
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2049
    invoke-static {v1}, Lorg/jline/builtins/Nano$Parser;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2050
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

    .line 2051
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

    .line 2056
    :cond_0
    iget-object v4, p0, Lorg/jline/builtins/Nano;->syntaxFiles:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v5, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2052
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

    .line 2053
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

    new-instance v7, Lorg/jline/builtins/Nano$$ExternalSyntheticLambda2;

    invoke-direct {v7, v4}, Lorg/jline/builtins/Nano$$ExternalSyntheticLambda2;-><init>(Ljava/nio/file/PathMatcher;)V

    new-array v3, v3, [Ljava/nio/file/FileVisitOption;

    invoke-static {v5, v6, v7, v3}, Ljava/nio/file/Files;->find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v3

    iget-object v5, p0, Lorg/jline/builtins/Nano;->syntaxFiles:Ljava/util/List;

    .line 2054
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lorg/jline/builtins/Less$$ExternalSyntheticLambda2;

    invoke-direct {v6, v5}, Lorg/jline/builtins/Less$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2055
    .end local v4    # "pathMatcher":Ljava/nio/file/PathMatcher;
    goto/16 :goto_5

    .line 2058
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const-string v6, "Nano config: Unknown or unsupported configuration option "

    const/4 v7, 0x2

    const-string v8, "set"

    if-ne v4, v7, :cond_14

    .line 2059
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

    if-eqz v4, :cond_14

    .line 2060
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2061
    .local v4, "option":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2062
    .local v3, "val":Z
    const-string v5, "linenumbers"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2063
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    goto/16 :goto_2

    .line 2064
    :cond_4
    const-string v5, "jumpyscrolling"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2065
    xor-int/lit8 v5, v3, 0x1

    iput-boolean v5, p0, Lorg/jline/builtins/Nano;->smoothScrolling:Z

    goto/16 :goto_2

    .line 2066
    :cond_5
    const-string v5, "smooth"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2067
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->smoothScrolling:Z

    goto/16 :goto_2

    .line 2068
    :cond_6
    const-string v5, "softwrap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2069
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->wrapping:Z

    goto/16 :goto_2

    .line 2070
    :cond_7
    const-string v5, "mouse"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2071
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->mouseSupport:Z

    goto/16 :goto_2

    .line 2072
    :cond_8
    const-string v5, "emptyline"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2073
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->oneMoreLine:Z

    goto/16 :goto_2

    .line 2074
    :cond_9
    const-string v5, "morespace"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2075
    xor-int/lit8 v5, v3, 0x1

    iput-boolean v5, p0, Lorg/jline/builtins/Nano;->oneMoreLine:Z

    goto/16 :goto_2

    .line 2076
    :cond_a
    const-string v5, "constantshow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2077
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->constantCursor:Z

    goto/16 :goto_2

    .line 2078
    :cond_b
    const-string v5, "quickblank"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2079
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->quickBlank:Z

    goto :goto_2

    .line 2080
    :cond_c
    const-string v5, "atblanks"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2081
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->atBlanks:Z

    goto :goto_2

    .line 2082
    :cond_d
    const-string v5, "suspend"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2083
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->enableSuspension()V

    goto :goto_2

    .line 2084
    :cond_e
    const-string v5, "view"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2085
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->view:Z

    goto :goto_2

    .line 2086
    :cond_f
    const-string v5, "cutfromcursor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2087
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->cut2end:Z

    goto :goto_2

    .line 2088
    :cond_10
    const-string v5, "tempfile"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2089
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->tempFile:Z

    goto :goto_2

    .line 2090
    :cond_11
    const-string v5, "tabstospaces"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 2091
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->tabsToSpaces:Z

    goto :goto_2

    .line 2092
    :cond_12
    const-string v5, "autoindent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2093
    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->autoIndent:Z

    goto :goto_2

    .line 2095
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jline/builtins/Nano;->errorMessage:Ljava/lang/String;

    .line 2097
    .end local v3    # "val":Z
    .end local v4    # "option":Ljava/lang/String;
    :goto_2
    goto/16 :goto_5

    :cond_14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x3

    if-ne v4, v9, :cond_1a

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2098
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2099
    .local v3, "option":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2100
    .local v4, "val":Ljava/lang/String;
    const-string v5, "quotestr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2101
    iput-object v4, p0, Lorg/jline/builtins/Nano;->quoteStr:Ljava/lang/String;

    goto :goto_3

    .line 2102
    :cond_15
    const-string v5, "punct"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2103
    iput-object v4, p0, Lorg/jline/builtins/Nano;->punct:Ljava/lang/String;

    goto :goto_3

    .line 2104
    :cond_16
    const-string v5, "matchbrackets"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2105
    iput-object v4, p0, Lorg/jline/builtins/Nano;->matchBrackets:Ljava/lang/String;

    goto :goto_3

    .line 2106
    :cond_17
    const-string v5, "brackets"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2107
    iput-object v4, p0, Lorg/jline/builtins/Nano;->brackets:Ljava/lang/String;

    goto :goto_3

    .line 2108
    :cond_18
    const-string v5, "historylog"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2109
    iput-object v4, p0, Lorg/jline/builtins/Nano;->historyLog:Ljava/lang/String;

    goto :goto_3

    .line 2111
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jline/builtins/Nano;->errorMessage:Ljava/lang/String;

    .line 2113
    .end local v3    # "option":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :goto_3
    goto :goto_5

    :cond_1a
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "bind"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "unbind"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_4

    .line 2116
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nano config: Bad configuration \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/builtins/Nano;->errorMessage:Ljava/lang/String;

    goto :goto_5

    .line 2114
    :cond_1c
    :goto_4
    const-string v3, "Nano config: Key bindings can not be changed!"

    iput-object v3, p0, Lorg/jline/builtins/Nano;->errorMessage:Ljava/lang/String;

    .line 2119
    .end local v2    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    :goto_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 2121
    :cond_1e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 2122
    return-void
.end method

.method private readOperation(Lorg/jline/keymap/KeyMap;)Lorg/jline/builtins/Nano$Operation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/keymap/KeyMap<",
            "Lorg/jline/builtins/Nano$Operation;",
            ">;)",
            "Lorg/jline/builtins/Nano$Operation;"
        }
    .end annotation

    .line 2479
    .local p1, "keymap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/Nano;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v0, p1}, Lorg/jline/keymap/BindingReader;->readBinding(Lorg/jline/keymap/KeyMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Nano$Operation;

    .line 2480
    .local v0, "op":Lorg/jline/builtins/Nano$Operation;
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->DO_LOWER_CASE:Lorg/jline/builtins/Nano$Operation;

    if-ne v0, v1, :cond_0

    .line 2481
    iget-object v1, p0, Lorg/jline/builtins/Nano;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v1}, Lorg/jline/keymap/BindingReader;->getLastBinding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/keymap/BindingReader;->runMacro(Ljava/lang/String;)V

    .line 2485
    .end local v0    # "op":Lorg/jline/builtins/Nano$Operation;
    goto :goto_0

    .line 2483
    .restart local v0    # "op":Lorg/jline/builtins/Nano$Operation;
    :cond_0
    return-object v0
.end method

.method private readShortcuts()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2787
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2788
    .local v0, "shortcuts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "^G"

    const-string v2, "Get Help"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2789
    const-string v1, "^T"

    const-string v2, "To Files"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2790
    const-string v1, "M-F"

    const-string v2, "New Buffer"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2791
    const-string v1, "^C"

    const-string v2, "Cancel"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2792
    const-string v1, "^X"

    const-string v2, "Execute Command"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2793
    return-object v0
.end method

.method private replaceShortcuts()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2848
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2849
    .local v0, "s":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "^G"

    const-string v2, "Get Help"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    const-string v1, "^Y"

    const-string v2, "First Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2851
    const-string v1, "^P"

    const-string v2, "PrevHstory"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2852
    const-string v1, "^C"

    const-string v2, "Cancel"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    const-string v1, "^V"

    const-string v2, "Last Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2854
    const-string v1, "^N"

    const-string v2, "NextHstory"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2855
    return-object v0
.end method

.method private save(Ljava/lang/String;)Z
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2489
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v0, v0, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/builtins/Nano;->root:Ljava/nio/file/Path;

    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v1, v1, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2490
    .local v0, "orgPath":Ljava/nio/file/Path;
    :goto_0
    iget-object v1, p0, Lorg/jline/builtins/Nano;->root:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 2491
    .local v1, "newPath":Ljava/nio/file/Path;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 2492
    .local v4, "isSame":Z
    :goto_1
    if-nez v4, :cond_3

    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    sget-object v6, Lorg/jline/builtins/Nano$WriteMode;->WRITE:Lorg/jline/builtins/Nano$WriteMode;

    if-ne v5, v6, :cond_3

    .line 2493
    const-string v5, "File exists, OVERWRITE ? "

    invoke-direct {p0, v5}, Lorg/jline/builtins/Nano;->getYNC(Ljava/lang/String;)Lorg/jline/builtins/Nano$Operation;

    move-result-object v5

    .line 2494
    .local v5, "op":Lorg/jline/builtins/Nano$Operation;
    sget-object v6, Lorg/jline/builtins/Nano$Operation;->YES:Lorg/jline/builtins/Nano$Operation;

    if-eq v5, v6, :cond_2

    .line 2495
    return v3

    .line 2494
    .end local v5    # "op":Lorg/jline/builtins/Nano$Operation;
    :cond_2
    goto :goto_2

    .line 2497
    :cond_3
    new-array v5, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2498
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    goto :goto_3

    .line 2497
    :cond_4
    :goto_2
    nop

    .line 2500
    :goto_3
    new-array v5, v3, [Ljava/nio/file/attribute/FileAttribute;

    const-string v6, "jline-"

    const-string v7, ".temp"

    invoke-static {v6, v7, v5}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v5

    .line 2501
    .local v5, "t":Ljava/nio/file/Path;
    const/4 v6, 0x3

    :try_start_0
    new-array v6, v6, [Ljava/nio/file/OpenOption;

    sget-object v7, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v7, v6, v3

    sget-object v7, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v7, v6, v2

    const/4 v7, 0x2

    sget-object v8, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2504
    .local v6, "os":Ljava/io/OutputStream;
    :try_start_1
    iget-object v7, p0, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    sget-object v8, Lorg/jline/builtins/Nano$WriteMode;->APPEND:Lorg/jline/builtins/Nano$WriteMode;

    if-ne v7, v8, :cond_5

    .line 2505
    invoke-static {v1}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2506
    invoke-static {v1, v6}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 2509
    :cond_5
    new-instance v7, Ljava/io/OutputStreamWriter;

    iget-object v8, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v8, v8, Lorg/jline/builtins/Nano$Buffer;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2510
    .local v7, "w":Ljava/io/Writer;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    iget-object v9, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v9, v9, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 2511
    iget-object v9, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v9, v9, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2512
    sget-object v9, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$WriteFormat:[I

    iget-object v10, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v10, v10, Lorg/jline/builtins/Nano$Buffer;->format:Lorg/jline/builtins/Nano$WriteFormat;

    invoke-virtual {v10}, Lorg/jline/builtins/Nano$WriteFormat;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_5

    .line 2520
    :pswitch_0
    const-string v9, "\r"

    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5

    .line 2517
    :pswitch_1
    const-string v9, "\r\n"

    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2518
    goto :goto_5

    .line 2514
    :pswitch_2
    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2515
    nop

    .line 2510
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2524
    .end local v8    # "i":I
    :cond_6
    invoke-virtual {v7}, Ljava/io/Writer;->flush()V

    .line 2525
    iget-object v8, p0, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    sget-object v9, Lorg/jline/builtins/Nano$WriteMode;->PREPEND:Lorg/jline/builtins/Nano$WriteMode;

    if-ne v8, v9, :cond_7

    .line 2526
    invoke-static {v1}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2527
    invoke-static {v1, v6}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 2530
    :cond_7
    iget-boolean v8, p0, Lorg/jline/builtins/Nano;->writeBackup:Z

    if-eqz v8, :cond_8

    .line 2531
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "~"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    new-array v9, v2, [Ljava/nio/file/CopyOption;

    sget-object v10, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v10, v9, v3

    invoke-static {v1, v8, v9}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 2533
    :cond_8
    new-array v8, v2, [Ljava/nio/file/CopyOption;

    sget-object v9, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v9, v8, v3

    invoke-static {v5, v1, v8}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 2534
    iget-object v8, p0, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    sget-object v9, Lorg/jline/builtins/Nano$WriteMode;->WRITE:Lorg/jline/builtins/Nano$WriteMode;

    if-ne v8, v9, :cond_9

    .line 2535
    iget-object v8, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iput-object p1, v8, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    .line 2536
    iget-object v8, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iput-boolean v3, v8, Lorg/jline/builtins/Nano$Buffer;->dirty:Z

    .line 2538
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrote "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v9, v9, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " lines"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2539
    nop

    .line 2540
    if-eqz v6, :cond_a

    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2544
    :cond_a
    invoke-static {v5}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 2545
    sget-object v3, Lorg/jline/builtins/Nano$WriteMode;->WRITE:Lorg/jline/builtins/Nano$WriteMode;

    iput-object v3, p0, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    .line 2539
    return v2

    .line 2501
    .end local v7    # "w":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_b

    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v2, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "orgPath":Ljava/nio/file/Path;
    .end local v1    # "newPath":Ljava/nio/file/Path;
    .end local v4    # "isSame":Z
    .end local v5    # "t":Ljava/nio/file/Path;
    .end local p1    # "name":Ljava/lang/String;
    :cond_b
    :goto_6
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2544
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v0    # "orgPath":Ljava/nio/file/Path;
    .restart local v1    # "newPath":Ljava/nio/file/Path;
    .restart local v4    # "isSame":Z
    .restart local v5    # "t":Ljava/nio/file/Path;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v2

    goto :goto_7

    .line 2540
    :catch_0
    move-exception v2

    .line 2541
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2542
    nop

    .line 2544
    invoke-static {v5}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 2545
    sget-object v6, Lorg/jline/builtins/Nano$WriteMode;->WRITE:Lorg/jline/builtins/Nano$WriteMode;

    iput-object v6, p0, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    .line 2542
    return v3

    .line 2544
    .end local v2    # "e":Ljava/io/IOException;
    :goto_7
    invoke-static {v5}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 2545
    sget-object v3, Lorg/jline/builtins/Nano$WriteMode;->WRITE:Lorg/jline/builtins/Nano$WriteMode;

    iput-object v3, p0, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    .line 2546
    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private searchShortcuts()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2825
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2826
    .local v0, "s":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "^G"

    const-string v2, "Get Help"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2827
    const-string v1, "^Y"

    const-string v2, "First Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2828
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    const-string v2, "^R"

    if-eqz v1, :cond_0

    .line 2829
    const-string v1, "No Replace"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2831
    :cond_0
    const-string v1, "Replace"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2832
    const-string v1, "^W"

    const-string v2, "Beg of Par"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2834
    :goto_0
    const-string v1, "M-C"

    const-string v2, "Case Sens"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2835
    const-string v1, "M-R"

    const-string v2, "Regexp"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2836
    const-string v1, "^C"

    const-string v2, "Cancel"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    const-string v1, "^V"

    const-string v2, "Last Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2838
    const-string v1, "^T"

    const-string v2, "Go To Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2839
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    if-nez v1, :cond_1

    .line 2840
    const-string v1, "^O"

    const-string v2, "End of Par"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2842
    :cond_1
    const-string v1, "M-B"

    const-string v2, "Backwards"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2843
    const-string v1, "^P"

    const-string v2, "PrevHstory"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2844
    return-object v0
.end method

.method private standardShortcuts()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2859
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2860
    .local v0, "s":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "^G"

    const-string v2, "Get Help"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2861
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->view:Z

    if-nez v1, :cond_0

    .line 2862
    const-string v1, "^O"

    const-string v2, "WriteOut"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2864
    :cond_0
    const-string v1, "^R"

    const-string v2, "Read File"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2865
    const-string v1, "^Y"

    const-string v2, "Prev Page"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2866
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->view:Z

    if-nez v1, :cond_1

    .line 2867
    const-string v1, "^K"

    const-string v2, "Cut Text"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2869
    :cond_1
    const-string v1, "^C"

    const-string v2, "Cur Pos"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2870
    const-string v1, "^X"

    const-string v2, "Exit"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2871
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->view:Z

    if-nez v1, :cond_2

    .line 2872
    const-string v1, "^J"

    const-string v2, "Justify"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2874
    :cond_2
    const-string v1, "^W"

    const-string v2, "Where Is"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2875
    const-string v1, "^V"

    const-string v2, "Next Page"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2876
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->view:Z

    if-nez v1, :cond_3

    .line 2877
    const-string v1, "^U"

    const-string v2, "UnCut Text"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2879
    :cond_3
    const-string v1, "^T"

    const-string v2, "To Spell"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2880
    return-object v0
.end method

.method public static usage()[Ljava/lang/String;
    .locals 27

    .line 146
    const-string v0, "nano -  edit files"

    const-string v1, "Usage: nano [OPTIONS] [FILES]"

    const-string v2, "  -? --help                    Show help"

    const-string v3, "  -B --backup                  When saving a file, back up the previous version of it, using the current filename"

    const-string v4, "                               suffixed with a tilde (~)."

    const-string v5, "  -I --ignorercfiles           Don\'t look at the system\'s nanorc nor at the user\'s nanorc."

    const-string v6, "  -Q --quotestr=regex          Set the regular expression for matching the quoting part of a line."

    const-string v7, "  -T --tabsize=number          Set the size (width) of a tab to number columns."

    const-string v8, "  -U --quickblank              Do quick status-bar blanking: status-bar messages will disappear after 1 keystroke."

    const-string v9, "  -c --constantshow            Constantly show the cursor position on the status bar."

    const-string v10, "  -e --emptyline               Do not use the line below the title bar, leaving it entirely blank."

    const-string v11, "  -j --jumpyscrolling          Scroll the buffer contents per half-screen instead of per line."

    const-string v12, "  -l --linenumbers             Display line numbers to the left of the text area."

    const-string v13, "  -m --mouse                   Enable mouse support, if available for your system."

    const-string v14, "  -$ --softwrap                Enable \'soft wrapping\'. "

    const-string v15, "  -a --atblanks                Wrap lines at whitespace instead of always at the edge of the screen."

    const-string v16, "  -R --restricted              Restricted mode: don\'t allow suspending; don\'t allow a file to be appended to,"

    const-string v17, "                               prepended to, or saved under a different name if it already has one;"

    const-string v18, "                               and don\'t use backup files."

    const-string v19, "  -Y --syntax=name             The name of the syntax highlighting to use."

    const-string v20, "  -z --suspend                 Enable the ability to suspend nano using the system\'s suspend keystroke (usually ^Z)."

    const-string v21, "  -v --view                    Don\'t allow the contents of the file to be altered: read-only mode."

    const-string v22, "  -k --cutfromcursor           Make the \'Cut Text\' command cut from the current cursor position to the end of the line"

    const-string v23, "  -t --tempfile                Save a changed buffer without prompting (when exiting with ^X)."

    const-string v24, "  -H --historylog=name         Log search strings to file, so they can be retrieved in later sessions"

    const-string v25, "  -E --tabstospaces            Convert typed tabs to spaces."

    const-string v26, "  -i --autoindent              Indent new lines to the previous line\'s indentation."

    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeShortcuts()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2797
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2798
    .local v0, "s":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "^G"

    const-string v2, "Get Help"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    const-string v1, "M-M"

    const-string v2, "Mac Format"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2800
    const-string v1, "^C"

    const-string v2, "Cancel"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2801
    const-string v1, "M-D"

    const-string v2, "DOS Format"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2802
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->restricted:Z

    if-nez v1, :cond_0

    .line 2803
    const-string v1, "^T"

    const-string v2, "To Files"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2804
    const-string v1, "M-P"

    const-string v2, "Prepend"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2805
    const-string v1, "M-A"

    const-string v2, "Append"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2806
    const-string v1, "M-B"

    const-string v2, "Backup File"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2808
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected bindKeys()V
    .locals 11

    .line 3562
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    .line 3563
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->view:Z

    const/16 v2, 0x5c

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v1, :cond_2

    .line 3564
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v0, v1}, Lorg/jline/keymap/KeyMap;->setUnicode(Ljava/lang/Object;)V

    .line 3566
    const/16 v0, 0x20

    .local v0, "i":C
    :goto_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 3567
    iget-object v1, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v7, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3566
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_0

    .line 3569
    .end local v0    # "i":C
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->BACKSPACE:Lorg/jline/builtins/Nano$Operation;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3570
    const/16 v0, 0x41

    .restart local v0    # "i":C
    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 3571
    iget-object v1, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v7, Lorg/jline/builtins/Nano$Operation;->DO_LOWER_CASE:Lorg/jline/builtins/Nano$Operation;

    invoke-static {v0}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3570
    add-int/lit8 v1, v0, 0x1

    int-to-char v0, v1

    goto :goto_1

    .line 3573
    .end local v0    # "i":C
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->WRITE:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x4f

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f3:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3574
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->JUSTIFY_PARAGRAPH:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x4a

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f4:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3575
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->CUT:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x4b

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f9:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3576
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->UNCUT:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x55

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f10:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3577
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->REPLACE:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v3, [Ljava/lang/CharSequence;

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f14:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/16 v8, 0x72

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3578
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->MARK:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v3, [Ljava/lang/CharSequence;

    const/16 v8, 0x5e

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v4

    iget-object v9, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v10, Lorg/jline/utils/InfoCmp$Capability;->key_f15:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v9, v10}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    const/16 v9, 0x61

    invoke-static {v9}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3579
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->COPY:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/16 v8, 0x36

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3580
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->INDENT:Lorg/jline/builtins/Nano$Operation;

    const/16 v7, 0x7d

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3581
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->UNINDENT:Lorg/jline/builtins/Nano$Operation;

    const/16 v7, 0x7b

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3582
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->VERBATIM:Lorg/jline/builtins/Nano$Operation;

    const/16 v7, 0x76

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3583
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x49

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/16 v8, 0x4d

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3584
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->DELETE:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x44

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_dc:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3585
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->BACKSPACE:Lorg/jline/builtins/Nano$Operation;

    const/16 v7, 0x48

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3586
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->CUT_TO_END:Lorg/jline/builtins/Nano$Operation;

    const/16 v7, 0x74

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3587
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->JUSTIFY_FILE:Lorg/jline/builtins/Nano$Operation;

    const/16 v7, 0x6a

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3588
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->AUTO_INDENT:Lorg/jline/builtins/Nano$Operation;

    const/16 v7, 0x69

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3589
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->CUT_TO_END_TOGGLE:Lorg/jline/builtins/Nano$Operation;

    const/16 v7, 0x6b

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3590
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->TABS_TO_SPACE:Lorg/jline/builtins/Nano$Operation;

    const/16 v7, 0x71

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3592
    :cond_2
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->NEXT_PAGE:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const-string v8, " "

    aput-object v8, v7, v4

    const-string v8, "f"

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3593
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->PREV_PAGE:Lorg/jline/builtins/Nano$Operation;

    const-string v7, "b"

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3595
    :goto_2
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->NEXT_PAGE:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x56

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f8:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3596
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->PREV_PAGE:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x59

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f7:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3598
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->HELP:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x47

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f1:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3599
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->QUIT:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x58

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f2:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3601
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->READ:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x52

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f5:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3602
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->SEARCH:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x57

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f6:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3604
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->CUR_POS:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x43

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f11:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3605
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->TO_SPELL:Lorg/jline/builtins/Nano$Operation;

    new-array v7, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x54

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f11:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v1, v7}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3607
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->GOTO:Lorg/jline/builtins/Nano$Operation;

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/16 v7, 0x5f

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f13:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    const/16 v8, 0x67

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3608
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->NEXT_SEARCH:Lorg/jline/builtins/Nano$Operation;

    new-array v3, v5, [Ljava/lang/CharSequence;

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_f16:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    const/16 v8, 0x77

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3610
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->RIGHT:Lorg/jline/builtins/Nano$Operation;

    const/16 v3, 0x46

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3611
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->LEFT:Lorg/jline/builtins/Nano$Operation;

    const/16 v3, 0x42

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3612
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->NEXT_WORD:Lorg/jline/builtins/Nano$Operation;

    const/16 v3, 0x20

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3613
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->PREV_WORD:Lorg/jline/builtins/Nano$Operation;

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3614
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->UP:Lorg/jline/builtins/Nano$Operation;

    const/16 v3, 0x50

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3615
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->DOWN:Lorg/jline/builtins/Nano$Operation;

    const/16 v3, 0x4e

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3617
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->BEGINNING_OF_LINE:Lorg/jline/builtins/Nano$Operation;

    new-array v3, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x41

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_home:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3618
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->END_OF_LINE:Lorg/jline/builtins/Nano$Operation;

    new-array v3, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x45

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v9, Lorg/jline/utils/InfoCmp$Capability;->key_end:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v8, v9}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3619
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->BEGINNING_OF_PARAGRAPH:Lorg/jline/builtins/Nano$Operation;

    new-array v3, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x28

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    const/16 v8, 0x39

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3620
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->END_OF_PARAGRAPH:Lorg/jline/builtins/Nano$Operation;

    new-array v3, v5, [Ljava/lang/CharSequence;

    const/16 v8, 0x29

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    const/16 v8, 0x30

    invoke-static {v8}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3621
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->FIRST_LINE:Lorg/jline/builtins/Nano$Operation;

    new-array v3, v5, [Ljava/lang/CharSequence;

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/16 v2, 0x7c

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3622
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->LAST_LINE:Lorg/jline/builtins/Nano$Operation;

    new-array v2, v5, [Ljava/lang/CharSequence;

    const/16 v3, 0x2f

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x3f

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3624
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->MATCHING:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x5d

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3625
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->SCROLL_UP:Lorg/jline/builtins/Nano$Operation;

    new-array v2, v5, [Ljava/lang/CharSequence;

    const/16 v3, 0x2d

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v7}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3626
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->SCROLL_DOWN:Lorg/jline/builtins/Nano$Operation;

    new-array v2, v5, [Ljava/lang/CharSequence;

    const/16 v3, 0x2b

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x3d

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3628
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->PREV_BUFFER:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x3c

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3629
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->NEXT_BUFFER:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x3e

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3630
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->PREV_BUFFER:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x2c

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3631
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->NEXT_BUFFER:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x2e

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3633
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->COUNT:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x64

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3634
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->CLEAR_SCREEN:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x4c

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3636
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->HELP:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x78

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3637
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->CONSTANT_CURSOR:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x63

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3638
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->ONE_MORE_LINE:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x6f

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3639
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->SMOOTH_SCROLLING:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x73

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3640
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->MOUSE_SUPPORT:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x6d

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3641
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->WHITESPACE:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x70

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3642
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->HIGHLIGHT:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x79

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3644
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->SMART_HOME_KEY:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x68

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3645
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->WRAP:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x6c

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3647
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->BACKUP:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x62

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3648
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->NUMBERS:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x6e

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3650
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->UP:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_up:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3651
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->DOWN:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_down:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3652
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->RIGHT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3653
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->LEFT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3654
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->MOUSE_EVENT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_mouse:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3655
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->TOGGLE_SUSPENSION:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x7a

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3656
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->NEXT_PAGE:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_npage:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3657
    iget-object v0, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    sget-object v1, Lorg/jline/builtins/Nano$Operation;->PREV_PAGE:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_ppage:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3658
    return-void
.end method

.method clearScreen()V
    .locals 0

    .line 3379
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->resetDisplay()V

    .line 3380
    return-void
.end method

.method computeCurPos()Ljava/lang/String;
    .locals 13

    .line 3233
    const/4 v0, 0x0

    .line 3234
    .local v0, "chari":I
    const/4 v1, 0x0

    .line 3235
    .local v1, "chart":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v3, v3, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3236
    iget-object v3, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v3, v3, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 3237
    .local v3, "l":I
    iget-object v4, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v4, v4, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-ge v2, v4, :cond_0

    .line 3238
    add-int/2addr v0, v3

    goto :goto_1

    .line 3239
    :cond_0
    iget-object v4, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v4, v4, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-ne v2, v4, :cond_1

    .line 3240
    iget-object v4, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v4, v4, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget-object v5, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v5, v5, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 3242
    :cond_1
    :goto_1
    add-int/2addr v1, v3

    .line 3235
    .end local v3    # "l":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3245
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3246
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3247
    iget-object v3, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v3, v3, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3248
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3249
    iget-object v4, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v4, v4, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3250
    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3251
    iget-object v5, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v5, v5, Lorg/jline/builtins/Nano$Buffer;->line:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    iget-object v9, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v9, v9, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3252
    const-string v5, "%), "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3253
    const-string v6, "col "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3254
    iget-object v6, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v6, v6, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget-object v9, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v9, v9, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3256
    iget-object v6, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v9, v6, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget-object v10, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v10, v10, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lorg/jline/builtins/Nano$Buffer;->access$800(Lorg/jline/builtins/Nano$Buffer;Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3257
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3258
    iget-object v6, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v6, v6, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget-object v9, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v9, v9, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 3259
    iget-object v6, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v6, v6, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget-object v9, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v9, v9, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v6, v9

    int-to-double v9, v6

    mul-double/2addr v9, v7

    iget-object v6, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v11, v6, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget-object v12, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v12, v12, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 3260
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v6, v11}, Lorg/jline/builtins/Nano$Buffer;->access$800(Lorg/jline/builtins/Nano$Buffer;Ljava/lang/String;)I

    move-result v6

    int-to-double v11, v6

    div-double/2addr v9, v11

    .line 3259
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3262
    :cond_3
    const-string v6, "100"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3264
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3265
    const-string v5, "char "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3266
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3268
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3269
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3270
    int-to-double v3, v0

    mul-double/2addr v3, v7

    int-to-double v5, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3271
    const-string v3, "%)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected computeFooter()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation

    .line 3490
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3492
    .local v1, "footer":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget-object v2, v0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/16 v5, 0xa

    if-eqz v2, :cond_1

    .line 3493
    new-instance v2, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v2}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 3494
    .local v2, "sb":Lorg/jline/utils/AttributedStringBuilder;
    sget-object v6, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v2, v6}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3495
    iget-object v6, v0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3496
    iget-object v6, v0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3497
    iget-object v6, v0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v6, v7

    .local v6, "i":I
    :goto_0
    iget-object v7, v0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v7}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 3498
    invoke-virtual {v2, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 3497
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3500
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {v2, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 3501
    invoke-virtual {v2}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3502
    .end local v2    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    goto :goto_3

    :cond_1
    iget-object v2, v0, Lorg/jline/builtins/Nano;->message:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lorg/jline/builtins/Nano;->constantCursor:Z

    if-eqz v2, :cond_2

    goto :goto_1

    .line 3515
    :cond_2
    new-instance v2, Lorg/jline/utils/AttributedString;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3503
    :cond_3
    :goto_1
    iget-object v2, v0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    .line 3504
    .local v2, "rwidth":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/jline/builtins/Nano;->message:Ljava/lang/String;

    if-nez v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/jline/builtins/Nano;->computeCurPos()Ljava/lang/String;

    move-result-object v7

    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3505
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 3506
    .local v7, "len":I
    new-instance v8, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v8}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 3507
    .local v8, "sb":Lorg/jline/utils/AttributedStringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    sub-int v10, v2, v7

    div-int/2addr v10, v4

    if-ge v9, v10, :cond_5

    .line 3508
    invoke-virtual {v8, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 3507
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3510
    .end local v9    # "i":I
    :cond_5
    sget-object v3, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v8, v3}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3511
    invoke-virtual {v8, v6}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3512
    invoke-virtual {v8, v5}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 3513
    invoke-virtual {v8}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3514
    .end local v2    # "rwidth":I
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "len":I
    .end local v8    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    nop

    .line 3518
    :goto_3
    iget-object v2, v0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3519
    .local v2, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v3, v0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    const/4 v6, 0x1

    add-int/2addr v3, v6

    div-int/2addr v3, v4

    .line 3520
    .local v3, "cols":I
    iget-object v7, v0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v7}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v7

    sub-int/2addr v7, v6

    div-int/2addr v7, v3

    .line 3521
    .local v7, "cw":I
    iget-object v8, v0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v8}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v8

    sub-int/2addr v8, v6

    rem-int/2addr v8, v3

    .line 3522
    .local v8, "rem":I
    const/4 v9, 0x0

    .local v9, "l":I
    :goto_4
    if-ge v9, v4, :cond_d

    .line 3523
    new-instance v10, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v10}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 3524
    .local v10, "sb":Lorg/jline/utils/AttributedStringBuilder;
    const/4 v11, 0x0

    .local v11, "c":I
    :goto_5
    if-ge v11, v3, :cond_c

    .line 3525
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    .line 3526
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_6
    const-string v13, ""

    if-eqz v12, :cond_7

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object v14, v13

    .line 3527
    .local v14, "key":Ljava/lang/String;
    :goto_7
    if-eqz v12, :cond_8

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3528
    .local v13, "val":Ljava/lang/String;
    :cond_8
    sget-object v15, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v10, v15}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3529
    invoke-virtual {v10, v14}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3530
    sget-object v15, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v10, v15}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3531
    const-string v15, " "

    invoke-virtual {v10, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3532
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v16, v7, v16

    add-int/lit8 v16, v16, -0x1

    const/4 v4, 0x0

    if-ge v11, v8, :cond_9

    move/from16 v17, v6

    goto :goto_8

    :cond_9
    move/from16 v17, v4

    :goto_8
    add-int v6, v16, v17

    .line 3533
    .local v6, "nb":I
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_a

    .line 3534
    invoke-virtual {v13, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_a

    .line 3536
    :cond_a
    invoke-virtual {v10, v13}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3537
    add-int/lit8 v4, v3, -0x1

    if-ge v11, v4, :cond_b

    .line 3538
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v6, v5

    if-ge v4, v5, :cond_b

    .line 3539
    invoke-virtual {v10, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 3538
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 3524
    .end local v4    # "i":I
    .end local v6    # "nb":I
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "val":Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/String;
    :cond_b
    :goto_a
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x2

    const/16 v5, 0xa

    const/4 v6, 0x1

    goto :goto_5

    .line 3544
    .end local v11    # "c":I
    :cond_c
    const/16 v4, 0xa

    invoke-virtual {v10, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 3545
    invoke-virtual {v10}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3522
    .end local v10    # "sb":Lorg/jline/utils/AttributedStringBuilder;
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    const/4 v4, 0x2

    const/4 v6, 0x1

    goto/16 :goto_4

    .line 3548
    .end local v9    # "l":I
    :cond_d
    return-object v1
.end method

.method constantCursor()V
    .locals 2

    .line 3362
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->constantCursor:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/Nano;->constantCursor:Z

    .line 3363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constant cursor position display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->constantCursor:Z

    if-eqz v1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3364
    return-void
.end method

.method curPos()V
    .locals 1

    .line 3276
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->computeCurPos()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3277
    return-void
.end method

.method declared-synchronized display()V
    .locals 1

    monitor-enter p0

    .line 3458
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->display(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3459
    monitor-exit p0

    return-void

    .line 3457
    .end local p0    # "this":Lorg/jline/builtins/Nano;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized display(Ljava/lang/Integer;)V
    .locals 9
    .param p1, "editCursor"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 3462
    :try_start_0
    iget v0, p0, Lorg/jline/builtins/Nano;->nbBindings:I

    if-lez v0, :cond_0

    .line 3463
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jline/builtins/Nano;->nbBindings:I

    if-nez v0, :cond_0

    .line 3464
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/builtins/Nano;->message:Ljava/lang/String;

    .line 3468
    .end local p0    # "this":Lorg/jline/builtins/Nano;
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v0}, Lorg/jline/builtins/Nano$Buffer;->computeHeader()Ljava/util/List;

    move-result-object v0

    .line 3469
    .local v0, "header":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->computeFooter()Ljava/util/List;

    move-result-object v1

    .line 3471
    .local v1, "footer":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget-object v2, p0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getRows()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 3472
    .local v2, "nbLines":I
    iget-object v3, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v3, v2}, Lorg/jline/builtins/Nano$Buffer;->getDisplayedLines(I)Ljava/util/List;

    move-result-object v3

    .line 3473
    .local v3, "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 3474
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3478
    iget-object v4, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 3479
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 3480
    .local v4, "crsr":I
    :goto_0
    iget-object v5, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    .line 3481
    .local v5, "cursor":I
    iget-object v6, p0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v6}, Lorg/jline/terminal/Size;->getRows()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7, v5}, Lorg/jline/terminal/Size;->cursorPos(II)I

    move-result v6

    move v4, v6

    .line 3482
    .end local v5    # "cursor":I
    .local v4, "cursor":I
    goto :goto_1

    .line 3483
    .end local v4    # "cursor":I
    :cond_2
    iget-object v4, p0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    .line 3484
    invoke-virtual {v6}, Lorg/jline/builtins/Nano$Buffer;->getDisplayedCursor()I

    move-result v6

    .line 3483
    invoke-virtual {v4, v5, v6}, Lorg/jline/terminal/Size;->cursorPos(II)I

    move-result v4

    .line 3486
    .restart local v4    # "cursor":I
    :goto_1
    iget-object v5, p0, Lorg/jline/builtins/Nano;->display:Lorg/jline/utils/Display;

    invoke-virtual {v5, v3, v4}, Lorg/jline/utils/Display;->update(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3487
    monitor-exit p0

    return-void

    .line 3461
    .end local v0    # "header":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v1    # "footer":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v2    # "nbLines":I
    .end local v3    # "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    .end local v4    # "cursor":I
    .end local p1    # "editCursor":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method enableSuspension()V
    .locals 3

    .line 3419
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->restricted:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/jline/builtins/Nano;->vsusp:I

    if-gez v0, :cond_0

    .line 3420
    iget-object v0, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v0

    .line 3421
    .local v0, "attrs":Lorg/jline/terminal/Attributes;
    sget-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    iget v2, p0, Lorg/jline/builtins/Nano;->vsusp:I

    invoke-virtual {v0, v1, v2}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 3422
    iget-object v1, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v1, v0}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 3424
    .end local v0    # "attrs":Lorg/jline/terminal/Attributes;
    :cond_0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 3446
    iget-object v0, p0, Lorg/jline/builtins/Nano;->title:Ljava/lang/String;

    return-object v0
.end method

.method gotoLine()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2703
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 2704
    .local v0, "readKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v0, v1}, Lorg/jline/keymap/KeyMap;->setUnicode(Ljava/lang/Object;)V

    .line 2705
    const/16 v1, 0x20

    .local v1, "i":C
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 2706
    sget-object v2, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2705
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 2708
    .end local v1    # "i":C
    :cond_0
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->BACKSPACE:Lorg/jline/builtins/Nano$Operation;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2709
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->ACCEPT:Lorg/jline/builtins/Nano$Operation;

    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2710
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->HELP:Lorg/jline/builtins/Nano$Operation;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/CharSequence;

    const/16 v4, 0x47

    invoke-static {v4}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->key_f1:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v4, v6}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 2711
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->CANCEL:Lorg/jline/builtins/Nano$Operation;

    const/16 v3, 0x43

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2712
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->RIGHT:Lorg/jline/builtins/Nano$Operation;

    iget-object v3, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v4, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v3, v4}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2713
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->LEFT:Lorg/jline/builtins/Nano$Operation;

    iget-object v3, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v4, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v3, v4}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2714
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->FIRST_LINE:Lorg/jline/builtins/Nano$Operation;

    const/16 v3, 0x59

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2715
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->LAST_LINE:Lorg/jline/builtins/Nano$Operation;

    const/16 v3, 0x56

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2716
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->SEARCH:Lorg/jline/builtins/Nano$Operation;

    const/16 v3, 0x54

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2718
    const-string v1, "Enter line number, column number: "

    iput-object v1, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2719
    iget-object v1, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2720
    iget-object v1, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2721
    .local v1, "curPos":I
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->gotoShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2722
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano;->display(Ljava/lang/Integer;)V

    .line 2724
    :goto_1
    invoke-direct {p0, v0}, Lorg/jline/builtins/Nano;->readOperation(Lorg/jline/keymap/KeyMap;)Lorg/jline/builtins/Nano$Operation;

    move-result-object v3

    .line 2725
    .local v3, "op":Lorg/jline/builtins/Nano$Operation;
    sget-object v4, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    invoke-virtual {v3}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v7

    aget v4, v4, v7

    const/4 v7, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 2769
    invoke-direct {p0, v3, v1}, Lorg/jline/builtins/Nano;->editInputBuffer(Lorg/jline/builtins/Nano$Operation;I)I

    move-result v1

    goto/16 :goto_6

    .line 2745
    :sswitch_0
    iput-object v7, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2746
    iget-object v4, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 2747
    .local v4, "pos":[Ljava/lang/String;
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 2749
    .local v2, "args":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    :try_start_0
    array-length v8, v4

    if-ge v7, v8, :cond_3

    .line 2750
    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 2751
    aget-object v8, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v8, v6

    aput v8, v2, v7

    .line 2752
    aget v8, v2, v7

    if-ltz v8, :cond_1

    goto :goto_3

    .line 2753
    :cond_1
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5}, Ljava/lang/NumberFormatException;-><init>()V

    .end local v0    # "readKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    .end local v1    # "curPos":I
    .end local v2    # "args":[I
    .end local v3    # "op":Lorg/jline/builtins/Nano$Operation;
    .end local v4    # "pos":[Ljava/lang/String;
    throw v5

    .line 2749
    .restart local v0    # "readKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    .restart local v1    # "curPos":I
    .restart local v2    # "args":[I
    .restart local v3    # "op":Lorg/jline/builtins/Nano$Operation;
    .restart local v4    # "pos":[Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2757
    .end local v7    # "i":I
    :cond_3
    iget-object v7, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    aget v6, v2, v6

    aget v5, v2, v5

    invoke-virtual {v7, v6, v5}, Lorg/jline/builtins/Nano$Buffer;->gotoLine(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2760
    :catch_0
    move-exception v5

    .line 2761
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Internal error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    goto :goto_5

    .line 2758
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 2759
    .local v5, "ex":Ljava/lang/NumberFormatException;
    const-string v6, "Invalid line or column number"

    invoke-virtual {p0, v6}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 2762
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    :goto_4
    nop

    .line 2763
    :goto_5
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v5

    iput-object v5, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2764
    return-void

    .line 2727
    .end local v2    # "args":[I
    .end local v4    # "pos":[Ljava/lang/String;
    :sswitch_1
    iput-object v7, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2728
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2729
    return-void

    .line 2766
    :sswitch_2
    const-string v4, "nano-goto-help.txt"

    invoke-virtual {p0, v4}, Lorg/jline/builtins/Nano;->help(Ljava/lang/String;)V

    .line 2767
    goto :goto_6

    .line 2741
    :sswitch_3
    iput-boolean v5, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    .line 2742
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->searchAndReplace()V

    .line 2743
    return-void

    .line 2736
    :sswitch_4
    iput-object v7, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2737
    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$Buffer;->lastLine()V

    .line 2738
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2739
    return-void

    .line 2731
    :sswitch_5
    iput-object v7, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2732
    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$Buffer;->firstLine()V

    .line 2733
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2734
    return-void

    .line 2772
    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jline/builtins/Nano;->display(Ljava/lang/Integer;)V

    .line 2773
    .end local v3    # "op":Lorg/jline/builtins/Nano$Operation;
    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1e -> :sswitch_3
        0x21 -> :sswitch_2
        0x31 -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected handle(Lorg/jline/terminal/Terminal$Signal;)V
    .locals 3
    .param p1, "signal"    # Lorg/jline/terminal/Terminal$Signal;

    .line 3552
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    if-eqz v0, :cond_0

    .line 3553
    iget-object v0, p0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    iget-object v1, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 3554
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v0}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 3555
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v1, v0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v2, v2, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/jline/builtins/Nano$Buffer;->moveToChar(I)V

    .line 3556
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->resetDisplay()V

    .line 3557
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->display()V

    .line 3559
    :cond_0
    return-void
.end method

.method help(Ljava/lang/String;)V
    .locals 14
    .param p1, "help"    # Ljava/lang/String;

    .line 2884
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    .line 2885
    .local v0, "org":Lorg/jline/builtins/Nano$Buffer;
    new-instance v1, Lorg/jline/builtins/Nano$Buffer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/jline/builtins/Nano$Buffer;-><init>(Lorg/jline/builtins/Nano;Ljava/lang/String;)V

    .line 2886
    .local v1, "newBuf":Lorg/jline/builtins/Nano$Buffer;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2887
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/jline/builtins/Nano$Buffer;->open(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2888
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2891
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    nop

    .line 2892
    iget-object v3, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2893
    .local v3, "oldShortcuts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->helpShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2894
    iget-boolean v4, p0, Lorg/jline/builtins/Nano;->wrapping:Z

    .line 2895
    .local v4, "oldWrapping":Z
    iget-boolean v5, p0, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    .line 2896
    .local v5, "oldPrintLineNumbers":Z
    iget-boolean v6, p0, Lorg/jline/builtins/Nano;->constantCursor:Z

    .line 2897
    .local v6, "oldConstantCursor":Z
    iget-boolean v7, p0, Lorg/jline/builtins/Nano;->atBlanks:Z

    .line 2898
    .local v7, "oldAtBlanks":Z
    iget-boolean v8, p0, Lorg/jline/builtins/Nano;->highlight:Z

    .line 2899
    .local v8, "oldHighlight":Z
    iget-object v9, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2900
    .local v9, "oldEditMessage":Ljava/lang/String;
    const-string v10, ""

    iput-object v10, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2901
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/jline/builtins/Nano;->wrapping:Z

    .line 2902
    iput-boolean v10, p0, Lorg/jline/builtins/Nano;->atBlanks:Z

    .line 2903
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    .line 2904
    iput-boolean v11, p0, Lorg/jline/builtins/Nano;->constantCursor:Z

    .line 2905
    iput-boolean v11, p0, Lorg/jline/builtins/Nano;->highlight:Z

    .line 2906
    iput-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    .line 2907
    if-nez v4, :cond_1

    .line 2908
    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 2911
    :cond_1
    :try_start_3
    iput-object v2, p0, Lorg/jline/builtins/Nano;->message:Ljava/lang/String;

    .line 2912
    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v12, Lorg/jline/utils/InfoCmp$Capability;->cursor_invisible:Lorg/jline/utils/InfoCmp$Capability;

    new-array v13, v11, [Ljava/lang/Object;

    invoke-interface {v2, v12, v13}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 2913
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->display()V

    .line 2915
    :goto_0
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    iget-object v12, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    invoke-direct {p0, v12}, Lorg/jline/builtins/Nano;->readOperation(Lorg/jline/keymap/KeyMap;)Lorg/jline/builtins/Nano$Operation;

    move-result-object v12

    invoke-virtual {v12}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v12

    aget v2, v2, v12

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 2943
    :sswitch_0
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->toggleSuspension()V

    goto :goto_1

    .line 2940
    :sswitch_1
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->mouseEvent()V

    .line 2941
    goto :goto_1

    .line 2928
    :sswitch_2
    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$Buffer;->nextPage()V

    .line 2929
    goto :goto_1

    .line 2925
    :sswitch_3
    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$Buffer;->prevPage()V

    .line 2926
    goto :goto_1

    .line 2922
    :sswitch_4
    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$Buffer;->lastLine()V

    .line 2923
    goto :goto_1

    .line 2919
    :sswitch_5
    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$Buffer;->firstLine()V

    .line 2920
    goto :goto_1

    .line 2937
    :sswitch_6
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->clearScreen()V

    .line 2938
    goto :goto_1

    .line 2934
    :sswitch_7
    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v2, v10}, Lorg/jline/builtins/Nano$Buffer;->scrollDown(I)V

    .line 2935
    goto :goto_1

    .line 2931
    :sswitch_8
    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v2, v10}, Lorg/jline/builtins/Nano$Buffer;->scrollUp(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2932
    goto :goto_1

    .line 2949
    :sswitch_9
    iput-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    .line 2950
    iput-boolean v4, p0, Lorg/jline/builtins/Nano;->wrapping:Z

    .line 2951
    iput-boolean v5, p0, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    .line 2952
    iput-boolean v6, p0, Lorg/jline/builtins/Nano;->constantCursor:Z

    .line 2953
    iput-object v3, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2954
    iput-boolean v7, p0, Lorg/jline/builtins/Nano;->atBlanks:Z

    .line 2955
    iput-boolean v8, p0, Lorg/jline/builtins/Nano;->highlight:Z

    .line 2956
    iput-object v9, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2957
    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v10, Lorg/jline/utils/InfoCmp$Capability;->cursor_visible:Lorg/jline/utils/InfoCmp$Capability;

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v2, v10, v11}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 2958
    if-nez v4, :cond_2

    .line 2959
    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 2917
    :cond_2
    return-void

    .line 2946
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->display()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2949
    :catchall_0
    move-exception v2

    iput-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    .line 2950
    iput-boolean v4, p0, Lorg/jline/builtins/Nano;->wrapping:Z

    .line 2951
    iput-boolean v5, p0, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    .line 2952
    iput-boolean v6, p0, Lorg/jline/builtins/Nano;->constantCursor:Z

    .line 2953
    iput-object v3, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2954
    iput-boolean v7, p0, Lorg/jline/builtins/Nano;->atBlanks:Z

    .line 2955
    iput-boolean v8, p0, Lorg/jline/builtins/Nano;->highlight:Z

    .line 2956
    iput-object v9, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2957
    iget-object v10, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v12, Lorg/jline/utils/InfoCmp$Capability;->cursor_visible:Lorg/jline/utils/InfoCmp$Capability;

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v10, v12, v11}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 2958
    if-nez v4, :cond_3

    .line 2959
    iget-object v10, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v10}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 2961
    :cond_3
    throw v2

    .line 2886
    .end local v4    # "oldWrapping":Z
    .end local v5    # "oldPrintLineNumbers":Z
    .end local v6    # "oldConstantCursor":Z
    .end local v7    # "oldAtBlanks":Z
    .end local v8    # "oldHighlight":Z
    .end local v9    # "oldEditMessage":Ljava/lang/String;
    .local v3, "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "org":Lorg/jline/builtins/Nano$Buffer;
    .end local v1    # "newBuf":Lorg/jline/builtins/Nano$Buffer;
    .end local p1    # "help":Ljava/lang/String;
    :cond_4
    :goto_2
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2888
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "org":Lorg/jline/builtins/Nano$Buffer;
    .restart local v1    # "newBuf":Lorg/jline/builtins/Nano$Buffer;
    .restart local p1    # "help":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2889
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Unable to read help"

    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 2890
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x4 -> :sswitch_8
        0x5 -> :sswitch_7
        0x10 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_3
        0x1b -> :sswitch_2
        0x25 -> :sswitch_1
        0x26 -> :sswitch_0
    .end sparse-switch
.end method

.method mouseEvent()V
    .locals 13

    .line 3383
    iget-object v0, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->readMouseEvent()Lorg/jline/terminal/MouseEvent;

    move-result-object v0

    .line 3384
    .local v0, "event":Lorg/jline/terminal/MouseEvent;
    invoke-virtual {v0}, Lorg/jline/terminal/MouseEvent;->getModifiers()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/jline/terminal/MouseEvent;->getType()Lorg/jline/terminal/MouseEvent$Type;

    move-result-object v1

    sget-object v3, Lorg/jline/terminal/MouseEvent$Type;->Released:Lorg/jline/terminal/MouseEvent$Type;

    if-ne v1, v3, :cond_4

    .line 3385
    invoke-virtual {v0}, Lorg/jline/terminal/MouseEvent;->getButton()Lorg/jline/terminal/MouseEvent$Button;

    move-result-object v1

    sget-object v3, Lorg/jline/terminal/MouseEvent$Button;->Button1:Lorg/jline/terminal/MouseEvent$Button;

    if-ne v1, v3, :cond_4

    .line 3386
    invoke-virtual {v0}, Lorg/jline/terminal/MouseEvent;->getX()I

    move-result v1

    .line 3387
    .local v1, "x":I
    invoke-virtual {v0}, Lorg/jline/terminal/MouseEvent;->getY()I

    move-result v3

    .line 3388
    .local v3, "y":I
    iget-object v4, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$Buffer;->computeHeader()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 3389
    .local v4, "hdr":I
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->computeFooter()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 3390
    .local v5, "ftr":I
    if-ge v3, v4, :cond_0

    goto :goto_1

    .line 3392
    :cond_0
    iget-object v6, p0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v6}, Lorg/jline/terminal/Size;->getRows()I

    move-result v6

    sub-int/2addr v6, v5

    if-ge v3, v6, :cond_1

    .line 3393
    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    sub-int v6, v3, v4

    invoke-virtual {v2, v1, v6}, Lorg/jline/builtins/Nano$Buffer;->moveTo(II)V

    goto :goto_1

    .line 3395
    :cond_1
    iget-object v6, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    add-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    .line 3396
    .local v6, "cols":I
    iget-object v7, p0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v7}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v7

    div-int/2addr v7, v6

    .line 3397
    .local v7, "cw":I
    iget-object v8, p0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v8}, Lorg/jline/terminal/Size;->getRows()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int v8, v3, v8

    sub-int/2addr v8, v2

    .line 3398
    .local v8, "l":I
    mul-int v2, v8, v6

    div-int v9, v1, v7

    add-int/2addr v2, v9

    .line 3399
    .local v2, "si":I
    const/4 v9, 0x0

    .line 3400
    .local v9, "shortcut":Ljava/lang/String;
    iget-object v10, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 3401
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    add-int/lit8 v11, v2, -0x1

    .end local v2    # "si":I
    .local v11, "si":I
    if-ltz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    move v2, v11

    goto :goto_0

    .line 3402
    :cond_2
    if-eqz v9, :cond_3

    .line 3403
    const-string v2, "M-"

    const-string v12, "\\\\E"

    invoke-virtual {v9, v2, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3404
    .end local v9    # "shortcut":Ljava/lang/String;
    .local v2, "shortcut":Ljava/lang/String;
    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3405
    .local v9, "seq":Ljava/lang/String;
    iget-object v12, p0, Lorg/jline/builtins/Nano;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v12, v9}, Lorg/jline/keymap/BindingReader;->runMacro(Ljava/lang/String;)V

    .line 3408
    .end local v1    # "x":I
    .end local v2    # "shortcut":Ljava/lang/String;
    .end local v3    # "y":I
    .end local v4    # "hdr":I
    .end local v5    # "ftr":I
    .end local v6    # "cols":I
    .end local v7    # "cw":I
    .end local v8    # "l":I
    .end local v9    # "seq":Ljava/lang/String;
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "si":I
    :cond_3
    :goto_1
    goto :goto_2

    .line 3409
    :cond_4
    invoke-virtual {v0}, Lorg/jline/terminal/MouseEvent;->getType()Lorg/jline/terminal/MouseEvent$Type;

    move-result-object v1

    sget-object v3, Lorg/jline/terminal/MouseEvent$Type;->Wheel:Lorg/jline/terminal/MouseEvent$Type;

    if-ne v1, v3, :cond_6

    .line 3410
    invoke-virtual {v0}, Lorg/jline/terminal/MouseEvent;->getButton()Lorg/jline/terminal/MouseEvent$Button;

    move-result-object v1

    sget-object v3, Lorg/jline/terminal/MouseEvent$Button;->WheelDown:Lorg/jline/terminal/MouseEvent$Button;

    if-ne v1, v3, :cond_5

    .line 3411
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Nano$Buffer;->moveDown(I)V

    goto :goto_2

    .line 3412
    :cond_5
    invoke-virtual {v0}, Lorg/jline/terminal/MouseEvent;->getButton()Lorg/jline/terminal/MouseEvent$Button;

    move-result-object v1

    sget-object v3, Lorg/jline/terminal/MouseEvent$Button;->WheelUp:Lorg/jline/terminal/MouseEvent$Button;

    if-ne v1, v3, :cond_6

    .line 3413
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Nano$Buffer;->moveUp(I)V

    .line 3416
    :cond_6
    :goto_2
    return-void
.end method

.method mouseSupport()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3356
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->mouseSupport:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/Nano;->mouseSupport:Z

    .line 3357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mouse support "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->mouseSupport:Z

    if-eqz v1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3358
    iget-object v0, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->mouseSupport:Z

    if-eqz v1, :cond_1

    sget-object v1, Lorg/jline/terminal/Terminal$MouseTracking;->Normal:Lorg/jline/terminal/Terminal$MouseTracking;

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/jline/terminal/Terminal$MouseTracking;->Off:Lorg/jline/terminal/Terminal$MouseTracking;

    :goto_1
    invoke-interface {v0, v1}, Lorg/jline/terminal/Terminal;->trackMouse(Lorg/jline/terminal/Terminal$MouseTracking;)Z

    .line 3359
    return-void
.end method

.method nextBuffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3292
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3293
    iget v0, p0, Lorg/jline/builtins/Nano;->bufferIndex:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/jline/builtins/Nano;->bufferIndex:I

    .line 3294
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Nano$Buffer;

    iput-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    .line 3295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switched to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3296
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v0}, Lorg/jline/builtins/Nano$Buffer;->open()V

    .line 3297
    iget-object v0, p0, Lorg/jline/builtins/Nano;->display:Lorg/jline/utils/Display;

    invoke-virtual {v0}, Lorg/jline/utils/Display;->clear()V

    goto :goto_0

    .line 3299
    :cond_0
    const-string v0, "No more open file buffers"

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3301
    :goto_0
    return-void
.end method

.method numbers()V
    .locals 2

    .line 3345
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    .line 3346
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->resetDisplay()V

    .line 3347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lines numbering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    if-eqz v1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3348
    return-void
.end method

.method oneMoreLine()V
    .locals 2

    .line 3367
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->oneMoreLine:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/Nano;->oneMoreLine:Z

    .line 3368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use of one more line for editing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->oneMoreLine:Z

    if-eqz v1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3369
    return-void
.end method

.method public open(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2133
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2134
    .local v1, "file":Ljava/lang/String;
    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "user.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_1
    move-object v1, v2

    .line 2135
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 2140
    :cond_1
    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    new-instance v3, Lorg/jline/builtins/Nano$Buffer;

    invoke-direct {v3, p0, v1}, Lorg/jline/builtins/Nano$Buffer;-><init>(Lorg/jline/builtins/Nano;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2136
    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/jline/builtins/Nano;->root:Ljava/nio/file/Path;

    invoke-static {v2, v1}, Lorg/jline/builtins/Commands;->findFiles(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    .line 2137
    .local v3, "p":Ljava/nio/file/Path;
    iget-object v4, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    new-instance v5, Lorg/jline/builtins/Nano$Buffer;

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lorg/jline/builtins/Nano$Buffer;-><init>(Lorg/jline/builtins/Nano;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2138
    .end local v3    # "p":Ljava/nio/file/Path;
    goto :goto_3

    :cond_3
    nop

    .line 2142
    .end local v1    # "file":Ljava/lang/String;
    :goto_4
    goto :goto_0

    .line 2143
    :cond_4
    return-void
.end method

.method public varargs open([Ljava/lang/String;)V
    .locals 1
    .param p1, "files"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2129
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->open(Ljava/util/List;)V

    .line 2130
    return-void
.end method

.method prevBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3280
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3281
    iget v0, p0, Lorg/jline/builtins/Nano;->bufferIndex:I

    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/jline/builtins/Nano;->bufferIndex:I

    .line 3282
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Nano$Buffer;

    iput-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    .line 3283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switched to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3284
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v0}, Lorg/jline/builtins/Nano$Buffer;->open()V

    .line 3285
    iget-object v0, p0, Lorg/jline/builtins/Nano;->display:Lorg/jline/utils/Display;

    invoke-virtual {v0}, Lorg/jline/utils/Display;->clear()V

    goto :goto_0

    .line 3287
    :cond_0
    const-string v0, "No more open file buffers"

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3289
    :goto_0
    return-void
.end method

.method quit()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3309
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-boolean v0, v0, Lorg/jline/builtins/Nano$Buffer;->dirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3310
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->tempFile:Z

    if-eqz v0, :cond_0

    .line 3311
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->write()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3312
    return v1

    .line 3315
    :cond_0
    const-string v0, "Save modified buffer (ANSWERING \"No\" WILL DESTROY CHANGES) ? "

    invoke-direct {p0, v0}, Lorg/jline/builtins/Nano;->getYNC(Ljava/lang/String;)Lorg/jline/builtins/Nano$Operation;

    move-result-object v0

    .line 3316
    .local v0, "op":Lorg/jline/builtins/Nano$Operation;
    sget-object v2, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    invoke-virtual {v0}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 3320
    :sswitch_0
    goto :goto_0

    .line 3322
    :sswitch_1
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->write()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3323
    return v1

    .line 3318
    :sswitch_2
    return v1

    .line 3328
    .end local v0    # "op":Lorg/jline/builtins/Nano$Operation;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    iget v2, p0, Lorg/jline/builtins/Nano;->bufferIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3329
    iget v0, p0, Lorg/jline/builtins/Nano;->bufferIndex:I

    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/jline/builtins/Nano;->bufferIndex:I

    if-lez v0, :cond_2

    .line 3330
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/jline/builtins/Nano;->bufferIndex:I

    .line 3332
    :cond_2
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3333
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    .line 3334
    return v3

    .line 3336
    :cond_3
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    iget v2, p0, Lorg/jline/builtins/Nano;->bufferIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Nano$Buffer;

    iput-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    .line 3337
    invoke-virtual {v0}, Lorg/jline/builtins/Nano$Buffer;->open()V

    .line 3338
    iget-object v0, p0, Lorg/jline/builtins/Nano;->display:Lorg/jline/utils/Display;

    invoke-virtual {v0}, Lorg/jline/utils/Display;->clear()V

    .line 3339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switched to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$Buffer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3340
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_2
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
    .end sparse-switch
.end method

.method read()V
    .locals 11

    .line 2615
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 2616
    .local v0, "readKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v0, v1}, Lorg/jline/keymap/KeyMap;->setUnicode(Ljava/lang/Object;)V

    .line 2617
    const/16 v1, 0x20

    .local v1, "i":C
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 2618
    sget-object v2, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2617
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 2620
    .end local v1    # "i":C
    :cond_0
    const/16 v1, 0x41

    .restart local v1    # "i":C
    :goto_1
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_1

    .line 2621
    sget-object v2, Lorg/jline/builtins/Nano$Operation;->DO_LOWER_CASE:Lorg/jline/builtins/Nano$Operation;

    invoke-static {v1}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2620
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_1

    .line 2623
    .end local v1    # "i":C
    :cond_1
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->BACKSPACE:Lorg/jline/builtins/Nano$Operation;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2624
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->NEW_BUFFER:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x66

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2625
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->TO_FILES:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x54

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2626
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->EXECUTE:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x58

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2627
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->ACCEPT:Lorg/jline/builtins/Nano$Operation;

    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2628
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->CANCEL:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x43

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2629
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->HELP:Lorg/jline/builtins/Nano$Operation;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/16 v3, 0x47

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->key_f1:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v3, v5}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 2630
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->MOUSE_EVENT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_mouse:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2631
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->RIGHT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2632
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->LEFT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2634
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->getReadMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2635
    iget-object v1, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2636
    iget-object v1, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2637
    .local v1, "curPos":I
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->readShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2638
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jline/builtins/Nano;->display(Ljava/lang/Integer;)V

    .line 2640
    :goto_2
    invoke-direct {p0, v0}, Lorg/jline/builtins/Nano;->readOperation(Lorg/jline/keymap/KeyMap;)Lorg/jline/builtins/Nano$Operation;

    move-result-object v2

    .line 2641
    .local v2, "op":Lorg/jline/builtins/Nano$Operation;
    sget-object v3, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const/4 v6, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 2684
    invoke-direct {p0, v2, v1}, Lorg/jline/builtins/Nano;->editInputBuffer(Lorg/jline/builtins/Nano$Operation;I)I

    move-result v1

    goto/16 :goto_7

    .line 2678
    :sswitch_0
    iget-boolean v3, p0, Lorg/jline/builtins/Nano;->readNewBuffer:Z

    xor-int/2addr v3, v5

    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->readNewBuffer:Z

    .line 2679
    goto/16 :goto_7

    .line 2647
    :sswitch_1
    iput-object v6, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2648
    iget-object v3, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2649
    .local v3, "file":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    .line 2650
    .local v7, "empty":Z
    if-eqz v7, :cond_2

    move-object v8, v6

    goto :goto_3

    :cond_2
    iget-object v8, p0, Lorg/jline/builtins/Nano;->root:Ljava/nio/file/Path;

    invoke-interface {v8, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    .line 2651
    .local v8, "p":Ljava/nio/file/Path;
    :goto_3
    iget-boolean v9, p0, Lorg/jline/builtins/Nano;->readNewBuffer:Z

    const-string v10, "\""

    if-nez v9, :cond_3

    if-nez v7, :cond_3

    new-array v9, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v8, v9}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2653
    :cond_3
    if-nez v7, :cond_4

    new-array v9, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v8, v9}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2654
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is a directory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2655
    :cond_4
    if-nez v7, :cond_5

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v8, v4}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is not a regular file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    goto :goto_6

    .line 2658
    :cond_5
    new-instance v4, Lorg/jline/builtins/Nano$Buffer;

    if-eqz v7, :cond_6

    move-object v9, v6

    goto :goto_4

    :cond_6
    move-object v9, v3

    :goto_4
    invoke-direct {v4, p0, v9}, Lorg/jline/builtins/Nano$Buffer;-><init>(Lorg/jline/builtins/Nano;Ljava/lang/String;)V

    .line 2660
    .local v4, "buf":Lorg/jline/builtins/Nano$Buffer;
    :try_start_0
    invoke-virtual {v4}, Lorg/jline/builtins/Nano$Buffer;->open()V

    .line 2661
    iget-boolean v9, p0, Lorg/jline/builtins/Nano;->readNewBuffer:Z

    if-eqz v9, :cond_7

    .line 2662
    iget-object v9, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    iget v10, p0, Lorg/jline/builtins/Nano;->bufferIndex:I

    add-int/2addr v10, v5

    iput v10, p0, Lorg/jline/builtins/Nano;->bufferIndex:I

    invoke-interface {v9, v10, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2663
    iput-object v4, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    goto :goto_5

    .line 2665
    :cond_7
    iget-object v5, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    const-string v9, "\n"

    iget-object v10, v4, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-static {v9, v10}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/jline/builtins/Nano$Buffer;->insert(Ljava/lang/String;)V

    .line 2667
    :goto_5
    invoke-virtual {p0, v6}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2670
    goto :goto_6

    .line 2668
    :catch_0
    move-exception v5

    .line 2669
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ": "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 2672
    .end local v4    # "buf":Lorg/jline/builtins/Nano$Buffer;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_6
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2673
    return-void

    .line 2643
    .end local v3    # "file":Ljava/lang/String;
    .end local v7    # "empty":Z
    .end local v8    # "p":Ljava/nio/file/Path;
    :sswitch_2
    iput-object v6, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2644
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2645
    return-void

    .line 2681
    :sswitch_3
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->mouseEvent()V

    .line 2682
    goto :goto_7

    .line 2675
    :sswitch_4
    const-string v3, "nano-read-help.txt"

    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano;->help(Ljava/lang/String;)V

    .line 2676
    nop

    .line 2687
    :goto_7
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->getReadMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2688
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano;->display(Ljava/lang/Integer;)V

    .line 2689
    .end local v2    # "op":Lorg/jline/builtins/Nano$Operation;
    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_4
        0x25 -> :sswitch_3
        0x31 -> :sswitch_2
        0x32 -> :sswitch_1
        0x38 -> :sswitch_0
    .end sparse-switch
.end method

.method replace()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3129
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 3130
    .local v0, "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v0, v1}, Lorg/jline/keymap/KeyMap;->setUnicode(Ljava/lang/Object;)V

    .line 3132
    const/16 v1, 0x20

    .local v1, "i":C
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 3133
    sget-object v2, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3132
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 3135
    .end local v1    # "i":C
    :cond_0
    const/16 v1, 0x41

    .restart local v1    # "i":C
    :goto_1
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_1

    .line 3136
    sget-object v2, Lorg/jline/builtins/Nano$Operation;->DO_LOWER_CASE:Lorg/jline/builtins/Nano$Operation;

    invoke-static {v1}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3135
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_1

    .line 3138
    .end local v1    # "i":C
    :cond_1
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->BACKSPACE:Lorg/jline/builtins/Nano$Operation;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3139
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->ACCEPT:Lorg/jline/builtins/Nano$Operation;

    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3140
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->CANCEL:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x43

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3141
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->HELP:Lorg/jline/builtins/Nano$Operation;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/16 v3, 0x47

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->key_f1:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v3, v5}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3142
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->FIRST_LINE:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x59

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3143
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->LAST_LINE:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x56

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3144
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->RIGHT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3145
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->LEFT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3146
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->UP:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_up:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3147
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->DOWN:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_down:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3149
    const-string v1, "Replace with: "

    iput-object v1, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 3150
    iget-object v1, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3151
    iget-object v1, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3152
    .local v1, "currentBuffer":Ljava/lang/String;
    iget-object v2, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 3153
    .local v2, "curPos":I
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->replaceShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 3154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano;->display(Ljava/lang/Integer;)V

    .line 3157
    :goto_2
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/jline/builtins/Nano;->readOperation(Lorg/jline/keymap/KeyMap;)Lorg/jline/builtins/Nano$Operation;

    move-result-object v5

    .line 3158
    .local v5, "op":Lorg/jline/builtins/Nano$Operation;
    sget-object v6, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    invoke-virtual {v5}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    sparse-switch v6, :sswitch_data_0

    .line 3196
    invoke-direct {p0, v5, v2}, Lorg/jline/builtins/Nano;->editInputBuffer(Lorg/jline/builtins/Nano$Operation;I)I

    move-result v6

    goto/16 :goto_3

    .line 3172
    :sswitch_0
    const-string v4, ""

    .line 3173
    .local v4, "replaceTerm":Ljava/lang/String;
    iget-object v6, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 3174
    iget-object v6, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 3176
    :cond_2
    if-eqz v4, :cond_3

    .line 3180
    iget-object v6, p0, Lorg/jline/builtins/Nano;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v6, v4}, Lorg/jline/builtins/Nano$PatternHistory;->add(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3182
    nop

    .line 3203
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v6

    iput-object v6, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 3204
    iput-object v3, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 3182
    return-object v4

    .line 3177
    :cond_3
    :try_start_1
    const-string v6, "Cancelled"

    invoke-virtual {p0, v6}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3178
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v0    # "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    .end local v1    # "currentBuffer":Ljava/lang/String;
    .end local v2    # "curPos":I
    throw v6

    .line 3170
    .end local v4    # "replaceTerm":Ljava/lang/String;
    .restart local v0    # "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    .restart local v1    # "currentBuffer":Ljava/lang/String;
    .restart local v2    # "curPos":I
    :sswitch_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v0    # "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    .end local v1    # "currentBuffer":Ljava/lang/String;
    .end local v2    # "curPos":I
    throw v4

    .line 3193
    .restart local v0    # "keyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    .restart local v1    # "currentBuffer":Ljava/lang/String;
    .restart local v2    # "curPos":I
    :sswitch_2
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->mouseEvent()V

    .line 3194
    goto :goto_4

    .line 3184
    :sswitch_3
    const-string v6, "nano-replace-help.txt"

    invoke-virtual {p0, v6}, Lorg/jline/builtins/Nano;->help(Ljava/lang/String;)V

    .line 3185
    goto :goto_4

    .line 3190
    :sswitch_4
    iget-object v6, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v6}, Lorg/jline/builtins/Nano$Buffer;->lastLine()V

    .line 3191
    goto :goto_4

    .line 3187
    :sswitch_5
    iget-object v6, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v6}, Lorg/jline/builtins/Nano$Buffer;->firstLine()V

    .line 3188
    goto :goto_4

    .line 3165
    :sswitch_6
    iget-object v6, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3166
    iget-object v6, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/jline/builtins/Nano;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v7, v1}, Lorg/jline/builtins/Nano$PatternHistory;->down(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3167
    iget-object v6, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move v2, v6

    .line 3168
    goto :goto_4

    .line 3160
    :sswitch_7
    iget-object v6, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3161
    iget-object v6, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/jline/builtins/Nano;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v7, v1}, Lorg/jline/builtins/Nano$PatternHistory;->up(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3162
    iget-object v6, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move v2, v6

    .line 3163
    goto :goto_4

    .line 3196
    :goto_3
    move v2, v6

    .line 3197
    iget-object v6, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 3200
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/jline/builtins/Nano;->display(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3201
    .end local v5    # "op":Lorg/jline/builtins/Nano$Operation;
    goto/16 :goto_2

    .line 3203
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v5

    iput-object v5, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 3204
    iput-object v3, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 3205
    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x21 -> :sswitch_3
        0x25 -> :sswitch_2
        0x31 -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method resetDisplay()V
    .locals 3

    .line 3450
    iget-object v0, p0, Lorg/jline/builtins/Nano;->display:Lorg/jline/utils/Display;

    invoke-virtual {v0}, Lorg/jline/utils/Display;->clear()V

    .line 3451
    iget-object v0, p0, Lorg/jline/builtins/Nano;->display:Lorg/jline/utils/Display;

    iget-object v1, p0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getRows()I

    move-result v1

    iget-object v2, p0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/utils/Display;->resize(II)V

    .line 3452
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/builtins/Nano$Buffer;

    .line 3453
    .local v1, "buffer":Lorg/jline/builtins/Nano$Buffer;
    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->resetDisplay()V

    .line 3454
    .end local v1    # "buffer":Lorg/jline/builtins/Nano$Buffer;
    goto :goto_0

    .line 3455
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2146
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2147
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    new-instance v2, Lorg/jline/builtins/Nano$Buffer;

    invoke-direct {v2, p0, v1}, Lorg/jline/builtins/Nano$Buffer;-><init>(Lorg/jline/builtins/Nano;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2149
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffers:Ljava/util/List;

    iget v2, p0, Lorg/jline/builtins/Nano;->bufferIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jline/builtins/Nano$Buffer;

    iput-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    .line 2151
    iget-object v0, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v0

    .line 2152
    .local v0, "attributes":Lorg/jline/terminal/Attributes;
    new-instance v2, Lorg/jline/terminal/Attributes;

    invoke-direct {v2, v0}, Lorg/jline/terminal/Attributes;-><init>(Lorg/jline/terminal/Attributes;)V

    .line 2153
    .local v2, "newAttr":Lorg/jline/terminal/Attributes;
    iget v3, p0, Lorg/jline/builtins/Nano;->vsusp:I

    if-lez v3, :cond_1

    .line 2154
    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    iget v4, p0, Lorg/jline/builtins/Nano;->vsusp:I

    invoke-virtual {v0, v3, v4}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 2156
    :cond_1
    sget-object v3, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    sget-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    sget-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/jline/terminal/Attributes;->setLocalFlags(Ljava/util/EnumSet;Z)V

    .line 2157
    sget-object v3, Lorg/jline/terminal/Attributes$InputFlag;->IXON:Lorg/jline/terminal/Attributes$InputFlag;

    sget-object v5, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    sget-object v6, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v3, v5, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lorg/jline/terminal/Attributes;->setInputFlags(Ljava/util/EnumSet;Z)V

    .line 2158
    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 2159
    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v2, v3, v4}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 2160
    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v2, v3, v4}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 2161
    iget-object v3, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v3, v2}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 2162
    iget-object v3, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->enter_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v3, v6, v7}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 2163
    iget-object v3, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/utils/InfoCmp$Capability;->keypad_xmit:Lorg/jline/utils/InfoCmp$Capability;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v3, v6, v7}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 2164
    iget-boolean v3, p0, Lorg/jline/builtins/Nano;->mouseSupport:Z

    if-eqz v3, :cond_2

    .line 2165
    iget-object v3, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v6, Lorg/jline/terminal/Terminal$MouseTracking;->Normal:Lorg/jline/terminal/Terminal$MouseTracking;

    invoke-interface {v3, v6}, Lorg/jline/terminal/Terminal;->trackMouse(Lorg/jline/terminal/Terminal$MouseTracking;)Z

    .line 2168
    :cond_2
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2170
    const/4 v3, 0x0

    .line 2171
    .local v3, "prevHandler":Lorg/jline/terminal/Terminal$SignalHandler;
    iget-object v6, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-static {v6, v4}, Lorg/jline/utils/Status;->getStatus(Lorg/jline/terminal/Terminal;Z)Lorg/jline/utils/Status;

    move-result-object v6

    .line 2173
    .local v6, "status":Lorg/jline/utils/Status;
    :try_start_0
    iget-object v7, p0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    iget-object v8, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v8}, Lorg/jline/terminal/Terminal;->getSize()Lorg/jline/terminal/Size;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/jline/terminal/Size;->copy(Lorg/jline/terminal/Size;)V

    .line 2174
    if-eqz v6, :cond_3

    .line 2175
    invoke-virtual {v6}, Lorg/jline/utils/Status;->suspend()V

    .line 2177
    :cond_3
    iget-object v7, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v7}, Lorg/jline/builtins/Nano$Buffer;->open()V

    .line 2178
    iget-object v7, p0, Lorg/jline/builtins/Nano;->errorMessage:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 2179
    invoke-virtual {p0, v7}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 2180
    iput-object v1, p0, Lorg/jline/builtins/Nano;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 2181
    :cond_4
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v1, v1, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v7, v7, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " lines"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 2185
    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/jline/builtins/Nano;->display:Lorg/jline/utils/Display;

    invoke-virtual {v1}, Lorg/jline/utils/Display;->clear()V

    .line 2186
    iget-object v1, p0, Lorg/jline/builtins/Nano;->display:Lorg/jline/utils/Display;

    invoke-virtual {v1}, Lorg/jline/utils/Display;->reset()V

    .line 2187
    iget-object v1, p0, Lorg/jline/builtins/Nano;->display:Lorg/jline/utils/Display;

    iget-object v7, p0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v7}, Lorg/jline/terminal/Size;->getRows()I

    move-result v7

    iget-object v8, p0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v8}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/jline/utils/Display;->resize(II)V

    .line 2188
    iget-object v1, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    new-instance v8, Lorg/jline/builtins/Nano$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lorg/jline/builtins/Nano$$ExternalSyntheticLambda0;-><init>(Lorg/jline/builtins/Nano;)V

    invoke-interface {v1, v7, v8}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    move-result-object v1

    move-object v3, v1

    .line 2190
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->display()V

    .line 2194
    :goto_1
    sget-object v1, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    iget-object v7, p0, Lorg/jline/builtins/Nano;->keys:Lorg/jline/keymap/KeyMap;

    invoke-direct {p0, v7}, Lorg/jline/builtins/Nano;->readOperation(Lorg/jline/keymap/KeyMap;)Lorg/jline/builtins/Nano$Operation;

    move-result-object v7

    move-object v8, v7

    .local v8, "op":Lorg/jline/builtins/Nano$Operation;
    invoke-virtual {v7}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v7

    aget v1, v1, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "enabled"

    const-string v9, "disabled"

    packed-switch v1, :pswitch_data_0

    .line 2351
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 2347
    :pswitch_0
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->autoIndent:Z

    if-nez v1, :cond_6

    move v1, v5

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lorg/jline/builtins/Nano;->autoIndent:Z

    .line 2348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Auto indent "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v10, p0, Lorg/jline/builtins/Nano;->autoIndent:Z

    if-eqz v10, :cond_7

    goto :goto_3

    :cond_7
    move-object v7, v9

    :goto_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 2349
    goto/16 :goto_d

    .line 2343
    :pswitch_1
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->tabsToSpaces:Z

    if-nez v1, :cond_8

    move v1, v5

    goto :goto_4

    :cond_8
    move v1, v4

    :goto_4
    iput-boolean v1, p0, Lorg/jline/builtins/Nano;->tabsToSpaces:Z

    .line 2344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Conversion of typed tabs to spaces "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v10, p0, Lorg/jline/builtins/Nano;->tabsToSpaces:Z

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    move-object v7, v9

    :goto_5
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 2345
    goto/16 :goto_d

    .line 2339
    :pswitch_2
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->highlight:Z

    if-nez v1, :cond_a

    move v1, v5

    goto :goto_6

    :cond_a
    move v1, v4

    :goto_6
    iput-boolean v1, p0, Lorg/jline/builtins/Nano;->highlight:Z

    .line 2340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Highlight "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v10, p0, Lorg/jline/builtins/Nano;->highlight:Z

    if-eqz v10, :cond_b

    goto :goto_7

    :cond_b
    move-object v7, v9

    :goto_7
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 2341
    goto/16 :goto_d

    .line 2334
    :pswitch_3
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->mark:Z

    if-nez v1, :cond_c

    move v1, v5

    goto :goto_8

    :cond_c
    move v1, v4

    :goto_8
    iput-boolean v1, p0, Lorg/jline/builtins/Nano;->mark:Z

    .line 2335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mark "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v7, p0, Lorg/jline/builtins/Nano;->mark:Z

    if-eqz v7, :cond_d

    const-string v7, "Set"

    goto :goto_9

    :cond_d
    const-string v7, "Unset"

    :goto_9
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 2336
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->mark()V

    .line 2337
    goto/16 :goto_d

    .line 2331
    :pswitch_4
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Nano$Buffer;->cut(Z)V

    .line 2332
    goto/16 :goto_d

    .line 2327
    :pswitch_5
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->cut2end:Z

    if-nez v1, :cond_e

    move v1, v5

    goto :goto_a

    :cond_e
    move v1, v4

    :goto_a
    iput-boolean v1, p0, Lorg/jline/builtins/Nano;->cut2end:Z

    .line 2328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cut to end "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v10, p0, Lorg/jline/builtins/Nano;->cut2end:Z

    if-eqz v10, :cond_f

    goto :goto_b

    :cond_f
    move-object v7, v9

    :goto_b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 2329
    goto/16 :goto_d

    .line 2323
    :pswitch_6
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->gotoLine()V

    .line 2324
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->curPos()V

    .line 2325
    goto/16 :goto_d

    .line 2320
    :pswitch_7
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->uncut()V

    .line 2321
    goto/16 :goto_d

    .line 2317
    :pswitch_8
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->cut()V

    .line 2318
    goto/16 :goto_d

    .line 2314
    :pswitch_9
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->copy()V

    .line 2315
    goto/16 :goto_d

    .line 2311
    :pswitch_a
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->toggleSuspension()V

    .line 2312
    goto/16 :goto_d

    .line 2308
    :pswitch_b
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->mouseEvent()V

    .line 2309
    goto/16 :goto_d

    .line 2305
    :pswitch_c
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->matching()V

    .line 2306
    goto/16 :goto_d

    .line 2302
    :pswitch_d
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    new-instance v7, Ljava/lang/String;

    iget-object v9, p0, Lorg/jline/builtins/Nano;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v9}, Lorg/jline/keymap/BindingReader;->readCharacter()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v7}, Lorg/jline/builtins/Nano$Buffer;->insert(Ljava/lang/String;)V

    .line 2303
    goto/16 :goto_d

    .line 2299
    :pswitch_e
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->constantCursor()V

    .line 2300
    goto/16 :goto_d

    .line 2296
    :pswitch_f
    const-string v1, "nano-main-help.txt"

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano;->help(Ljava/lang/String;)V

    .line 2297
    goto/16 :goto_d

    .line 2293
    :pswitch_10
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->nextSearch()Z

    .line 2294
    goto/16 :goto_d

    .line 2289
    :pswitch_11
    iput-boolean v5, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    .line 2290
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->searchAndReplace()V

    .line 2291
    goto/16 :goto_d

    .line 2285
    :pswitch_12
    iput-boolean v4, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    .line 2286
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->searchAndReplace()V

    .line 2287
    goto/16 :goto_d

    .line 2282
    :pswitch_13
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Nano$Buffer;->scrollDown(I)V

    .line 2283
    goto/16 :goto_d

    .line 2279
    :pswitch_14
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Nano$Buffer;->scrollUp(I)V

    .line 2280
    goto/16 :goto_d

    .line 2276
    :pswitch_15
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->nextPage()V

    .line 2277
    goto/16 :goto_d

    .line 2273
    :pswitch_16
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->prevPage()V

    .line 2274
    goto/16 :goto_d

    .line 2270
    :pswitch_17
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->lastLine()V

    .line 2271
    goto/16 :goto_d

    .line 2267
    :pswitch_18
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->firstLine()V

    .line 2268
    goto/16 :goto_d

    .line 2264
    :pswitch_19
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->endOfLine()V

    .line 2265
    goto/16 :goto_d

    .line 2261
    :pswitch_1a
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->beginningOfLine()V

    .line 2262
    goto/16 :goto_d

    .line 2258
    :pswitch_1b
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->nextWord()V

    .line 2259
    goto/16 :goto_d

    .line 2255
    :pswitch_1c
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$Buffer;->prevWord()V

    .line 2256
    goto/16 :goto_d

    .line 2252
    :pswitch_1d
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->curPos()V

    .line 2253
    goto/16 :goto_d

    .line 2249
    :pswitch_1e
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->nextBuffer()V

    .line 2250
    goto/16 :goto_d

    .line 2246
    :pswitch_1f
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->prevBuffer()V

    .line 2247
    goto/16 :goto_d

    .line 2243
    :pswitch_20
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->clearScreen()V

    .line 2244
    goto/16 :goto_d

    .line 2240
    :pswitch_21
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->oneMoreLine()V

    .line 2241
    goto/16 :goto_d

    .line 2237
    :pswitch_22
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->mouseSupport()V

    .line 2238
    goto/16 :goto_d

    .line 2234
    :pswitch_23
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->smoothScrolling()V

    .line 2235
    goto/16 :goto_d

    .line 2231
    :pswitch_24
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->numbers()V

    .line 2232
    goto/16 :goto_d

    .line 2228
    :pswitch_25
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->wrap()V

    .line 2229
    goto/16 :goto_d

    .line 2225
    :pswitch_26
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Nano$Buffer;->delete(I)V

    .line 2226
    goto/16 :goto_d

    .line 2222
    :pswitch_27
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Nano$Buffer;->backspace(I)Z

    .line 2223
    goto/16 :goto_d

    .line 2219
    :pswitch_28
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v7, p0, Lorg/jline/builtins/Nano;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v7}, Lorg/jline/keymap/BindingReader;->getLastBinding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/jline/builtins/Nano$Buffer;->insert(Ljava/lang/String;)V

    .line 2220
    goto/16 :goto_d

    .line 2216
    :pswitch_29
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Nano$Buffer;->moveRight(I)Z

    .line 2217
    goto/16 :goto_d

    .line 2213
    :pswitch_2a
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Nano$Buffer;->moveLeft(I)Z

    .line 2214
    goto/16 :goto_d

    .line 2210
    :pswitch_2b
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Nano$Buffer;->moveDown(I)V

    .line 2211
    goto/16 :goto_d

    .line 2207
    :pswitch_2c
    iget-object v1, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v1, v5}, Lorg/jline/builtins/Nano$Buffer;->moveUp(I)V

    .line 2208
    goto/16 :goto_d

    .line 2204
    :pswitch_2d
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->read()V

    .line 2205
    goto :goto_d

    .line 2201
    :pswitch_2e
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->write()Z

    .line 2202
    goto :goto_d

    .line 2196
    :pswitch_2f
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->quit()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_13

    .line 2357
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->mouseSupport:Z

    if-eqz v1, :cond_10

    .line 2358
    iget-object v1, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/terminal/Terminal$MouseTracking;->Off:Lorg/jline/terminal/Terminal$MouseTracking;

    invoke-interface {v1, v5}, Lorg/jline/terminal/Terminal;->trackMouse(Lorg/jline/terminal/Terminal$MouseTracking;)Z

    .line 2360
    :cond_10
    iget-object v1, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->exit_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v1, v5, v7}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2361
    iget-object v1, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->clear_screen:Lorg/jline/utils/InfoCmp$Capability;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-interface {v1, v5, v7}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 2363
    :cond_11
    iget-object v1, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->keypad_local:Lorg/jline/utils/InfoCmp$Capability;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v5, v4}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 2364
    iget-object v1, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v1}, Lorg/jline/terminal/Terminal;->flush()V

    .line 2365
    iget-object v1, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v1, v0}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 2366
    iget-object v1, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v4, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v1, v4, v3}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 2367
    if-eqz v6, :cond_12

    .line 2368
    invoke-virtual {v6}, Lorg/jline/utils/Status;->restore()V

    .line 2370
    :cond_12
    iget-object v1, p0, Lorg/jline/builtins/Nano;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano$PatternHistory;->persist()V

    .line 2197
    return-void

    .line 2351
    :goto_c
    :try_start_2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lorg/jline/builtins/Nano$Operation;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x5f

    const/16 v10, 0x2d

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 2354
    :cond_13
    :goto_d
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->display()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2355
    .end local v8    # "op":Lorg/jline/builtins/Nano$Operation;
    goto/16 :goto_1

    .line 2357
    :catchall_0
    move-exception v1

    iget-boolean v5, p0, Lorg/jline/builtins/Nano;->mouseSupport:Z

    if-eqz v5, :cond_14

    .line 2358
    iget-object v5, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/terminal/Terminal$MouseTracking;->Off:Lorg/jline/terminal/Terminal$MouseTracking;

    invoke-interface {v5, v7}, Lorg/jline/terminal/Terminal;->trackMouse(Lorg/jline/terminal/Terminal$MouseTracking;)Z

    .line 2360
    :cond_14
    iget-object v5, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->exit_ca_mode:Lorg/jline/utils/InfoCmp$Capability;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 2361
    iget-object v5, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->clear_screen:Lorg/jline/utils/InfoCmp$Capability;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 2363
    :cond_15
    iget-object v5, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v7, Lorg/jline/utils/InfoCmp$Capability;->keypad_local:Lorg/jline/utils/InfoCmp$Capability;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v5, v7, v4}, Lorg/jline/terminal/Terminal;->puts(Lorg/jline/utils/InfoCmp$Capability;[Ljava/lang/Object;)Z

    .line 2364
    iget-object v4, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v4}, Lorg/jline/terminal/Terminal;->flush()V

    .line 2365
    iget-object v4, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v4, v0}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 2366
    iget-object v4, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/terminal/Terminal$Signal;->WINCH:Lorg/jline/terminal/Terminal$Signal;

    invoke-interface {v4, v5, v3}, Lorg/jline/terminal/Terminal;->handle(Lorg/jline/terminal/Terminal$Signal;Lorg/jline/terminal/Terminal$SignalHandler;)Lorg/jline/terminal/Terminal$SignalHandler;

    .line 2367
    if-eqz v6, :cond_16

    .line 2368
    invoke-virtual {v6}, Lorg/jline/utils/Status;->restore()V

    .line 2370
    :cond_16
    iget-object v4, p0, Lorg/jline/builtins/Nano;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$PatternHistory;->persist()V

    .line 2371
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method search()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3024
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 3025
    .local v0, "searchKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v0, v1}, Lorg/jline/keymap/KeyMap;->setUnicode(Ljava/lang/Object;)V

    .line 3027
    const/16 v1, 0x20

    .local v1, "i":C
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 3028
    sget-object v2, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3027
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 3030
    .end local v1    # "i":C
    :cond_0
    const/16 v1, 0x41

    .restart local v1    # "i":C
    :goto_1
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_1

    .line 3031
    sget-object v2, Lorg/jline/builtins/Nano$Operation;->DO_LOWER_CASE:Lorg/jline/builtins/Nano$Operation;

    invoke-static {v1}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3030
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_1

    .line 3033
    .end local v1    # "i":C
    :cond_1
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->BACKSPACE:Lorg/jline/builtins/Nano$Operation;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3034
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->CASE_SENSITIVE:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x63

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3035
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->BACKWARDS:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x62

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3036
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->REGEXP:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x72

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3037
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->ACCEPT:Lorg/jline/builtins/Nano$Operation;

    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3038
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->CANCEL:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x43

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3039
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->HELP:Lorg/jline/builtins/Nano$Operation;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/16 v3, 0x47

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->key_f1:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v3, v5}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 3040
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->FIRST_LINE:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x59

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3041
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->LAST_LINE:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x56

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3042
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->MOUSE_EVENT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_mouse:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3043
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->RIGHT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3044
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->LEFT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3045
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->UP:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_up:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3046
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->DOWN:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_down:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3047
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->TOGGLE_REPLACE:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x52

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3049
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->getSearchMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 3050
    iget-object v1, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3051
    iget-object v1, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3052
    .local v1, "currentBuffer":Ljava/lang/String;
    iget-object v2, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 3053
    .local v2, "curPos":I
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->searchShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 3054
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano;->display(Ljava/lang/Integer;)V

    .line 3057
    :goto_2
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/jline/builtins/Nano;->readOperation(Lorg/jline/keymap/KeyMap;)Lorg/jline/builtins/Nano$Operation;

    move-result-object v6

    .line 3058
    .local v6, "op":Lorg/jline/builtins/Nano$Operation;
    sget-object v7, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    invoke-virtual {v6}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v8

    aget v7, v7, v8

    sparse-switch v7, :sswitch_data_0

    .line 3115
    invoke-direct {p0, v6, v2}, Lorg/jline/builtins/Nano;->editInputBuffer(Lorg/jline/builtins/Nano$Operation;I)I

    move-result v7

    goto/16 :goto_7

    .line 3111
    :sswitch_0
    iget-boolean v7, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    if-nez v7, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v4

    :goto_3
    iput-boolean v7, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    .line 3112
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->searchShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v7

    iput-object v7, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 3113
    goto/16 :goto_8

    .line 3076
    :sswitch_1
    iget-boolean v7, p0, Lorg/jline/builtins/Nano;->searchRegexp:Z

    if-nez v7, :cond_3

    move v7, v5

    goto :goto_4

    :cond_3
    move v7, v4

    :goto_4
    iput-boolean v7, p0, Lorg/jline/builtins/Nano;->searchRegexp:Z

    .line 3077
    goto/16 :goto_8

    .line 3073
    :sswitch_2
    iget-boolean v7, p0, Lorg/jline/builtins/Nano;->searchBackwards:Z

    if-nez v7, :cond_4

    move v7, v5

    goto :goto_5

    :cond_4
    move v7, v4

    :goto_5
    iput-boolean v7, p0, Lorg/jline/builtins/Nano;->searchBackwards:Z

    .line 3074
    goto/16 :goto_8

    .line 3070
    :sswitch_3
    iget-boolean v7, p0, Lorg/jline/builtins/Nano;->searchCaseSensitive:Z

    if-nez v7, :cond_5

    move v7, v5

    goto :goto_6

    :cond_5
    move v7, v4

    :goto_6
    iput-boolean v7, p0, Lorg/jline/builtins/Nano;->searchCaseSensitive:Z

    .line 3071
    goto/16 :goto_8

    .line 3081
    :sswitch_4
    iget-object v4, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 3082
    iget-object v4, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/Nano;->searchTerm:Ljava/lang/String;

    .line 3084
    :cond_6
    iget-object v4, p0, Lorg/jline/builtins/Nano;->searchTerm:Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 3088
    iget-object v4, p0, Lorg/jline/builtins/Nano;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    iget-object v5, p0, Lorg/jline/builtins/Nano;->searchTerm:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/jline/builtins/Nano$PatternHistory;->add(Ljava/lang/String;)V

    .line 3089
    iget-boolean v4, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    if-nez v4, :cond_7

    .line 3090
    iget-object v4, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v4}, Lorg/jline/builtins/Nano$Buffer;->nextSearch()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3123
    :cond_7
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v4

    iput-object v4, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 3124
    iput-object v3, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 3093
    return-void

    .line 3085
    :cond_8
    :try_start_1
    const-string v4, "Cancelled"

    invoke-virtual {p0, v4}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3086
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v0    # "searchKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    .end local v1    # "currentBuffer":Ljava/lang/String;
    .end local v2    # "curPos":I
    throw v4

    .line 3079
    .restart local v0    # "searchKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    .restart local v1    # "currentBuffer":Ljava/lang/String;
    .restart local v2    # "curPos":I
    :sswitch_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v0    # "searchKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    .end local v1    # "currentBuffer":Ljava/lang/String;
    .end local v2    # "curPos":I
    throw v4

    .line 3108
    .restart local v0    # "searchKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    .restart local v1    # "currentBuffer":Ljava/lang/String;
    .restart local v2    # "curPos":I
    :sswitch_6
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->mouseEvent()V

    .line 3109
    goto :goto_8

    .line 3095
    :sswitch_7
    iget-boolean v7, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    if-eqz v7, :cond_9

    .line 3096
    const-string v7, "nano-search-replace-help.txt"

    invoke-virtual {p0, v7}, Lorg/jline/builtins/Nano;->help(Ljava/lang/String;)V

    goto :goto_8

    .line 3098
    :cond_9
    const-string v7, "nano-search-help.txt"

    invoke-virtual {p0, v7}, Lorg/jline/builtins/Nano;->help(Ljava/lang/String;)V

    .line 3100
    goto :goto_8

    .line 3105
    :sswitch_8
    iget-object v7, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v7}, Lorg/jline/builtins/Nano$Buffer;->lastLine()V

    .line 3106
    goto :goto_8

    .line 3102
    :sswitch_9
    iget-object v7, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v7}, Lorg/jline/builtins/Nano$Buffer;->firstLine()V

    .line 3103
    goto :goto_8

    .line 3065
    :sswitch_a
    iget-object v7, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3066
    iget-object v7, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/jline/builtins/Nano;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v8, v1}, Lorg/jline/builtins/Nano$PatternHistory;->down(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3067
    iget-object v7, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move v2, v7

    .line 3068
    goto :goto_8

    .line 3060
    :sswitch_b
    iget-object v7, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3061
    iget-object v7, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/jline/builtins/Nano;->patternHistory:Lorg/jline/builtins/Nano$PatternHistory;

    invoke-virtual {v8, v1}, Lorg/jline/builtins/Nano$PatternHistory;->up(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3062
    iget-object v7, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move v2, v7

    .line 3063
    goto :goto_8

    .line 3115
    :goto_7
    move v2, v7

    .line 3116
    iget-object v7, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 3119
    :goto_8
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->getSearchMessage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 3120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/jline/builtins/Nano;->display(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3121
    .end local v6    # "op":Lorg/jline/builtins/Nano$Operation;
    goto/16 :goto_2

    .line 3123
    :catchall_0
    move-exception v4

    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v5

    iput-object v5, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 3124
    iput-object v3, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 3125
    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_b
        0x5 -> :sswitch_a
        0x18 -> :sswitch_9
        0x19 -> :sswitch_8
        0x21 -> :sswitch_7
        0x25 -> :sswitch_6
        0x31 -> :sswitch_5
        0x32 -> :sswitch_4
        0x3c -> :sswitch_3
        0x3d -> :sswitch_2
        0x3e -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch
.end method

.method searchAndReplace()V
    .locals 14

    .line 2966
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->search()V

    .line 2967
    iget-boolean v3, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 3016
    iput-boolean v2, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    .line 3017
    iput v1, p0, Lorg/jline/builtins/Nano;->matchedLength:I

    .line 3018
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 3019
    iput-object v0, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2968
    return-void

    .line 2970
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->replace()Ljava/lang/String;

    move-result-object v3

    .line 2971
    .local v3, "replaceTerm":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2972
    .local v4, "replaced":I
    const/4 v5, 0x0

    .line 2973
    .local v5, "all":Z
    const/4 v6, 0x1

    .line 2974
    .local v6, "found":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2975
    .local v7, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v8, Lorg/jline/builtins/Nano$Operation;->NO:Lorg/jline/builtins/Nano$Operation;

    .line 2976
    .local v8, "op":Lorg/jline/builtins/Nano$Operation;
    :goto_0
    if-eqz v6, :cond_5

    .line 2977
    iget-object v9, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v9}, Lorg/jline/builtins/Nano$Buffer;->nextSearch()Z

    move-result v9

    move v6, v9

    .line 2978
    if-eqz v6, :cond_4

    .line 2979
    iget-object v9, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v9}, Lorg/jline/builtins/Nano$Buffer;->highlightStart()[I

    move-result-object v9

    .line 2980
    .local v9, "re":[I
    iget-boolean v10, p0, Lorg/jline/builtins/Nano;->searchBackwards:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    iget-object v10, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    aget v12, v9, v2

    invoke-virtual {v10, v12}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lorg/jline/builtins/Nano$Buffer;->access$800(Lorg/jline/builtins/Nano$Buffer;Ljava/lang/String;)I

    move-result v10

    aget v12, v9, v11

    sub-int/2addr v10, v12

    goto :goto_1

    :cond_1
    aget v10, v9, v11

    .line 2981
    .local v10, "col":I
    :goto_1
    aget v12, v9, v2

    mul-int/lit16 v12, v12, 0x2710

    add-int/2addr v12, v10

    .line 2982
    .local v12, "match":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2983
    goto :goto_3

    .line 2985
    :cond_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2987
    if-nez v5, :cond_3

    .line 2988
    const-string v13, "Replace this instance? "

    invoke-direct {p0, v13, v11}, Lorg/jline/builtins/Nano;->getYNC(Ljava/lang/String;Z)Lorg/jline/builtins/Nano$Operation;

    move-result-object v11

    move-object v8, v11

    .line 2990
    .end local v9    # "re":[I
    .end local v10    # "col":I
    .end local v12    # "match":I
    :cond_3
    goto :goto_2

    .line 2991
    :cond_4
    sget-object v9, Lorg/jline/builtins/Nano$Operation;->NO:Lorg/jline/builtins/Nano$Operation;

    move-object v8, v9

    .line 2993
    :goto_2
    sget-object v9, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    invoke-virtual {v8}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v10

    aget v9, v9, v10

    sparse-switch v9, :sswitch_data_0

    .line 3009
    goto :goto_0

    .line 3004
    :sswitch_0
    goto :goto_0

    .line 3000
    :sswitch_1
    iget-object v9, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v10, p0, Lorg/jline/builtins/Nano;->matchedLength:I

    invoke-virtual {v9, v10, v3}, Lorg/jline/builtins/Nano$Buffer;->replaceFromCursor(ILjava/lang/String;)V

    .line 3001
    add-int/lit8 v4, v4, 0x1

    .line 3002
    goto :goto_0

    .line 2995
    :sswitch_2
    const/4 v5, 0x1

    .line 2996
    iget-object v9, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget v10, p0, Lorg/jline/builtins/Nano;->matchedLength:I

    invoke-virtual {v9, v10, v3}, Lorg/jline/builtins/Nano$Buffer;->replaceFromCursor(ILjava/lang/String;)V

    .line 2997
    add-int/lit8 v4, v4, 0x1

    .line 2998
    goto :goto_0

    .line 3006
    :sswitch_3
    const/4 v6, 0x0

    .line 3007
    goto :goto_0

    .line 3012
    :cond_5
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Replaced "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " occurrences"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/jline/builtins/Nano;->message:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "replaceTerm":Ljava/lang/String;
    .end local v4    # "replaced":I
    .end local v5    # "all":Z
    .end local v6    # "found":Z
    .end local v7    # "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "op":Lorg/jline/builtins/Nano$Operation;
    goto :goto_4

    .line 3016
    :catchall_0
    move-exception v3

    iput-boolean v2, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    .line 3017
    iput v1, p0, Lorg/jline/builtins/Nano;->matchedLength:I

    .line 3018
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 3019
    iput-object v0, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 3020
    throw v3

    .line 3013
    :catch_0
    move-exception v3

    .line 3016
    :goto_4
    iput-boolean v2, p0, Lorg/jline/builtins/Nano;->searchToReplace:Z

    .line 3017
    iput v1, p0, Lorg/jline/builtins/Nano;->matchedLength:I

    .line 3018
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 3019
    iput-object v0, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 3020
    nop

    .line 3021
    return-void

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_3
        0x39 -> :sswitch_2
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
    .end sparse-switch
.end method

.method setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 3304
    iput-object p1, p0, Lorg/jline/builtins/Nano;->message:Ljava/lang/String;

    .line 3305
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->quickBlank:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    :goto_0
    iput v0, p0, Lorg/jline/builtins/Nano;->nbBindings:I

    .line 3306
    return-void
.end method

.method public setRestricted(Z)V
    .locals 0
    .param p1, "restricted"    # Z

    .line 2125
    iput-boolean p1, p0, Lorg/jline/builtins/Nano;->restricted:Z

    .line 2126
    return-void
.end method

.method smoothScrolling()V
    .locals 2

    .line 3351
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->smoothScrolling:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/Nano;->smoothScrolling:Z

    .line 3352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Smooth scrolling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->smoothScrolling:Z

    if-eqz v1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3353
    return-void
.end method

.method toggleSuspension()V
    .locals 5

    .line 3427
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->restricted:Z

    if-eqz v0, :cond_0

    .line 3428
    const-string v0, "This function is disabled in restricted mode"

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 3429
    :cond_0
    iget v0, p0, Lorg/jline/builtins/Nano;->vsusp:I

    if-gez v0, :cond_1

    .line 3430
    const-string v0, "This function is disabled"

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 3432
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->getAttributes()Lorg/jline/terminal/Attributes;

    move-result-object v0

    .line 3433
    .local v0, "attrs":Lorg/jline/terminal/Attributes;
    iget v1, p0, Lorg/jline/builtins/Nano;->vsusp:I

    .line 3434
    .local v1, "toggle":I
    const-string v2, "enabled"

    .line 3435
    .local v2, "message":Ljava/lang/String;
    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v3}, Lorg/jline/terminal/Attributes;->getControlChar(Lorg/jline/terminal/Attributes$ControlChar;)I

    move-result v3

    if-lez v3, :cond_2

    .line 3436
    const/4 v1, 0x0

    .line 3437
    const-string v2, "disabled"

    .line 3439
    :cond_2
    sget-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0, v3, v1}, Lorg/jline/terminal/Attributes;->setControlChar(Lorg/jline/terminal/Attributes$ControlChar;I)V

    .line 3440
    iget-object v3, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v3, v0}, Lorg/jline/terminal/Terminal;->setAttributes(Lorg/jline/terminal/Attributes;)V

    .line 3441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Suspension "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3443
    .end local v0    # "attrs":Lorg/jline/terminal/Attributes;
    .end local v1    # "toggle":I
    .end local v2    # "message":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method wrap()V
    .locals 2

    .line 3372
    iget-boolean v0, p0, Lorg/jline/builtins/Nano;->wrapping:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/Nano;->wrapping:Z

    .line 3373
    iget-object v0, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    invoke-virtual {v0}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 3374
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->resetDisplay()V

    .line 3375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lines wrapping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->wrapping:Z

    if-eqz v1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 3376
    return-void
.end method

.method write()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2399
    new-instance v0, Lorg/jline/keymap/KeyMap;

    invoke-direct {v0}, Lorg/jline/keymap/KeyMap;-><init>()V

    .line 2400
    .local v0, "writeKeyMap":Lorg/jline/keymap/KeyMap;, "Lorg/jline/keymap/KeyMap<Lorg/jline/builtins/Nano$Operation;>;"
    iget-boolean v1, p0, Lorg/jline/builtins/Nano;->restricted:Z

    if-nez v1, :cond_2

    .line 2401
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-virtual {v0, v1}, Lorg/jline/keymap/KeyMap;->setUnicode(Ljava/lang/Object;)V

    .line 2402
    const/16 v1, 0x20

    .local v1, "i":C
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 2403
    sget-object v2, Lorg/jline/builtins/Nano$Operation;->INSERT:Lorg/jline/builtins/Nano$Operation;

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2402
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_0

    .line 2405
    .end local v1    # "i":C
    :cond_0
    const/16 v1, 0x41

    .restart local v1    # "i":C
    :goto_1
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_1

    .line 2406
    sget-object v2, Lorg/jline/builtins/Nano$Operation;->DO_LOWER_CASE:Lorg/jline/builtins/Nano$Operation;

    invoke-static {v1}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2405
    add-int/lit8 v2, v1, 0x1

    int-to-char v1, v2

    goto :goto_1

    .line 2408
    .end local v1    # "i":C
    :cond_1
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->BACKSPACE:Lorg/jline/builtins/Nano$Operation;

    invoke-static {}, Lorg/jline/keymap/KeyMap;->del()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2409
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->APPEND_MODE:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x61

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2410
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->PREPEND_MODE:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x70

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2411
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->BACKUP:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x62

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2412
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->TO_FILES:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x54

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2414
    :cond_2
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->MAC_FORMAT:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x6d

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2415
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->DOS_FORMAT:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x64

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2416
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->ACCEPT:Lorg/jline/builtins/Nano$Operation;

    const-string v2, "\r"

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2417
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->CANCEL:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x43

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2418
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->HELP:Lorg/jline/builtins/Nano$Operation;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/16 v3, 0x47

    invoke-static {v3}, Lorg/jline/keymap/KeyMap;->ctrl(C)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v5, Lorg/jline/utils/InfoCmp$Capability;->key_f1:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v3, v5}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;[Ljava/lang/CharSequence;)V

    .line 2419
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->MOUSE_EVENT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_mouse:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2420
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->TOGGLE_SUSPENSION:Lorg/jline/builtins/Nano$Operation;

    const/16 v2, 0x7a

    invoke-static {v2}, Lorg/jline/keymap/KeyMap;->alt(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2421
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->RIGHT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_right:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2422
    sget-object v1, Lorg/jline/builtins/Nano$Operation;->LEFT:Lorg/jline/builtins/Nano$Operation;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->key_left:Lorg/jline/utils/InfoCmp$Capability;

    invoke-static {v2, v3}, Lorg/jline/keymap/KeyMap;->key(Lorg/jline/terminal/Terminal;Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jline/keymap/KeyMap;->bind(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2424
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->getWriteMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2425
    iget-object v1, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2426
    iget-object v1, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v2, v2, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v2, v2, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2427
    iget-object v1, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2428
    .local v1, "curPos":I
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->writeShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2429
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jline/builtins/Nano;->display(Ljava/lang/Integer;)V

    .line 2431
    :goto_3
    invoke-direct {p0, v0}, Lorg/jline/builtins/Nano;->readOperation(Lorg/jline/keymap/KeyMap;)Lorg/jline/builtins/Nano$Operation;

    move-result-object v2

    .line 2432
    .local v2, "op":Lorg/jline/builtins/Nano$Operation;
    sget-object v3, Lorg/jline/builtins/Nano$1;->$SwitchMap$org$jline$builtins$Nano$Operation:[I

    invoke-virtual {v2}, Lorg/jline/builtins/Nano$Operation;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const/4 v6, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 2469
    invoke-direct {p0, v2, v1}, Lorg/jline/builtins/Nano;->editInputBuffer(Lorg/jline/builtins/Nano$Operation;I)I

    move-result v1

    goto/16 :goto_8

    .line 2460
    :sswitch_0
    iget-boolean v3, p0, Lorg/jline/builtins/Nano;->writeBackup:Z

    xor-int/2addr v3, v5

    iput-boolean v3, p0, Lorg/jline/builtins/Nano;->writeBackup:Z

    .line 2461
    goto/16 :goto_8

    .line 2457
    :sswitch_1
    iget-object v3, p0, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    sget-object v6, Lorg/jline/builtins/Nano$WriteMode;->PREPEND:Lorg/jline/builtins/Nano$WriteMode;

    if-ne v3, v6, :cond_4

    sget-object v3, Lorg/jline/builtins/Nano$WriteMode;->WRITE:Lorg/jline/builtins/Nano$WriteMode;

    goto :goto_4

    :cond_4
    sget-object v3, Lorg/jline/builtins/Nano$WriteMode;->PREPEND:Lorg/jline/builtins/Nano$WriteMode;

    :goto_4
    iput-object v3, p0, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    .line 2458
    goto :goto_8

    .line 2454
    :sswitch_2
    iget-object v3, p0, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    sget-object v6, Lorg/jline/builtins/Nano$WriteMode;->APPEND:Lorg/jline/builtins/Nano$WriteMode;

    if-ne v3, v6, :cond_5

    sget-object v3, Lorg/jline/builtins/Nano$WriteMode;->WRITE:Lorg/jline/builtins/Nano$WriteMode;

    goto :goto_5

    :cond_5
    sget-object v3, Lorg/jline/builtins/Nano$WriteMode;->APPEND:Lorg/jline/builtins/Nano$WriteMode;

    :goto_5
    iput-object v3, p0, Lorg/jline/builtins/Nano;->writeMode:Lorg/jline/builtins/Nano$WriteMode;

    .line 2455
    goto :goto_8

    .line 2451
    :sswitch_3
    iget-object v3, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v6, v3, Lorg/jline/builtins/Nano$Buffer;->format:Lorg/jline/builtins/Nano$WriteFormat;

    sget-object v7, Lorg/jline/builtins/Nano$WriteFormat;->DOS:Lorg/jline/builtins/Nano$WriteFormat;

    if-ne v6, v7, :cond_6

    sget-object v6, Lorg/jline/builtins/Nano$WriteFormat;->UNIX:Lorg/jline/builtins/Nano$WriteFormat;

    goto :goto_6

    :cond_6
    sget-object v6, Lorg/jline/builtins/Nano$WriteFormat;->DOS:Lorg/jline/builtins/Nano$WriteFormat;

    :goto_6
    iput-object v6, v3, Lorg/jline/builtins/Nano$Buffer;->format:Lorg/jline/builtins/Nano$WriteFormat;

    .line 2452
    goto :goto_8

    .line 2448
    :sswitch_4
    iget-object v3, p0, Lorg/jline/builtins/Nano;->buffer:Lorg/jline/builtins/Nano$Buffer;

    iget-object v6, v3, Lorg/jline/builtins/Nano$Buffer;->format:Lorg/jline/builtins/Nano$WriteFormat;

    sget-object v7, Lorg/jline/builtins/Nano$WriteFormat;->MAC:Lorg/jline/builtins/Nano$WriteFormat;

    if-ne v6, v7, :cond_7

    sget-object v6, Lorg/jline/builtins/Nano$WriteFormat;->UNIX:Lorg/jline/builtins/Nano$WriteFormat;

    goto :goto_7

    :cond_7
    sget-object v6, Lorg/jline/builtins/Nano$WriteFormat;->MAC:Lorg/jline/builtins/Nano$WriteFormat;

    :goto_7
    iput-object v6, v3, Lorg/jline/builtins/Nano$Buffer;->format:Lorg/jline/builtins/Nano$WriteFormat;

    .line 2449
    goto :goto_8

    .line 2438
    :sswitch_5
    iput-object v6, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2439
    iget-object v3, p0, Lorg/jline/builtins/Nano;->editBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jline/builtins/Nano;->save(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2440
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2441
    return v5

    .line 2443
    :cond_8
    return v4

    .line 2434
    :sswitch_6
    iput-object v6, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2435
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->standardShortcuts()Ljava/util/LinkedHashMap;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/builtins/Nano;->shortcuts:Ljava/util/LinkedHashMap;

    .line 2436
    return v4

    .line 2466
    :sswitch_7
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->toggleSuspension()V

    .line 2467
    goto :goto_8

    .line 2463
    :sswitch_8
    invoke-virtual {p0}, Lorg/jline/builtins/Nano;->mouseEvent()V

    .line 2464
    goto :goto_8

    .line 2445
    :sswitch_9
    const-string v3, "nano-write-help.txt"

    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano;->help(Ljava/lang/String;)V

    .line 2446
    nop

    .line 2472
    :goto_8
    invoke-direct {p0}, Lorg/jline/builtins/Nano;->getWriteMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jline/builtins/Nano;->editMessage:Ljava/lang/String;

    .line 2473
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano;->display(Ljava/lang/Integer;)V

    .line 2474
    .end local v2    # "op":Lorg/jline/builtins/Nano$Operation;
    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_9
        0x25 -> :sswitch_8
        0x26 -> :sswitch_7
        0x31 -> :sswitch_6
        0x32 -> :sswitch_5
        0x33 -> :sswitch_4
        0x34 -> :sswitch_3
        0x35 -> :sswitch_2
        0x36 -> :sswitch_1
        0x37 -> :sswitch_0
    .end sparse-switch
.end method
