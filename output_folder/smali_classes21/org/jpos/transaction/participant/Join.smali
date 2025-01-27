.class public Lorg/jpos/transaction/participant/Join;
.super Ljava/lang/Object;
.source "Join.java"

# interfaces
.implements Lorg/jpos/transaction/TransactionConstants;
.implements Lorg/jpos/transaction/AbortParticipant;
.implements Lorg/jpos/core/XmlConfigurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/transaction/participant/Join$Runner;
    }
.end annotation


# instance fields
.field private mgr:Lorg/jpos/transaction/TransactionManager;

.field private participants:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jpos/transaction/participant/Join;->participants:Ljava/util/List;

    return-void
.end method

.method private abort([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;
    .locals 3
    .param p1, "runners"    # [Lorg/jpos/transaction/participant/Join$Runner;

    .line 82
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .local v2, "runner":Lorg/jpos/transaction/participant/Join$Runner;
    invoke-virtual {v2}, Lorg/jpos/transaction/participant/Join$Runner;->abort()V

    .end local v2    # "runner":Lorg/jpos/transaction/participant/Join$Runner;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-object p1
.end method

.method private commit([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;
    .locals 3
    .param p1, "runners"    # [Lorg/jpos/transaction/participant/Join$Runner;

    .line 78
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .local v2, "runner":Lorg/jpos/transaction/participant/Join$Runner;
    invoke-virtual {v2}, Lorg/jpos/transaction/participant/Join$Runner;->commit()V

    .end local v2    # "runner":Lorg/jpos/transaction/participant/Join$Runner;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object p1
.end method

.method private createRunners(JLjava/io/Serializable;)[Lorg/jpos/transaction/participant/Join$Runner;
    .locals 5
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 86
    iget-object v0, p0, Lorg/jpos/transaction/participant/Join;->participants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/jpos/transaction/participant/Join$Runner;

    .line 87
    .local v0, "runners":[Lorg/jpos/transaction/participant/Join$Runner;
    iget-object v1, p0, Lorg/jpos/transaction/participant/Join;->participants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    .local v1, "iter":Ljava/util/Iterator;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    new-instance v3, Lorg/jpos/transaction/participant/Join$Runner;

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/transaction/TransactionParticipant;

    invoke-direct {v3, v4, p1, p2, p3}, Lorg/jpos/transaction/participant/Join$Runner;-><init>(Lorg/jpos/transaction/TransactionParticipant;JLjava/io/Serializable;)V

    aput-object v3, v0, v2

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private joinRunners([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;
    .locals 3
    .param p1, "runners"    # [Lorg/jpos/transaction/participant/Join$Runner;

    .line 96
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .local v2, "runner":Lorg/jpos/transaction/participant/Join$Runner;
    invoke-virtual {v2}, Lorg/jpos/transaction/participant/Join$Runner;->join()V

    .end local v2    # "runner":Lorg/jpos/transaction/participant/Join$Runner;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-object p1
.end method

.method private mergeActions([Lorg/jpos/transaction/participant/Join$Runner;)I
    .locals 13
    .param p1, "runners"    # [Lorg/jpos/transaction/participant/Join$Runner;

    .line 100
    const/4 v0, 0x1

    .line 101
    .local v0, "prepared":Z
    const/4 v1, 0x1

    .line 102
    .local v1, "readonly":Z
    const/4 v2, 0x1

    .line 103
    .local v2, "no_join":Z
    const/4 v3, 0x0

    .line 104
    .local v3, "retry":Z
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x80

    const/16 v8, 0x40

    if-ge v6, v4, :cond_5

    aget-object v9, p1, v6

    .line 105
    .local v9, "runner":Lorg/jpos/transaction/participant/Join$Runner;
    iget v10, v9, Lorg/jpos/transaction/participant/Join$Runner;->rc:I

    .line 106
    .local v10, "action":I
    and-int/lit8 v11, v10, 0x2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    move v11, v5

    :goto_1
    move v3, v11

    .line 107
    if-eqz v3, :cond_1

    .line 108
    return v12

    .line 109
    :cond_1
    and-int/lit8 v11, v10, 0x1

    if-nez v11, :cond_2

    .line 110
    const/4 v0, 0x0

    .line 111
    :cond_2
    and-int/lit16 v11, v10, 0x80

    if-eq v11, v7, :cond_3

    .line 112
    const/4 v1, 0x0

    .line 113
    :cond_3
    and-int/lit8 v7, v10, 0x40

    if-eq v7, v8, :cond_4

    .line 114
    const/4 v2, 0x0

    .line 104
    .end local v9    # "runner":Lorg/jpos/transaction/participant/Join$Runner;
    .end local v10    # "action":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 116
    :cond_5
    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v8, v5

    :goto_2
    or-int v4, v0, v8

    if-eqz v1, :cond_7

    move v5, v7

    :cond_7
    or-int/2addr v4, v5

    return v4
.end method

.method private prepare([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;
    .locals 3
    .param p1, "runners"    # [Lorg/jpos/transaction/participant/Join$Runner;

    .line 70
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .local v2, "runner":Lorg/jpos/transaction/participant/Join$Runner;
    invoke-virtual {v2}, Lorg/jpos/transaction/participant/Join$Runner;->prepare()V

    .end local v2    # "runner":Lorg/jpos/transaction/participant/Join$Runner;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-object p1
.end method

.method private prepareForAbort([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;
    .locals 3
    .param p1, "runners"    # [Lorg/jpos/transaction/participant/Join$Runner;

    .line 74
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .local v2, "runner":Lorg/jpos/transaction/participant/Join$Runner;
    invoke-virtual {v2}, Lorg/jpos/transaction/participant/Join$Runner;->prepareForAbort()V

    .end local v2    # "runner":Lorg/jpos/transaction/participant/Join$Runner;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-object p1
.end method


# virtual methods
.method public abort(JLjava/io/Serializable;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/transaction/participant/Join;->createRunners(JLjava/io/Serializable;)[Lorg/jpos/transaction/participant/Join$Runner;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join;->abort([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join;->joinRunners([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;

    .line 57
    return-void
.end method

.method public commit(JLjava/io/Serializable;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/transaction/participant/Join;->createRunners(JLjava/io/Serializable;)[Lorg/jpos/transaction/participant/Join$Runner;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join;->commit([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join;->joinRunners([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;

    .line 54
    return-void
.end method

.method public prepare(JLjava/io/Serializable;)I
    .locals 1
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 43
    nop

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/transaction/participant/Join;->createRunners(JLjava/io/Serializable;)[Lorg/jpos/transaction/participant/Join$Runner;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join;->prepare([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join;->joinRunners([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join;->mergeActions([Lorg/jpos/transaction/participant/Join$Runner;)I

    move-result v0

    return v0
.end method

.method public prepareForAbort(JLjava/io/Serializable;)I
    .locals 1
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 48
    nop

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/transaction/participant/Join;->createRunners(JLjava/io/Serializable;)[Lorg/jpos/transaction/participant/Join$Runner;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join;->prepareForAbort([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join;->joinRunners([Lorg/jpos/transaction/participant/Join$Runner;)[Lorg/jpos/transaction/participant/Join$Runner;

    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lorg/jpos/transaction/participant/Join;->mergeActions([Lorg/jpos/transaction/participant/Join$Runner;)I

    move-result v0

    return v0
.end method

.method public setConfiguration(Lorg/jdom2/Element;)V
    .locals 4
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 61
    const-string v0, "participant"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lorg/jpos/transaction/participant/Join;->participants:Ljava/util/List;

    iget-object v2, p0, Lorg/jpos/transaction/participant/Join;->mgr:Lorg/jpos/transaction/TransactionManager;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Element;

    invoke-virtual {v2, v3}, Lorg/jpos/transaction/TransactionManager;->createParticipant(Lorg/jdom2/Element;)Lorg/jpos/transaction/TransactionParticipant;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public setTransactionManager(Lorg/jpos/transaction/TransactionManager;)V
    .locals 0
    .param p1, "mgr"    # Lorg/jpos/transaction/TransactionManager;

    .line 67
    iput-object p1, p0, Lorg/jpos/transaction/participant/Join;->mgr:Lorg/jpos/transaction/TransactionManager;

    .line 68
    return-void
.end method
