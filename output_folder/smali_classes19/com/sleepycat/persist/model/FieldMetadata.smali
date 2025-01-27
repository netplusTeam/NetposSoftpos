.class public Lcom/sleepycat/persist/model/FieldMetadata;
.super Ljava/lang/Object;
.source "FieldMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7d6c2efffac018c7L


# instance fields
.field private className:Ljava/lang/String;

.field private declaringClassName:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "declaringClassName"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sleepycat/persist/model/FieldMetadata;->name:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/sleepycat/persist/model/FieldMetadata;->className:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/sleepycat/persist/model/FieldMetadata;->declaringClassName:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 80
    instance-of v0, p1, Lcom/sleepycat/persist/model/FieldMetadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/model/FieldMetadata;

    .line 82
    .local v0, "o":Lcom/sleepycat/persist/model/FieldMetadata;
    iget-object v2, p0, Lcom/sleepycat/persist/model/FieldMetadata;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/persist/model/FieldMetadata;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/FieldMetadata;->className:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/persist/model/FieldMetadata;->className:Ljava/lang/String;

    .line 83
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/persist/model/FieldMetadata;->declaringClassName:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/persist/model/FieldMetadata;->declaringClassName:Ljava/lang/String;

    .line 84
    invoke-static {v2, v3}, Lcom/sleepycat/persist/model/ClassMetadata;->nullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 82
    :goto_0
    return v1

    .line 87
    .end local v0    # "o":Lcom/sleepycat/persist/model/FieldMetadata;
    :cond_1
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sleepycat/persist/model/FieldMetadata;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getDeclaringClassName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sleepycat/persist/model/FieldMetadata;->declaringClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sleepycat/persist/model/FieldMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/sleepycat/persist/model/FieldMetadata;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/persist/model/FieldMetadata;->className:Ljava/lang/String;

    .line 94
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/model/FieldMetadata;->declaringClassName:Ljava/lang/String;

    .line 95
    invoke-static {v1}, Lcom/sleepycat/persist/model/ClassMetadata;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FieldMetadata name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/model/FieldMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/model/FieldMetadata;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " declaringClassName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/model/FieldMetadata;->declaringClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
