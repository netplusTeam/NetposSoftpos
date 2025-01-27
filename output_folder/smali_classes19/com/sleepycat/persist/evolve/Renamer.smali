.class public Lcom/sleepycat/persist/evolve/Renamer;
.super Lcom/sleepycat/persist/evolve/Mutation;
.source "Renamer.java"


# static fields
.field private static final serialVersionUID:J = 0x1f0f8319467354fbL


# instance fields
.field private newName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "fromClass"    # Ljava/lang/String;
    .param p2, "fromVersion"    # I
    .param p3, "toClass"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/persist/evolve/Mutation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    iput-object p3, p0, Lcom/sleepycat/persist/evolve/Renamer;->newName:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "declaringClass"    # Ljava/lang/String;
    .param p2, "declaringClassVersion"    # I
    .param p3, "fromField"    # Ljava/lang/String;
    .param p4, "toField"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/persist/evolve/Mutation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    iput-object p4, p0, Lcom/sleepycat/persist/evolve/Renamer;->newName:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 110
    instance-of v0, p1, Lcom/sleepycat/persist/evolve/Renamer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 111
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/evolve/Renamer;

    .line 112
    .local v0, "o":Lcom/sleepycat/persist/evolve/Renamer;
    iget-object v2, p0, Lcom/sleepycat/persist/evolve/Renamer;->newName:Ljava/lang/String;

    iget-object v3, v0, Lcom/sleepycat/persist/evolve/Renamer;->newName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-super {p0, p1}, Lcom/sleepycat/persist/evolve/Mutation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 112
    :goto_0
    return v1

    .line 115
    .end local v0    # "o":Lcom/sleepycat/persist/evolve/Renamer;
    :cond_1
    return v1
.end method

.method public getNewName()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Renamer;->newName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/sleepycat/persist/evolve/Renamer;->newName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-super {p0}, Lcom/sleepycat/persist/evolve/Mutation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Renamer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sleepycat/persist/evolve/Mutation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NewName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/persist/evolve/Renamer;->newName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
