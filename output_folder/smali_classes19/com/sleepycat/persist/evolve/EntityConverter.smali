.class public Lcom/sleepycat/persist/evolve/EntityConverter;
.super Lcom/sleepycat/persist/evolve/Converter;
.source "EntityConverter.java"


# static fields
.field private static final serialVersionUID:J = -0xdb79aecdeb6c9cfL


# instance fields
.field private deletedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/sleepycat/persist/evolve/Conversion;Ljava/util/Set;)V
    .locals 1
    .param p1, "entityClassName"    # Ljava/lang/String;
    .param p2, "classVersion"    # I
    .param p3, "conversion"    # Lcom/sleepycat/persist/evolve/Conversion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sleepycat/persist/evolve/Conversion;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p4, "deletedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sleepycat/persist/evolve/Converter;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sleepycat/persist/evolve/Conversion;)V

    .line 58
    if-eqz p4, :cond_0

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sleepycat/persist/evolve/EntityConverter;->deletedKeys:Ljava/util/Set;

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/evolve/EntityConverter;->deletedKeys:Ljava/util/Set;

    .line 63
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 81
    instance-of v0, p1, Lcom/sleepycat/persist/evolve/EntityConverter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/evolve/EntityConverter;

    .line 83
    .local v0, "o":Lcom/sleepycat/persist/evolve/EntityConverter;
    iget-object v2, p0, Lcom/sleepycat/persist/evolve/EntityConverter;->deletedKeys:Ljava/util/Set;

    iget-object v3, v0, Lcom/sleepycat/persist/evolve/EntityConverter;->deletedKeys:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-super {p0, p1}, Lcom/sleepycat/persist/evolve/Converter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 83
    :goto_0
    return v1

    .line 86
    .end local v0    # "o":Lcom/sleepycat/persist/evolve/EntityConverter;
    :cond_1
    return v1
.end method

.method public getDeletedKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/EntityConverter;->deletedKeys:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/EntityConverter;->deletedKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    invoke-super {p0}, Lcom/sleepycat/persist/evolve/Converter;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EntityConverter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sleepycat/persist/evolve/Converter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DeletedKeys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/evolve/EntityConverter;->deletedKeys:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
