.class public final Lcom/sleepycat/asm/Handle;
.super Ljava/lang/Object;
.source "Handle.java"


# instance fields
.field final desc:Ljava/lang/String;

.field final itf:Z

.field final name:Ljava/lang/String;

.field final owner:Ljava/lang/String;

.field final tag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "itf"    # Z

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/sleepycat/asm/Handle;->tag:I

    .line 127
    iput-object p2, p0, Lcom/sleepycat/asm/Handle;->owner:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Lcom/sleepycat/asm/Handle;->name:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lcom/sleepycat/asm/Handle;->desc:Ljava/lang/String;

    .line 130
    iput-boolean p5, p0, Lcom/sleepycat/asm/Handle;->itf:Z

    .line 131
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 190
    return v0

    .line 192
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/asm/Handle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 193
    return v2

    .line 195
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/asm/Handle;

    .line 196
    .local v1, "h":Lcom/sleepycat/asm/Handle;
    iget v3, p0, Lcom/sleepycat/asm/Handle;->tag:I

    iget v4, v1, Lcom/sleepycat/asm/Handle;->tag:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/sleepycat/asm/Handle;->itf:Z

    iget-boolean v4, v1, Lcom/sleepycat/asm/Handle;->itf:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sleepycat/asm/Handle;->owner:Ljava/lang/String;

    iget-object v4, v1, Lcom/sleepycat/asm/Handle;->owner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sleepycat/asm/Handle;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/sleepycat/asm/Handle;->name:Ljava/lang/String;

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sleepycat/asm/Handle;->desc:Ljava/lang/String;

    iget-object v4, v1, Lcom/sleepycat/asm/Handle;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 196
    :goto_0
    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/sleepycat/asm/Handle;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sleepycat/asm/Handle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sleepycat/asm/Handle;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/sleepycat/asm/Handle;->tag:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 202
    iget v0, p0, Lcom/sleepycat/asm/Handle;->tag:I

    iget-boolean v1, p0, Lcom/sleepycat/asm/Handle;->itf:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x40

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/asm/Handle;->owner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/sleepycat/asm/Handle;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/sleepycat/asm/Handle;->desc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/sleepycat/asm/Handle;->itf:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/asm/Handle;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/asm/Handle;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/asm/Handle;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/asm/Handle;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/asm/Handle;->itf:Z

    if-eqz v1, :cond_0

    const-string v1, " itf"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
