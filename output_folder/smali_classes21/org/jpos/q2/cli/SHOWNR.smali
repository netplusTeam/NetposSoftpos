.class public Lorg/jpos/q2/cli/SHOWNR;
.super Ljava/lang/Object;
.source "SHOWNR.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showAll(Lorg/jpos/q2/CLIContext;Z)V
    .locals 6
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "detail"    # Z

    .line 58
    invoke-static {}, Lorg/jpos/util/NameRegistrar;->getInstance()Lorg/jpos/util/NameRegistrar;

    move-result-object v0

    .line 59
    .local v0, "nr":Lorg/jpos/util/NameRegistrar;
    const/4 v1, 0x0

    .line 60
    .local v1, "maxw":I
    invoke-static {}, Lorg/jpos/util/NameRegistrar;->getAsMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 61
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 63
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 64
    .end local v3    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lorg/jpos/util/NameRegistrar;->getAsMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 69
    .restart local v3    # "entry":Ljava/util/Map$Entry;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/jpos/iso/ISOUtil;->strpad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 71
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {p1, v4}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 73
    if-eqz p2, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/jpos/util/Loggeable;

    if-eqz v4, :cond_1

    .line 74
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/util/Loggeable;

    const-string v5, "   "

    invoke-virtual {p1, v4, v5}, Lorg/jpos/q2/CLIContext;->printLoggeable(Lorg/jpos/util/Loggeable;Ljava/lang/String;)V

    .line 76
    .end local v3    # "entry":Ljava/util/Map$Entry;
    :cond_1
    goto :goto_1

    .line 77
    :cond_2
    return-void
.end method

.method private showOne(Lorg/jpos/q2/CLIContext;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "detail"    # Z

    .line 46
    :try_start_0
    invoke-static {p2}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "obj":Ljava/lang/Object;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 48
    if-eqz p3, :cond_0

    instance-of v1, v0, Lorg/jpos/util/Loggeable;

    if-eqz v1, :cond_0

    .line 49
    move-object v1, v0

    check-cast v1, Lorg/jpos/util/Loggeable;

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/jpos/q2/CLIContext;->printLoggeable(Lorg/jpos/util/Loggeable;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    const-string v1, "Object not found in NameRegistrar"

    invoke-virtual {p1, v1}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 55
    .end local v0    # "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    :goto_0
    return-void
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 3
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object v0, p2, v1

    const-string v2, "-a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 33
    .local v0, "all":Z
    const/4 v1, 0x1

    .line 34
    .local v1, "i":I
    if-eqz v0, :cond_1

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 37
    :cond_1
    array-length v2, p2

    if-le v2, v1, :cond_2

    .line 38
    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2, v0}, Lorg/jpos/q2/cli/SHOWNR;->showOne(Lorg/jpos/q2/CLIContext;Ljava/lang/String;Z)V

    goto :goto_1

    .line 40
    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/jpos/q2/cli/SHOWNR;->showAll(Lorg/jpos/q2/CLIContext;Z)V

    .line 42
    :goto_1
    return-void
.end method
