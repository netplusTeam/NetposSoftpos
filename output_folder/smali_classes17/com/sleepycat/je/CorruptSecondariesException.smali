.class public Lcom/sleepycat/je/CorruptSecondariesException;
.super Lcom/sleepycat/je/OperationFailureException;
.source "CorruptSecondariesException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final exceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/SecondaryIntegrityException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/CorruptSecondariesException;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Lcom/sleepycat/je/CorruptSecondariesException;

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/OperationFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/OperationFailureException;)V

    .line 65
    iget-object v0, p2, Lcom/sleepycat/je/CorruptSecondariesException;->exceptions:Ljava/util/Map;

    iput-object v0, p0, Lcom/sleepycat/je/CorruptSecondariesException;->exceptions:Ljava/util/Map;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/SecondaryIntegrityException;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "exceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/SecondaryIntegrityException;>;"
    nop

    .line 38
    invoke-static {p1}, Lcom/sleepycat/je/CorruptSecondariesException;->makeMessage(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0, v1}, Lcom/sleepycat/je/OperationFailureException;-><init>(Lcom/sleepycat/je/txn/Locker;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    iput-object p1, p0, Lcom/sleepycat/je/CorruptSecondariesException;->exceptions:Ljava/util/Map;

    .line 42
    return-void
.end method

.method private static makeMessage(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/SecondaryIntegrityException;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 47
    .local p0, "exceptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/SecondaryIntegrityException;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Detected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, " corrupt SecondaryDatabases."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/SecondaryIntegrityException;

    .line 52
    .local v2, "e":Lcom/sleepycat/je/SecondaryIntegrityException;
    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .end local v2    # "e":Lcom/sleepycat/je/SecondaryIntegrityException;
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getSecondaryExceptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/SecondaryIntegrityException;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/sleepycat/je/CorruptSecondariesException;->exceptions:Ljava/util/Map;

    return-object v0
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/OperationFailureException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/sleepycat/je/CorruptSecondariesException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/CorruptSecondariesException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/CorruptSecondariesException;)V

    return-object v0
.end method
