.class public Lorg/jpos/q2/CLIContext$Builder;
.super Ljava/lang/Object;
.source "CLIContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/q2/CLIContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field cli:Lorg/jpos/q2/CLI;

.field err:Ljava/io/OutputStream;

.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;

.field reader:Lorg/jline/reader/LineReader;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jpos/q2/CLIContext$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jpos/q2/CLIContext$1;

    .line 153
    invoke-direct {p0}, Lorg/jpos/q2/CLIContext$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/jpos/q2/CLIContext;
    .locals 9

    .line 187
    iget-object v0, p0, Lorg/jpos/q2/CLIContext$Builder;->reader:Lorg/jline/reader/LineReader;

    if-eqz v0, :cond_1

    .line 188
    iget-object v1, p0, Lorg/jpos/q2/CLIContext$Builder;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 189
    invoke-interface {v0}, Lorg/jline/reader/LineReader;->getTerminal()Lorg/jline/terminal/Terminal;

    move-result-object v0

    invoke-interface {v0}, Lorg/jline/terminal/Terminal;->output()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/CLIContext$Builder;->out:Ljava/io/OutputStream;

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/jpos/q2/CLIContext$Builder;->err:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/jpos/q2/CLIContext$Builder;->out:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/jpos/q2/CLIContext$Builder;->err:Ljava/io/OutputStream;

    .line 193
    :cond_1
    new-instance v0, Lorg/jpos/q2/CLIContext;

    iget-object v2, p0, Lorg/jpos/q2/CLIContext$Builder;->cli:Lorg/jpos/q2/CLI;

    iget-object v3, p0, Lorg/jpos/q2/CLIContext$Builder;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/jpos/q2/CLIContext$Builder;->err:Ljava/io/OutputStream;

    iget-object v5, p0, Lorg/jpos/q2/CLIContext$Builder;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/jpos/q2/CLIContext$Builder;->reader:Lorg/jline/reader/LineReader;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/jpos/q2/CLIContext;-><init>(Lorg/jpos/q2/CLI;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Lorg/jline/reader/LineReader;Ljava/util/Map;Lorg/jpos/q2/CLIContext$1;)V

    return-object v0
.end method

.method public cli(Lorg/jpos/q2/CLI;)Lorg/jpos/q2/CLIContext$Builder;
    .locals 0
    .param p1, "cli"    # Lorg/jpos/q2/CLI;

    .line 182
    iput-object p1, p0, Lorg/jpos/q2/CLIContext$Builder;->cli:Lorg/jpos/q2/CLI;

    .line 183
    return-object p0
.end method

.method public err(Ljava/io/OutputStream;)Lorg/jpos/q2/CLIContext$Builder;
    .locals 0
    .param p1, "err"    # Ljava/io/OutputStream;

    .line 167
    iput-object p1, p0, Lorg/jpos/q2/CLIContext$Builder;->err:Ljava/io/OutputStream;

    .line 168
    return-object p0
.end method

.method public in(Ljava/io/InputStream;)Lorg/jpos/q2/CLIContext$Builder;
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 172
    iput-object p1, p0, Lorg/jpos/q2/CLIContext$Builder;->in:Ljava/io/InputStream;

    .line 173
    return-object p0
.end method

.method public out(Ljava/io/OutputStream;)Lorg/jpos/q2/CLIContext$Builder;
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 162
    iput-object p1, p0, Lorg/jpos/q2/CLIContext$Builder;->out:Ljava/io/OutputStream;

    .line 163
    return-object p0
.end method

.method public reader(Lorg/jline/reader/LineReader;)Lorg/jpos/q2/CLIContext$Builder;
    .locals 0
    .param p1, "reader"    # Lorg/jline/reader/LineReader;

    .line 177
    iput-object p1, p0, Lorg/jpos/q2/CLIContext$Builder;->reader:Lorg/jline/reader/LineReader;

    .line 178
    return-object p0
.end method
