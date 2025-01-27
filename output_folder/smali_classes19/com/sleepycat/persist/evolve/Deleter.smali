.class public Lcom/sleepycat/persist/evolve/Deleter;
.super Lcom/sleepycat/persist/evolve/Mutation;
.source "Deleter.java"


# static fields
.field private static final serialVersionUID:J = 0x631bf9b50225c23L


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classVersion"    # I

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/persist/evolve/Mutation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "declaringClass"    # Ljava/lang/String;
    .param p2, "declaringClassVersion"    # I
    .param p3, "fieldName"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/persist/evolve/Mutation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Deleter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sleepycat/persist/evolve/Mutation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
