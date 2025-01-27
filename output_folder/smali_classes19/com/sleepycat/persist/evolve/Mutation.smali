.class public abstract Lcom/sleepycat/persist/evolve/Mutation;
.super Ljava/lang/Object;
.source "Mutation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x705532a3789fc534L


# instance fields
.field private className:Ljava/lang/String;

.field private classVersion:I

.field private fieldName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classVersion"    # I
    .param p3, "fieldName"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sleepycat/persist/evolve/Mutation;->className:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/sleepycat/persist/evolve/Mutation;->classVersion:I

    .line 35
    iput-object p3, p0, Lcom/sleepycat/persist/evolve/Mutation;->fieldName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 72
    instance-of v0, p1, Lcom/sleepycat/persist/evolve/Mutation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 73
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/evolve/Mutation;

    .line 74
    .local v0, "o":Lcom/sleepycat/persist/evolve/Mutation;
    iget-object v2, p0, Lcom/sleepycat/persist/evolve/Mutation;->className:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/persist/evolve/Mutation;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sleepycat/persist/evolve/Mutation;->classVersion:I

    iget v3, v0, Lcom/sleepycat/persist/evolve/Mutation;->classVersion:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sleepycat/persist/evolve/Mutation;->fieldName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/sleepycat/persist/evolve/Mutation;->fieldName:Ljava/lang/String;

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/sleepycat/persist/evolve/Mutation;->fieldName:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 74
    :goto_1
    return v1

    .line 79
    .end local v0    # "o":Lcom/sleepycat/persist/evolve/Mutation;
    :cond_2
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutation;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getClassVersion()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/sleepycat/persist/evolve/Mutation;->classVersion:I

    return v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutation;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Mutation;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/sleepycat/persist/evolve/Mutation;->classVersion:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Mutation;->fieldName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 85
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Mutation;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/persist/evolve/Mutation;->classVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Mutation;->fieldName:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/persist/evolve/Mutation;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
