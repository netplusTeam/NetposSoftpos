.class public Lorg/jpos/q2/cli/VERSION;
.super Ljava/lang/Object;
.source "VERSION.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 3
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 35
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object v0, p2, v1

    const-string v2, "-a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 36
    .local v0, "all":Z
    :goto_0
    array-length v2, p2

    if-le v2, v1, :cond_1

    if-nez v0, :cond_1

    .line 37
    const-string v1, "Unknown option"

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 38
    return-void

    .line 40
    :cond_1
    invoke-static {}, Lorg/jpos/q2/Q2;->getVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 41
    if-eqz v0, :cond_2

    .line 42
    invoke-static {}, Lorg/jpos/q2/install/ModuleUtils;->getModulesUUIDs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lorg/jpos/q2/install/ModuleUtils;->getSystemHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lorg/jpos/util/PGPHelper;->getLicenseeHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 46
    :cond_2
    return-void
.end method
