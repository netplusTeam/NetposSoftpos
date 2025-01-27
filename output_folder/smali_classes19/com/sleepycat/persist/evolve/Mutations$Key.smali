.class Lcom/sleepycat/persist/evolve/Mutations$Key;
.super Lcom/sleepycat/persist/evolve/Mutation;
.source "Mutations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/evolve/Mutations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x26c490b7990326b5L


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/evolve/Mutation;)V
    .locals 3
    .param p1, "mutation"    # Lcom/sleepycat/persist/evolve/Mutation;

    .line 197
    invoke-virtual {p1}, Lcom/sleepycat/persist/evolve/Mutation;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Lcom/sleepycat/persist/evolve/Mutation;->getClassVersion()I

    move-result v1

    .line 199
    invoke-virtual {p1}, Lcom/sleepycat/persist/evolve/Mutation;->getFieldName()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/persist/evolve/Mutation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classVersion"    # I
    .param p3, "fieldName"    # Ljava/lang/String;

    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/persist/evolve/Mutation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    return-void
.end method
