.class public Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;
.super Lcom/sleepycat/je/utilint/TracerFormatter;
.source "ReplicationFormatter.java"


# instance fields
.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 0
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 26
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/TracerFormatter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 28
    return-void
.end method


# virtual methods
.method protected appendEnvironmentName(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    return-void
.end method
