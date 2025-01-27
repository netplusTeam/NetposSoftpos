.class public Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;
.super Lcom/sleepycat/je/DatabaseException;
.source "ReplicaSyncupReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkipGapException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final currentVLSN:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method public constructor <init>(JJLcom/sleepycat/je/utilint/VLSN;)V
    .locals 2
    .param p1, "currentFileNum"    # J
    .param p3, "nextFileNum"    # J
    .param p5, "currentVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restarting reader in order to read backwards across gap from file 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 407
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to file 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 408
    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Reset position to vlsn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-direct {p0, v0}, Lcom/sleepycat/je/DatabaseException;-><init>(Ljava/lang/String;)V

    .line 410
    iput-object p5, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 411
    return-void
.end method


# virtual methods
.method public getVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method
