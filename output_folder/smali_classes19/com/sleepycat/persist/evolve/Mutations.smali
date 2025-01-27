.class public Lcom/sleepycat/persist/evolve/Mutations;
.super Ljava/lang/Object;
.source "Mutations.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/persist/evolve/Mutations$Key;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18355bf31fcf9274L


# instance fields
.field private converters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/persist/evolve/Mutation;",
            "Lcom/sleepycat/persist/evolve/Converter;",
            ">;"
        }
    .end annotation
.end field

.field private deleters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/persist/evolve/Mutation;",
            "Lcom/sleepycat/persist/evolve/Deleter;",
            ">;"
        }
    .end annotation
.end field

.field private renamers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sleepycat/persist/evolve/Mutation;",
            "Lcom/sleepycat/persist/evolve/Renamer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->renamers:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->deleters:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->converters:Ljava/util/Map;

    .line 65
    return-void
.end method


# virtual methods
.method public addConverter(Lcom/sleepycat/persist/evolve/Converter;)V
    .locals 2
    .param p1, "converter"    # Lcom/sleepycat/persist/evolve/Converter;

    .line 158
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->converters:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/persist/evolve/Mutations$Key;

    invoke-direct {v1, p1}, Lcom/sleepycat/persist/evolve/Mutations$Key;-><init>(Lcom/sleepycat/persist/evolve/Mutation;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public addDeleter(Lcom/sleepycat/persist/evolve/Deleter;)V
    .locals 2
    .param p1, "deleter"    # Lcom/sleepycat/persist/evolve/Deleter;

    .line 121
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->deleters:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/persist/evolve/Mutations$Key;

    invoke-direct {v1, p1}, Lcom/sleepycat/persist/evolve/Mutations$Key;-><init>(Lcom/sleepycat/persist/evolve/Mutation;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public addRenamer(Lcom/sleepycat/persist/evolve/Renamer;)V
    .locals 2
    .param p1, "renamer"    # Lcom/sleepycat/persist/evolve/Renamer;

    .line 84
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->renamers:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/persist/evolve/Mutations$Key;

    invoke-direct {v1, p1}, Lcom/sleepycat/persist/evolve/Mutations$Key;-><init>(Lcom/sleepycat/persist/evolve/Mutation;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 209
    instance-of v0, p1, Lcom/sleepycat/persist/evolve/Mutations;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 210
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/evolve/Mutations;

    .line 211
    .local v0, "o":Lcom/sleepycat/persist/evolve/Mutations;
    iget-object v2, p0, Lcom/sleepycat/persist/evolve/Mutations;->renamers:Ljava/util/Map;

    iget-object v3, v0, Lcom/sleepycat/persist/evolve/Mutations;->renamers:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/evolve/Mutations;->deleters:Ljava/util/Map;

    iget-object v3, v0, Lcom/sleepycat/persist/evolve/Mutations;->deleters:Ljava/util/Map;

    .line 212
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/evolve/Mutations;->converters:Ljava/util/Map;

    iget-object v3, v0, Lcom/sleepycat/persist/evolve/Mutations;->converters:Ljava/util/Map;

    .line 213
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 211
    :goto_0
    return v1

    .line 215
    .end local v0    # "o":Lcom/sleepycat/persist/evolve/Mutations;
    :cond_1
    return v1
.end method

.method public getConverter(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Converter;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classVersion"    # I
    .param p3, "fieldName"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->converters:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/persist/evolve/Mutations$Key;

    invoke-direct {v1, p1, p2, p3}, Lcom/sleepycat/persist/evolve/Mutations$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/evolve/Converter;

    return-object v0
.end method

.method public getConverters()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/persist/evolve/Converter;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->converters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDeleter(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Deleter;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classVersion"    # I
    .param p3, "fieldName"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->deleters:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/persist/evolve/Mutations$Key;

    invoke-direct {v1, p1, p2, p3}, Lcom/sleepycat/persist/evolve/Mutations$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/evolve/Deleter;

    return-object v0
.end method

.method public getDeleters()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/persist/evolve/Deleter;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->deleters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRenamer(Ljava/lang/String;ILjava/lang/String;)Lcom/sleepycat/persist/evolve/Renamer;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classVersion"    # I
    .param p3, "fieldName"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->renamers:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/persist/evolve/Mutations$Key;

    invoke-direct {v1, p1, p2, p3}, Lcom/sleepycat/persist/evolve/Mutations$Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/evolve/Renamer;

    return-object v0
.end method

.method public getRenamers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/persist/evolve/Renamer;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->renamers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->renamers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Mutations;->deleters:Ljava/util/Map;

    .line 222
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Mutations;->converters:Ljava/util/Map;

    .line 223
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->renamers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->deleters:Ljava/util/Map;

    .line 74
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutations;->converters:Ljava/util/Map;

    .line 75
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Mutations;->renamers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Mutations;->renamers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Mutations;->deleters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Mutations;->deleters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Mutations;->converters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Mutations;->converters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 241
    :cond_3
    const-string v1, "[Empty Mutations]"

    return-object v1
.end method
