.class public final Lorg/yaml/snakeyaml/emitter/Emitter;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/emitter/Emitable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingSimpleValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingSimpleValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentRoot;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentEnd;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstDocumentStart;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectNothing;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectStreamStart;
    }
.end annotation


# static fields
.field private static final ANCHOR_FORMAT:Ljava/util/regex/Pattern;

.field private static final DEFAULT_TAG_PREFIXES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ESCAPE_REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLE_FORMAT:Ljava/util/regex/Pattern;

.field public static final MAX_INDENT:I = 0xa

.field public static final MIN_INDENT:I = 0x1

.field private static final SPACE:[C


# instance fields
.field private allowUnicode:Z

.field private analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

.field private bestIndent:I

.field private bestLineBreak:[C

.field private bestWidth:I

.field private canonical:Ljava/lang/Boolean;

.field private column:I

.field private event:Lorg/yaml/snakeyaml/events/Event;

.field private final events:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private flowLevel:I

.field private indent:Ljava/lang/Integer;

.field private indention:Z

.field private final indents:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private indicatorIndent:I

.field private mappingContext:Z

.field private maxSimpleKeyLength:I

.field private openEnded:Z

.field private preparedAnchor:Ljava/lang/String;

.field private preparedTag:Ljava/lang/String;

.field private prettyFlow:Ljava/lang/Boolean;

.field private rootContext:Z

.field private simpleKeyContext:Z

.field private splitLines:Z

.field private state:Lorg/yaml/snakeyaml/emitter/EmitterState;

.field private final states:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Lorg/yaml/snakeyaml/emitter/EmitterState;",
            ">;"
        }
    .end annotation
.end field

.field private final stream:Ljava/io/Writer;

.field private style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field private tagPrefixes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whitespace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    .line 67
    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x20

    const/4 v3, 0x0

    aput-char v2, v1, v3

    sput-object v1, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    .line 70
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "v"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "r"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\\"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "N"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "_"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/16 v1, 0x2028

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "L"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/16 v1, 0x2029

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "P"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    .line 89
    const-string v1, "!"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "tag:yaml.org,2002:"

    const-string v2, "!!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    const-string v0, "^![-_\\w]*!$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->HANDLE_FORMAT:Ljava/util/regex/Pattern;

    .line 894
    const-string v0, "^[-_\\w]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ANCHOR_FORMAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/Writer;
    .param p2, "opts"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    .line 160
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 161
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectStreamStart;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectStreamStart;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 163
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    .line 164
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    .line 166
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 167
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    .line 171
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->mappingContext:Z

    .line 172
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    .line 180
    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 181
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 182
    iput-boolean v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 185
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 188
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isCanonical()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    .line 189
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isPrettyFlow()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    .line 190
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isAllowUnicode()Z

    move-result v0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->allowUnicode:Z

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    .line 192
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 193
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    .line 195
    :cond_0
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndicatorIndent()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indicatorIndent:I

    .line 196
    const/16 v1, 0x50

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    .line 197
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getWidth()I

    move-result v1

    iget v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    mul-int/2addr v3, v0

    if-le v1, v3, :cond_1

    .line 198
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    .line 200
    :cond_1
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getLineBreak()Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    move-result-object v0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestLineBreak:[C

    .line 201
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getSplitLines()Z

    move-result v0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->splitLines:Z

    .line 202
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getMaxSimpleKeyLength()I

    move-result v0

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->maxSimpleKeyLength:I

    .line 205
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    .line 208
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 209
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 212
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 213
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 214
    return-void
.end method

.method static synthetic access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptyDocument()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/yaml/snakeyaml/emitter/Emitter;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectNode(ZZZ)V

    return-void
.end method

.method static synthetic access$1802(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 62
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    return-object v0
.end method

.method static synthetic access$2010(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .locals 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    return v0
.end method

.method static synthetic access$202(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/EmitterState;)Lorg/yaml/snakeyaml/emitter/EmitterState;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 62
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    return v0
.end method

.method static synthetic access$2200(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    return v0
.end method

.method static synthetic access$2300(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->splitLines:Z

    return v0
.end method

.method static synthetic access$2400(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkSimpleKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indicatorIndent:I

    return v0
.end method

.method static synthetic access$3300(Lorg/yaml/snakeyaml/emitter/Emitter;I)V
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeWhitespace(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    return v0
.end method

.method static synthetic access$500(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/DumperOptions$Version;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 62
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareVersion(Lorg/yaml/snakeyaml/DumperOptions$Version;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 62
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$602(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/util/Map;

    .line 62
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$700()Ljava/util/Map;
    .locals 1

    .line 62
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTagHandle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;
    .locals 29
    .param p1, "scalar"    # Ljava/lang/String;

    .line 908
    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 909
    new-instance v9, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;-><init>(Ljava/lang/String;ZZZZZZ)V

    return-object v9

    .line 912
    :cond_0
    const/4 v0, 0x0

    .line 913
    .local v0, "blockIndicators":Z
    const/4 v1, 0x0

    .line 914
    .local v1, "flowIndicators":Z
    const/4 v2, 0x0

    .line 915
    .local v2, "lineBreaks":Z
    const/4 v3, 0x0

    .line 918
    .local v3, "specialCharacters":Z
    const/4 v4, 0x0

    .line 919
    .local v4, "leadingSpace":Z
    const/4 v5, 0x0

    .line 920
    .local v5, "leadingBreak":Z
    const/4 v6, 0x0

    .line 921
    .local v6, "trailingSpace":Z
    const/4 v7, 0x0

    .line 922
    .local v7, "trailingBreak":Z
    const/4 v9, 0x0

    .line 923
    .local v9, "breakSpace":Z
    const/4 v10, 0x0

    .line 926
    .local v10, "spaceBreak":Z
    const-string v11, "---"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "..."

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 927
    :cond_1
    const/4 v0, 0x1

    .line 928
    const/4 v1, 0x1

    .line 931
    :cond_2
    const/4 v11, 0x1

    .line 932
    .local v11, "preceededByWhitespace":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v12, v14, :cond_4

    sget-object v12, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v8, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    invoke-virtual {v12, v15}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_0

    :cond_3
    move v12, v13

    goto :goto_1

    :cond_4
    :goto_0
    move v12, v14

    .line 934
    .local v12, "followedByWhitespace":Z
    :goto_1
    const/4 v15, 0x0

    .line 937
    .local v15, "previousSpace":Z
    const/16 v16, 0x0

    .line 939
    .local v16, "previousBreak":Z
    const/16 v17, 0x0

    move/from16 v18, v7

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v7, v17

    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    .line 941
    .end local v0    # "blockIndicators":Z
    .end local v1    # "flowIndicators":Z
    .end local v2    # "lineBreaks":Z
    .end local v3    # "specialCharacters":Z
    .end local v4    # "leadingSpace":Z
    .end local v5    # "leadingBreak":Z
    .end local v6    # "trailingSpace":Z
    .local v7, "index":I
    .local v9, "blockIndicators":Z
    .local v10, "flowIndicators":Z
    .local v11, "lineBreaks":Z
    .local v12, "specialCharacters":Z
    .local v15, "leadingSpace":Z
    .local v16, "leadingBreak":Z
    .local v17, "trailingSpace":Z
    .local v18, "trailingBreak":Z
    .local v19, "breakSpace":Z
    .local v20, "spaceBreak":Z
    .local v21, "preceededByWhitespace":Z
    .local v22, "followedByWhitespace":Z
    .local v23, "previousSpace":Z
    .local v24, "previousBreak":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_22

    .line 942
    invoke-virtual {v8, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 944
    .local v0, "c":I
    const/16 v1, 0x3a

    const/4 v2, -0x1

    if-nez v7, :cond_8

    .line 946
    const-string v3, "#,[]{}&*!|>\'\"%@`"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 947
    const/4 v10, 0x1

    .line 948
    const/4 v9, 0x1

    .line 950
    :cond_5
    const/16 v2, 0x3f

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_7

    .line 951
    :cond_6
    const/4 v10, 0x1

    .line 952
    if-eqz v22, :cond_7

    .line 953
    const/4 v9, 0x1

    .line 956
    :cond_7
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_b

    if-eqz v22, :cond_b

    .line 957
    const/4 v1, 0x1

    .line 958
    .end local v10    # "flowIndicators":Z
    .restart local v1    # "flowIndicators":Z
    const/4 v2, 0x1

    move v10, v1

    move v9, v2

    .end local v9    # "blockIndicators":Z
    .local v2, "blockIndicators":Z
    goto :goto_3

    .line 962
    .end local v1    # "flowIndicators":Z
    .end local v2    # "blockIndicators":Z
    .restart local v9    # "blockIndicators":Z
    .restart local v10    # "flowIndicators":Z
    :cond_8
    const-string v3, ",?[]{}"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_9

    .line 963
    const/4 v10, 0x1

    .line 965
    :cond_9
    if-ne v0, v1, :cond_a

    .line 966
    const/4 v10, 0x1

    .line 967
    if-eqz v22, :cond_a

    .line 968
    const/4 v9, 0x1

    .line 971
    :cond_a
    const/16 v1, 0x23

    if-ne v0, v1, :cond_b

    if-eqz v21, :cond_b

    .line 972
    const/4 v1, 0x1

    .line 973
    .end local v10    # "flowIndicators":Z
    .restart local v1    # "flowIndicators":Z
    const/4 v2, 0x1

    move v10, v1

    move v9, v2

    .line 977
    .end local v1    # "flowIndicators":Z
    .restart local v10    # "flowIndicators":Z
    :cond_b
    :goto_3
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v1

    .line 978
    .local v1, "isLineBreak":Z
    if-eqz v1, :cond_c

    .line 979
    const/4 v2, 0x1

    move v11, v2

    .line 981
    :cond_c
    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eq v0, v2, :cond_13

    if-gt v3, v0, :cond_e

    const/16 v2, 0x7e

    if-le v0, v2, :cond_d

    goto :goto_4

    :cond_d
    move-object/from16 v6, p0

    goto :goto_6

    .line 982
    :cond_e
    :goto_4
    const/16 v2, 0x85

    if-eq v0, v2, :cond_12

    const/16 v2, 0xa0

    if-lt v0, v2, :cond_f

    const v2, 0xd7ff

    if-le v0, v2, :cond_12

    :cond_f
    const v2, 0xe000

    if-lt v0, v2, :cond_10

    const v2, 0xfffd

    if-le v0, v2, :cond_12

    :cond_10
    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_11

    const v2, 0x10ffff

    if-gt v0, v2, :cond_11

    goto :goto_5

    .line 990
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v6, p0

    move v12, v2

    .end local v12    # "specialCharacters":Z
    .local v2, "specialCharacters":Z
    goto :goto_6

    .line 986
    .end local v2    # "specialCharacters":Z
    .restart local v12    # "specialCharacters":Z
    :cond_12
    :goto_5
    move-object/from16 v6, p0

    iget-boolean v2, v6, Lorg/yaml/snakeyaml/emitter/Emitter;->allowUnicode:Z

    if-nez v2, :cond_14

    .line 987
    const/4 v2, 0x1

    move v12, v2

    .end local v12    # "specialCharacters":Z
    .restart local v2    # "specialCharacters":Z
    goto :goto_6

    .line 981
    .end local v2    # "specialCharacters":Z
    .restart local v12    # "specialCharacters":Z
    :cond_13
    move-object/from16 v6, p0

    .line 994
    :cond_14
    :goto_6
    if-ne v0, v3, :cond_18

    .line 995
    if-nez v7, :cond_15

    .line 996
    const/4 v15, 0x1

    .line 998
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v14

    if-ne v7, v2, :cond_16

    .line 999
    const/16 v17, 0x1

    .line 1001
    :cond_16
    if-eqz v24, :cond_17

    .line 1002
    const/16 v19, 0x1

    .line 1004
    :cond_17
    const/4 v2, 0x1

    .line 1005
    .end local v23    # "previousSpace":Z
    .local v2, "previousSpace":Z
    const/4 v3, 0x0

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v24    # "previousBreak":Z
    .local v3, "previousBreak":Z
    goto :goto_7

    .line 1006
    .end local v2    # "previousSpace":Z
    .end local v3    # "previousBreak":Z
    .restart local v23    # "previousSpace":Z
    .restart local v24    # "previousBreak":Z
    :cond_18
    if-eqz v1, :cond_1c

    .line 1007
    if-nez v7, :cond_19

    .line 1008
    const/16 v16, 0x1

    .line 1010
    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v14

    if-ne v7, v2, :cond_1a

    .line 1011
    const/16 v18, 0x1

    .line 1013
    :cond_1a
    if-eqz v23, :cond_1b

    .line 1014
    const/16 v20, 0x1

    .line 1016
    :cond_1b
    const/4 v2, 0x0

    .line 1017
    .end local v23    # "previousSpace":Z
    .restart local v2    # "previousSpace":Z
    const/4 v3, 0x1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v24    # "previousBreak":Z
    .restart local v3    # "previousBreak":Z
    goto :goto_7

    .line 1019
    .end local v2    # "previousSpace":Z
    .end local v3    # "previousBreak":Z
    .restart local v23    # "previousSpace":Z
    .restart local v24    # "previousBreak":Z
    :cond_1c
    const/4 v2, 0x0

    .line 1020
    .end local v23    # "previousSpace":Z
    .restart local v2    # "previousSpace":Z
    const/4 v3, 0x0

    move/from16 v23, v2

    move/from16 v24, v3

    .line 1024
    .end local v2    # "previousSpace":Z
    .restart local v23    # "previousSpace":Z
    :goto_7
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v7, v2

    .line 1025
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v2

    if-nez v2, :cond_1e

    if-eqz v1, :cond_1d

    goto :goto_8

    :cond_1d
    move v2, v13

    goto :goto_9

    :cond_1e
    :goto_8
    move v2, v14

    :goto_9
    move/from16 v21, v2

    .line 1026
    const/4 v2, 0x1

    .line 1027
    .end local v22    # "followedByWhitespace":Z
    .local v2, "followedByWhitespace":Z
    add-int/lit8 v3, v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 1028
    invoke-virtual {v8, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v3, v7

    .line 1029
    .local v3, "nextIndex":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 1030
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v8, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v4

    if-nez v4, :cond_20

    if-eqz v1, :cond_1f

    goto :goto_a

    :cond_1f
    move v4, v13

    goto :goto_b

    :cond_20
    :goto_a
    move v4, v14

    :goto_b
    move v2, v4

    move/from16 v22, v2

    goto :goto_c

    .line 1033
    .end local v0    # "c":I
    .end local v1    # "isLineBreak":Z
    .end local v3    # "nextIndex":I
    :cond_21
    move/from16 v22, v2

    .end local v2    # "followedByWhitespace":Z
    .restart local v22    # "followedByWhitespace":Z
    :goto_c
    goto/16 :goto_2

    .line 1035
    :cond_22
    move-object/from16 v6, p0

    const/4 v0, 0x1

    .line 1036
    .local v0, "allowFlowPlain":Z
    const/4 v1, 0x1

    .line 1037
    .local v1, "allowBlockPlain":Z
    const/4 v2, 0x1

    .line 1038
    .local v2, "allowSingleQuoted":Z
    const/4 v3, 0x1

    .line 1040
    .local v3, "allowBlock":Z
    if-nez v15, :cond_23

    if-nez v16, :cond_23

    if-nez v17, :cond_23

    if-eqz v18, :cond_24

    .line 1041
    :cond_23
    move v1, v13

    move v0, v13

    .line 1044
    :cond_24
    if-eqz v17, :cond_25

    .line 1045
    const/4 v3, 0x0

    .line 1049
    :cond_25
    if-eqz v19, :cond_26

    .line 1050
    move v2, v13

    move v1, v13

    move v0, v13

    .line 1054
    :cond_26
    if-nez v20, :cond_28

    if-eqz v12, :cond_27

    goto :goto_d

    :cond_27
    move v13, v2

    move v14, v3

    goto :goto_e

    .line 1055
    :cond_28
    :goto_d
    move v3, v13

    move v2, v13

    move v1, v13

    move v0, v13

    move v14, v3

    .line 1059
    .end local v2    # "allowSingleQuoted":Z
    .end local v3    # "allowBlock":Z
    .local v13, "allowSingleQuoted":Z
    .local v14, "allowBlock":Z
    :goto_e
    if-eqz v11, :cond_29

    .line 1060
    const/4 v0, 0x0

    .line 1063
    :cond_29
    if-eqz v10, :cond_2a

    .line 1064
    const/4 v0, 0x0

    move/from16 v25, v0

    goto :goto_f

    .line 1063
    :cond_2a
    move/from16 v25, v0

    .line 1067
    .end local v0    # "allowFlowPlain":Z
    .local v25, "allowFlowPlain":Z
    :goto_f
    if-eqz v9, :cond_2b

    .line 1068
    const/4 v1, 0x0

    move/from16 v26, v1

    goto :goto_10

    .line 1067
    :cond_2b
    move/from16 v26, v1

    .line 1071
    .end local v1    # "allowBlockPlain":Z
    .local v26, "allowBlockPlain":Z
    :goto_10
    new-instance v27, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    const/4 v2, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move v3, v11

    move/from16 v4, v25

    move/from16 v5, v26

    move v6, v13

    move/from16 v28, v7

    .end local v7    # "index":I
    .local v28, "index":I
    move v7, v14

    invoke-direct/range {v0 .. v7}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;-><init>(Ljava/lang/String;ZZZZZZ)V

    return-object v27
.end method

.method private checkEmptyDocument()Z
    .locals 4

    .line 670
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 673
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    .line 674
    .local v0, "event":Lorg/yaml/snakeyaml/events/Event;
    instance-of v2, v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v2, :cond_2

    .line 675
    move-object v2, v0

    check-cast v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 676
    .local v2, "e":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getAnchor()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 677
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 676
    :goto_0
    return v1

    .line 679
    .end local v2    # "e":Lorg/yaml/snakeyaml/events/ScalarEvent;
    :cond_2
    return v1

    .line 671
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_3
    :goto_1
    return v1
.end method

.method private checkEmptyMapping()Z
    .locals 1

    .line 666
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/MappingEndEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkEmptySequence()Z
    .locals 1

    .line 662
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceEndEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkSimpleKey()Z
    .locals 4

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "length":I
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v1, Lorg/yaml/snakeyaml/events/NodeEvent;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/yaml/snakeyaml/events/NodeEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 685
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 686
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v1, Lorg/yaml/snakeyaml/events/NodeEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 688
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 690
    :cond_1
    const/4 v1, 0x0

    .line 691
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v3, v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v3, :cond_2

    .line 692
    check-cast v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 693
    :cond_2
    instance-of v3, v2, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    if-eqz v3, :cond_3

    .line 694
    check-cast v2, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 696
    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 697
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 698
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 700
    :cond_4
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 702
    :cond_5
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v3, v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v3, :cond_7

    .line 703
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    if-nez v3, :cond_6

    .line 704
    check-cast v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v2

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 706
    :cond_6
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->getScalar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 708
    :cond_7
    iget v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->maxSimpleKeyLength:I

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v3, v2, Lorg/yaml/snakeyaml/events/AliasEvent;

    if-nez v3, :cond_9

    instance-of v2, v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 709
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isMultiline()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 710
    :cond_8
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptySequence()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptyMapping()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    .line 708
    :goto_1
    return v2
.end method

.method private chooseScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .locals 3

    .line 765
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 766
    .local v0, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    if-nez v1, :cond_0

    .line 767
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 769
    :cond_0
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->isPlain()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->DOUBLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 770
    :cond_2
    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->DOUBLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v1

    .line 772
    :cond_3
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->isPlain()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 773
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isMultiline()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_4
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 774
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isAllowFlowPlain()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isAllowBlockPlain()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 775
    :cond_6
    const/4 v1, 0x0

    return-object v1

    .line 778
    :cond_7
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->isPlain()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->LITERAL:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-eq v1, v2, :cond_8

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->FOLDED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-ne v1, v2, :cond_9

    .line 779
    :cond_8
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isAllowBlock()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 780
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    return-object v1

    .line 783
    :cond_9
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->isPlain()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->SINGLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-ne v1, v2, :cond_c

    .line 784
    :cond_a
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isAllowSingleQuoted()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isMultiline()Z

    move-result v1

    if-nez v1, :cond_c

    .line 785
    :cond_b
    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->SINGLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v1

    .line 788
    :cond_c
    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->DOUBLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v1
.end method

.method private determineBlockHints(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1298
    .local v0, "hints":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1299
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1301
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1302
    .local v1, "ch1":C
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1303
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1304
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v2, :cond_2

    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1305
    :cond_2
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private expectAlias()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/AliasEvent;

    if-eqz v0, :cond_0

    .line 420
    const-string v0, "*"

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processAnchor(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/emitter/EmitterState;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 422
    return-void

    .line 418
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "Alias must be provided"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expectBlockMapping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 608
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockMappingKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockMappingKey;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 609
    return-void
.end method

.method private expectBlockSequence()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->mappingContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 574
    .local v0, "indentless":Z
    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 575
    new-instance v1, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockSequenceItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 576
    return-void
.end method

.method private expectFlowMapping()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    const-string v0, "{"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 489
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    .line 490
    invoke-direct {p0, v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 491
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 494
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowMappingKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowMappingKey;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 495
    return-void
.end method

.method private expectFlowSequence()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    const-string v0, "["

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 435
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    .line 436
    invoke-direct {p0, v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 437
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 440
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 441
    return-void
.end method

.method private expectNode(ZZZ)V
    .locals 3
    .param p1, "root"    # Z
    .param p2, "mapping"    # Z
    .param p3, "simpleKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->rootContext:Z

    .line 387
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->mappingContext:Z

    .line 388
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    .line 389
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v1, v0, Lorg/yaml/snakeyaml/events/AliasEvent;

    if-eqz v1, :cond_0

    .line 390
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectAlias()V

    goto/16 :goto_3

    .line 391
    :cond_0
    instance-of v1, v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-nez v1, :cond_2

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 412
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected NodeEvent, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_2
    :goto_0
    const-string v0, "&"

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processAnchor(Ljava/lang/String;)V

    .line 393
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processTag()V

    .line 394
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v1, v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v1, :cond_3

    .line 395
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectScalar()V

    goto :goto_3

    .line 396
    :cond_3
    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    if-eqz v0, :cond_6

    .line 397
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->isFlow()Z

    move-result v0

    if-nez v0, :cond_5

    .line 398
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptySequence()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 401
    :cond_4
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectBlockSequence()V

    goto :goto_3

    .line 399
    :cond_5
    :goto_1
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectFlowSequence()V

    goto :goto_3

    .line 404
    :cond_6
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->isFlow()Z

    move-result v0

    if-nez v0, :cond_8

    .line 405
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptyMapping()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 408
    :cond_7
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectBlockMapping()V

    goto :goto_3

    .line 406
    :cond_8
    :goto_2
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectFlowMapping()V

    .line 414
    :goto_3
    return-void
.end method

.method private expectScalar()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 426
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processScalar()V

    .line 427
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    .line 428
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/emitter/EmitterState;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 429
    return-void
.end method

.method private increaseIndent(ZZ)V
    .locals 2
    .param p1, "flow"    # Z
    .param p2, "indentless"    # Z

    .line 264
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 266
    if-eqz p1, :cond_0

    .line 267
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    goto :goto_0

    .line 269
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    goto :goto_0

    .line 271
    :cond_1
    if-nez p2, :cond_2

    .line 272
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    .line 274
    :cond_2
    :goto_0
    return-void
.end method

.method private needEvents(I)Z
    .locals 5
    .param p1, "count"    # I

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "level":I
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 246
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/events/Event;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 248
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/events/Event;

    .line 249
    .local v2, "event":Lorg/yaml/snakeyaml/events/Event;
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    if-nez v4, :cond_3

    instance-of v4, v2, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    if-eqz v4, :cond_0

    goto :goto_2

    .line 251
    :cond_0
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/DocumentEndEvent;

    if-nez v4, :cond_2

    instance-of v4, v2, Lorg/yaml/snakeyaml/events/CollectionEndEvent;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 253
    :cond_1
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/StreamEndEvent;

    if-eqz v4, :cond_4

    .line 254
    const/4 v0, -0x1

    goto :goto_3

    .line 252
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 250
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 256
    :cond_4
    :goto_3
    if-gez v0, :cond_5

    .line 257
    return v3

    .line 259
    .end local v2    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_5
    goto :goto_0

    .line 260
    :cond_6
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    add-int/lit8 v4, p1, 0x1

    if-ge v2, v4, :cond_7

    const/4 v3, 0x1

    :cond_7
    return v3
.end method

.method private needMoreEvents()Z
    .locals 3

    .line 228
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 229
    return v1

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    .line 232
    .local v0, "event":Lorg/yaml/snakeyaml/events/Event;
    instance-of v2, v0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    if-eqz v2, :cond_1

    .line 233
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(I)Z

    move-result v1

    return v1

    .line 234
    :cond_1
    instance-of v1, v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    if-eqz v1, :cond_2

    .line 235
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(I)Z

    move-result v1

    return v1

    .line 236
    :cond_2
    instance-of v1, v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    if-eqz v1, :cond_3

    .line 237
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(I)Z

    move-result v1

    return v1

    .line 239
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method static prepareAnchor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "anchor"    # Ljava/lang/String;

    .line 897
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ANCHOR_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    return-object p0

    .line 901
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid character in the anchor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "anchor must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 866
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 869
    const-string v0, "!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    return-object p1

    .line 872
    :cond_0
    const/4 v1, 0x0

    .line 873
    .local v1, "handle":Ljava/lang/String;
    move-object v2, p1

    .line 875
    .local v2, "suffix":Ljava/lang/String;
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 876
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 877
    :cond_1
    move-object v1, v4

    .line 879
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 880
    :cond_3
    if-eqz v1, :cond_4

    .line 881
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 882
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 885
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 886
    .local v0, "end":I
    if-lez v0, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v3, ""

    .line 888
    .local v3, "suffixText":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_6

    .line 889
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 891
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 867
    .end local v0    # "end":I
    .end local v1    # "handle":Ljava/lang/String;
    .end local v2    # "suffix":Ljava/lang/String;
    .end local v3    # "suffixText":Ljava/lang/String;
    :cond_7
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "tag must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareTagHandle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "handle"    # Ljava/lang/String;

    .line 836
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 838
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    .line 840
    const-string v0, "!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->HANDLE_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 841
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid character in the tag handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_1
    :goto_0
    return-object p1

    .line 839
    :cond_2
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag handle must start and end with \'!\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 837
    :cond_3
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "tag handle must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareTagPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .line 847
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 852
    .local v1, "start":I
    const/4 v2, 0x0

    .line 853
    .local v2, "end":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_0

    .line 854
    const/4 v2, 0x1

    .line 856
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 857
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 859
    :cond_1
    if-ge v1, v2, :cond_2

    .line 860
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 848
    .end local v0    # "chunks":Ljava/lang/StringBuilder;
    .end local v1    # "start":I
    .end local v2    # "end":I
    :cond_3
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "tag prefix must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareVersion(Lorg/yaml/snakeyaml/DumperOptions$Version;)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 827
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/DumperOptions$Version;->major()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 830
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/DumperOptions$Version;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 828
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported YAML version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processAnchor(Ljava/lang/String;)V
    .locals 5
    .param p1, "indicator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/NodeEvent;

    .line 717
    .local v0, "ev":Lorg/yaml/snakeyaml/events/NodeEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 718
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 719
    return-void

    .line 721
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 722
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 724
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 725
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 726
    return-void
.end method

.method private processScalar()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 793
    .local v0, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    if-nez v1, :cond_0

    .line 794
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 796
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-nez v1, :cond_1

    .line 797
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->chooseScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 799
    :cond_1
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->splitLines:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 800
    .local v1, "split":Z
    :goto_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-nez v2, :cond_3

    .line 801
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->getScalar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writePlain(Ljava/lang/String;Z)V

    goto :goto_1

    .line 803
    :cond_3
    sget-object v2, Lorg/yaml/snakeyaml/emitter/Emitter$1;->$SwitchMap$org$yaml$snakeyaml$DumperOptions$ScalarStyle:[I

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 817
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected style: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 814
    :pswitch_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->getScalar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLiteral(Ljava/lang/String;)V

    .line 815
    goto :goto_1

    .line 811
    :pswitch_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->getScalar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeFolded(Ljava/lang/String;Z)V

    .line 812
    goto :goto_1

    .line 808
    :pswitch_2
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->getScalar()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeSingleQuoted(Ljava/lang/String;Z)V

    .line 809
    goto :goto_1

    .line 805
    :pswitch_3
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->getScalar()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeDoubleQuoted(Ljava/lang/String;Z)V

    .line 806
    nop

    .line 820
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 821
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 822
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processTag()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    const/4 v0, 0x0

    .line 730
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v1, Lorg/yaml/snakeyaml/events/ScalarEvent;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 731
    check-cast v1, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 732
    .local v1, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 733
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-nez v2, :cond_0

    .line 734
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->chooseScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v2

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 736
    :cond_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_4

    :cond_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v2

    .line 737
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v2

    .line 738
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInNonPlainScalar()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 739
    :cond_3
    iput-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 740
    return-void

    .line 742
    :cond_4
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v2

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 743
    const-string v0, "!"

    .line 744
    iput-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 746
    .end local v1    # "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    :cond_5
    goto :goto_0

    .line 747
    :cond_6
    check-cast v1, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    .line 748
    .local v1, "ev":Lorg/yaml/snakeyaml/events/CollectionStartEvent;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 749
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v0, :cond_8

    :cond_7
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->getImplicit()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 750
    iput-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 751
    return-void

    .line 754
    .end local v1    # "ev":Lorg/yaml/snakeyaml/events/CollectionStartEvent;
    :cond_8
    :goto_0
    if-eqz v0, :cond_a

    .line 757
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 758
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 760
    :cond_9
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 761
    iput-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 762
    return-void

    .line 755
    :cond_a
    new-instance v1, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v2, "tag is not specified"

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeDoubleQuoted(Ljava/lang/String;Z)V
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1222
    const-string v0, "\""

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1223
    const/4 v3, 0x0

    .line 1224
    .local v3, "start":I
    const/4 v4, 0x0

    .line 1225
    .local v4, "end":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_e

    .line 1226
    const/4 v5, 0x0

    .line 1227
    .local v5, "ch":Ljava/lang/Character;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 1228
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 1230
    :cond_0
    const-string v6, "\\"

    const/16 v7, 0x20

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    const-string v9, "\"\\\u0085\u2028\u2029\ufeff"

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 1231
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    if-gt v7, v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    const/16 v9, 0x7e

    if-le v8, v9, :cond_9

    .line 1232
    :cond_1
    if-ge v3, v4, :cond_2

    .line 1233
    sub-int v8, v4, v3

    .line 1234
    .local v8, "len":I
    iget v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v9, v8

    iput v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1235
    iget-object v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v9, p1, v3, v8}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1236
    move v3, v4

    .line 1238
    .end local v8    # "len":I
    :cond_2
    if-eqz v5, :cond_9

    .line 1240
    sget-object v8, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1241
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "data":Ljava/lang/String;
    goto/16 :goto_2

    .line 1242
    .end local v8    # "data":Ljava/lang/String;
    :cond_3
    iget-boolean v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->allowUnicode:Z

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-static {v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->isPrintable(I)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    .line 1262
    :cond_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "data":Ljava/lang/String;
    goto/16 :goto_2

    .line 1245
    .end local v8    # "data":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    const/16 v9, 0xff

    const/16 v10, 0x10

    if-gt v8, v9, :cond_6

    .line 1246
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1247
    .local v8, "s":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1248
    .local v8, "data":Ljava/lang/String;
    goto/16 :goto_2

    .end local v8    # "data":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    const v9, 0xd800

    const-string v11, "\\u"

    const-string v12, "000"

    if-lt v8, v9, :cond_8

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    const v9, 0xdbff

    if-gt v8, v9, :cond_8

    .line 1249
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 1250
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    .line 1251
    .local v8, "ch2":Ljava/lang/Character;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v10

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1252
    .local v9, "s":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\\U"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x8

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1253
    .end local v9    # "s":Ljava/lang/String;
    .local v8, "data":Ljava/lang/String;
    goto :goto_2

    .line 1254
    .end local v8    # "data":Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1255
    .local v8, "s":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1256
    .local v8, "data":Ljava/lang/String;
    goto :goto_2

    .line 1258
    .end local v8    # "data":Ljava/lang/String;
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1259
    .local v8, "s":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1260
    .local v8, "data":Ljava/lang/String;
    nop

    .line 1264
    :goto_2
    iget v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1265
    iget-object v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v9, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1266
    add-int/lit8 v3, v4, 0x1

    .line 1269
    .end local v8    # "data":Ljava/lang/String;
    :cond_9
    if-lez v4, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v1

    if-ge v4, v8, :cond_d

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    if-eq v8, v7, :cond_a

    if-lt v3, v4, :cond_d

    :cond_a
    iget v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    sub-int v9, v4, v3

    add-int/2addr v8, v9

    iget v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v8, v9, :cond_d

    if-eqz p2, :cond_d

    .line 1272
    if-lt v3, v4, :cond_b

    .line 1273
    const-string v6, "\\"

    .local v6, "data":Ljava/lang/String;
    goto :goto_3

    .line 1275
    .end local v6    # "data":Ljava/lang/String;
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1277
    .restart local v6    # "data":Ljava/lang/String;
    :goto_3
    if-ge v3, v4, :cond_c

    .line 1278
    move v3, v4

    .line 1280
    :cond_c
    iget v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1281
    iget-object v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v8, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1283
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1284
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1285
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_d

    .line 1286
    const-string v6, "\\"

    .line 1287
    iget v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1288
    iget-object v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1291
    .end local v6    # "data":Ljava/lang/String;
    :cond_d
    nop

    .end local v5    # "ch":Ljava/lang/Character;
    add-int/lit8 v4, v4, 0x1

    .line 1292
    goto/16 :goto_0

    .line 1293
    :cond_e
    invoke-virtual {p0, v0, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1294
    return-void
.end method

.method private writeLineBreak(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1132
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1133
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1134
    if-nez p1, :cond_0

    .line 1135
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestLineBreak:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    goto :goto_0

    .line 1137
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1139
    :goto_0
    return-void
.end method

.method private writeSingleQuoted(Ljava/lang/String;Z)V
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1159
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "\'"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1160
    const/4 v5, 0x0

    .line 1161
    .local v5, "spaces":Z
    const/4 v6, 0x0

    .line 1162
    .local v6, "breaks":Z
    const/4 v7, 0x0

    .local v7, "start":I
    const/4 v8, 0x0

    .line 1164
    .local v8, "end":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_d

    .line 1165
    const/4 v9, 0x0

    .line 1166
    .local v9, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_0

    .line 1167
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1169
    :cond_0
    const/16 v10, 0x20

    if-eqz v5, :cond_3

    .line 1170
    if-eqz v9, :cond_1

    if-eq v9, v10, :cond_9

    .line 1171
    :cond_1
    add-int/lit8 v11, v7, 0x1

    if-ne v11, v8, :cond_2

    iget v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    iget v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v11, v12, :cond_2

    if-eqz p2, :cond_2

    if-eqz v7, :cond_2

    .line 1172
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v8, v11, :cond_2

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    goto :goto_1

    .line 1175
    :cond_2
    sub-int v11, v8, v7

    .line 1176
    .local v11, "len":I
    iget v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v12, v11

    iput v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1177
    iget-object v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v12, v1, v7, v11}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1179
    .end local v11    # "len":I
    :goto_1
    move v7, v8

    goto :goto_4

    .line 1181
    :cond_3
    if-eqz v6, :cond_8

    .line 1182
    if-eqz v9, :cond_4

    sget-object v11, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v11, v9}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1183
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0xa

    if-ne v11, v13, :cond_5

    .line 1184
    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1186
    :cond_5
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1187
    .local v11, "data":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    array-length v15, v14

    move v3, v4

    :goto_2
    if-ge v3, v15, :cond_7

    aget-char v4, v14, v3

    .line 1188
    .local v4, "br":C
    if-ne v4, v13, :cond_6

    .line 1189
    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_3

    .line 1191
    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1187
    .end local v4    # "br":C
    :goto_3
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_2

    .line 1194
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1195
    move v7, v8

    .line 1196
    .end local v11    # "data":Ljava/lang/String;
    goto :goto_4

    .line 1198
    :cond_8
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v4, "\u0000 \'"

    invoke-virtual {v3, v9, v4}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1199
    if-ge v7, v8, :cond_9

    .line 1200
    sub-int v3, v8, v7

    .line 1201
    .local v3, "len":I
    iget v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1202
    iget-object v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v4, v1, v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1203
    move v7, v8

    .line 1207
    .end local v3    # "len":I
    :cond_9
    :goto_4
    const/16 v3, 0x27

    if-ne v9, v3, :cond_a

    .line 1208
    iget v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1209
    iget-object v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    const-string v4, "\'\'"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1210
    add-int/lit8 v3, v8, 0x1

    move v7, v3

    .line 1212
    :cond_a
    if-eqz v9, :cond_c

    .line 1213
    if-ne v9, v10, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    .line 1214
    .end local v5    # "spaces":Z
    .local v3, "spaces":Z
    :goto_5
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v9}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v4

    move v5, v3

    move v6, v4

    .line 1216
    .end local v3    # "spaces":Z
    .restart local v5    # "spaces":Z
    :cond_c
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1218
    .end local v9    # "ch":C
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1219
    return-void
.end method

.method private writeWhitespace(I)V
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1118
    if-gtz p1, :cond_0

    .line 1119
    return-void

    .line 1121
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1122
    new-array v0, p1, [C

    .line 1123
    .local v0, "data":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1124
    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 1123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1126
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1127
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write([C)V

    .line 1128
    return-void
.end method


# virtual methods
.method public emit(Lorg/yaml/snakeyaml/events/Event;)V
    .locals 1
    .param p1, "event"    # Lorg/yaml/snakeyaml/events/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->needMoreEvents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    .line 220
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/emitter/EmitterState;->expect()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method flushStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 1079
    return-void
.end method

.method writeFolded(Ljava/lang/String;Z)V
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1311
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->determineBlockHints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1312
    .local v2, "hints":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v5}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1313
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2b

    if-ne v3, v6, :cond_0

    .line 1314
    iput-boolean v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1316
    :cond_0
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1317
    const/4 v6, 0x1

    .line 1318
    .local v6, "leadingSpace":Z
    const/4 v7, 0x0

    .line 1319
    .local v7, "spaces":Z
    const/4 v8, 0x1

    .line 1320
    .local v8, "breaks":Z
    const/4 v9, 0x0

    .local v9, "start":I
    const/4 v10, 0x0

    .line 1321
    .local v10, "end":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v10, v11, :cond_f

    .line 1322
    const/4 v11, 0x0

    .line 1323
    .local v11, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v10, v12, :cond_1

    .line 1324
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1326
    :cond_1
    const/16 v12, 0x20

    if-eqz v8, :cond_8

    .line 1327
    if-eqz v11, :cond_2

    sget-object v13, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v13, v11}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1328
    :cond_2
    const/16 v13, 0xa

    if-nez v6, :cond_3

    if-eqz v11, :cond_3

    if-eq v11, v12, :cond_3

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_3

    .line 1329
    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1331
    :cond_3
    if-ne v11, v12, :cond_4

    move v14, v4

    goto :goto_1

    :cond_4
    move v14, v5

    :goto_1
    move v6, v14

    .line 1332
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1333
    .local v14, "data":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    array-length v4, v15

    :goto_2
    if-ge v5, v4, :cond_6

    aget-char v12, v15, v5

    .line 1334
    .local v12, "br":C
    if-ne v12, v13, :cond_5

    .line 1335
    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_3

    .line 1337
    :cond_5
    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1333
    .end local v12    # "br":C
    :goto_3
    add-int/lit8 v5, v5, 0x1

    const/16 v12, 0x20

    const/16 v13, 0xa

    goto :goto_2

    .line 1340
    :cond_6
    if-eqz v11, :cond_7

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1343
    :cond_7
    move v4, v10

    .line 1344
    .end local v9    # "start":I
    .end local v14    # "data":Ljava/lang/String;
    .local v4, "start":I
    move v9, v4

    goto :goto_5

    .line 1345
    .end local v4    # "start":I
    .restart local v9    # "start":I
    :cond_8
    if-eqz v7, :cond_a

    .line 1346
    const/16 v4, 0x20

    if-eq v11, v4, :cond_c

    .line 1347
    add-int/lit8 v4, v9, 0x1

    if-ne v4, v10, :cond_9

    iget v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    iget v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v4, v5, :cond_9

    if-eqz p2, :cond_9

    .line 1348
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    goto :goto_4

    .line 1350
    :cond_9
    sub-int v4, v10, v9

    .line 1351
    .local v4, "len":I
    iget v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1352
    iget-object v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v5, v1, v9, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1354
    .end local v4    # "len":I
    :goto_4
    move v4, v10

    move v9, v4

    .end local v9    # "start":I
    .local v4, "start":I
    goto :goto_5

    .line 1357
    .end local v4    # "start":I
    .restart local v9    # "start":I
    :cond_a
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v5, "\u0000 "

    invoke-virtual {v4, v11, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1358
    sub-int v4, v10, v9

    .line 1359
    .local v4, "len":I
    iget v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1360
    iget-object v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v5, v1, v9, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1361
    if-nez v11, :cond_b

    .line 1362
    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1364
    :cond_b
    move v5, v10

    move v9, v5

    .line 1367
    .end local v4    # "len":I
    :cond_c
    :goto_5
    if-eqz v11, :cond_e

    .line 1368
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v11}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v4

    .line 1369
    .end local v8    # "breaks":Z
    .local v4, "breaks":Z
    const/16 v5, 0x20

    if-ne v11, v5, :cond_d

    const/4 v5, 0x1

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    :goto_6
    move v8, v4

    move v7, v5

    .line 1371
    .end local v4    # "breaks":Z
    .restart local v8    # "breaks":Z
    :cond_e
    nop

    .end local v11    # "ch":C
    add-int/lit8 v10, v10, 0x1

    .line 1372
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1373
    :cond_f
    return-void
.end method

.method writeIndent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1104
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "indent":I
    goto :goto_0

    .line 1107
    .end local v0    # "indent":I
    :cond_0
    const/4 v0, 0x0

    .line 1110
    .restart local v0    # "indent":I
    :goto_0
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    if-gt v1, v0, :cond_1

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    if-nez v1, :cond_2

    .line 1111
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1114
    :cond_2
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeWhitespace(I)V

    .line 1115
    return-void
.end method

.method writeIndicator(Ljava/lang/String;ZZZ)V
    .locals 3
    .param p1, "indicator"    # Ljava/lang/String;
    .param p2, "needWhitespace"    # Z
    .param p3, "whitespace"    # Z
    .param p4, "indentation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1091
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1092
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1093
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sget-object v2, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write([C)V

    .line 1095
    :cond_0
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1096
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1097
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1098
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1099
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method writeLiteral(Ljava/lang/String;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1376
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->determineBlockHints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1377
    .local v0, "hints":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1378
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2b

    if-ne v1, v4, :cond_0

    .line 1379
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1381
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1382
    const/4 v2, 0x1

    .line 1383
    .local v2, "breaks":Z
    const/4 v4, 0x0

    .local v4, "start":I
    const/4 v5, 0x0

    .line 1384
    .local v5, "end":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_b

    .line 1385
    const/4 v6, 0x0

    .line 1386
    .local v6, "ch":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 1387
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1389
    :cond_1
    if-eqz v2, :cond_6

    .line 1390
    if-eqz v6, :cond_2

    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1391
    :cond_2
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1392
    .local v7, "data":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    array-length v9, v8

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_4

    aget-char v11, v8, v10

    .line 1393
    .local v11, "br":C
    const/16 v12, 0xa

    if-ne v11, v12, :cond_3

    .line 1394
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_2

    .line 1396
    :cond_3
    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1392
    .end local v11    # "br":C
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1399
    :cond_4
    if-eqz v6, :cond_5

    .line 1400
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1402
    :cond_5
    move v4, v5

    .line 1403
    .end local v7    # "data":Ljava/lang/String;
    goto :goto_3

    .line 1405
    :cond_6
    if-eqz v6, :cond_7

    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1406
    :cond_7
    iget-object v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sub-int v8, v5, v4

    invoke-virtual {v7, p1, v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1407
    if-nez v6, :cond_8

    .line 1408
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1410
    :cond_8
    move v4, v5

    .line 1413
    :cond_9
    :goto_3
    if-eqz v6, :cond_a

    .line 1414
    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v2

    .line 1416
    :cond_a
    nop

    .end local v6    # "ch":C
    add-int/lit8 v5, v5, 0x1

    .line 1417
    goto :goto_0

    .line 1418
    :cond_b
    return-void
.end method

.method writePlain(Ljava/lang/String;Z)V
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1421
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->rootContext:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1422
    iput-boolean v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1424
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1425
    return-void

    .line 1427
    :cond_1
    iget-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    if-nez v2, :cond_2

    .line 1428
    iget v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1429
    iget-object v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sget-object v4, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write([C)V

    .line 1431
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1432
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1433
    const/4 v4, 0x0

    .line 1434
    .local v4, "spaces":Z
    const/4 v5, 0x0

    .line 1435
    .local v5, "breaks":Z
    const/4 v6, 0x0

    .local v6, "start":I
    const/4 v7, 0x0

    .line 1436
    .local v7, "end":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_d

    .line 1437
    const/4 v8, 0x0

    .line 1438
    .local v8, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_3

    .line 1439
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1441
    :cond_3
    const/16 v9, 0x20

    if-eqz v4, :cond_5

    .line 1442
    if-eq v8, v9, :cond_a

    .line 1443
    add-int/lit8 v10, v6, 0x1

    if-ne v10, v7, :cond_4

    iget v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    iget v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v10, v11, :cond_4

    if-eqz p2, :cond_4

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1445
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1446
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    goto :goto_1

    .line 1448
    :cond_4
    sub-int v10, v7, v6

    .line 1449
    .local v10, "len":I
    iget v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v11, v10

    iput v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1450
    iget-object v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v11, v1, v6, v10}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1452
    .end local v10    # "len":I
    :goto_1
    move v6, v7

    goto :goto_4

    .line 1454
    :cond_5
    if-eqz v5, :cond_9

    .line 1455
    sget-object v10, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v10, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1456
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x0

    const/16 v12, 0xa

    if-ne v10, v12, :cond_6

    .line 1457
    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1459
    :cond_6
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1460
    .local v10, "data":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    array-length v14, v13

    move v15, v2

    :goto_2
    if-ge v15, v14, :cond_8

    aget-char v3, v13, v15

    .line 1461
    .local v3, "br":C
    if-ne v3, v12, :cond_7

    .line 1462
    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_3

    .line 1464
    :cond_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1460
    .end local v3    # "br":C
    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto :goto_2

    .line 1467
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1468
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1469
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1470
    move v3, v7

    .line 1471
    .end local v6    # "start":I
    .end local v10    # "data":Ljava/lang/String;
    .local v3, "start":I
    move v6, v3

    goto :goto_4

    .line 1473
    .end local v3    # "start":I
    .restart local v6    # "start":I
    :cond_9
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v10, "\u0000 "

    invoke-virtual {v3, v8, v10}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1474
    sub-int v3, v7, v6

    .line 1475
    .local v3, "len":I
    iget v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v10, v3

    iput v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1476
    iget-object v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v10, v1, v6, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1477
    move v6, v7

    .line 1480
    .end local v3    # "len":I
    :cond_a
    :goto_4
    if-eqz v8, :cond_c

    .line 1481
    if-ne v8, v9, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    move v3, v2

    .line 1482
    .end local v4    # "spaces":Z
    .local v3, "spaces":Z
    :goto_5
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v4

    move v5, v4

    move v4, v3

    .line 1484
    .end local v3    # "spaces":Z
    .restart local v4    # "spaces":Z
    :cond_c
    nop

    .end local v8    # "ch":C
    add-int/lit8 v7, v7, 0x1

    .line 1485
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1486
    :cond_d
    return-void
.end method

.method writeStreamEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1086
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->flushStream()V

    .line 1087
    return-void
.end method

.method writeStreamStart()V
    .locals 0

    .line 1083
    return-void
.end method

.method writeTagDirective(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "handleText"    # Ljava/lang/String;
    .param p2, "prefixText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    const-string v1, "%TAG "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sget-object v1, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    .line 1153
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method writeVersionDirective(Ljava/lang/String;)V
    .locals 2
    .param p1, "versionText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    const-string v1, "%YAML "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1145
    return-void
.end method
