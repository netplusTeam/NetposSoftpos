.class Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;
.super Ljava/lang/Object;
.source "MasterTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/MasterTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VLSNProgress"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final replicaNodeName:Ljava/lang/String;

.field final vlsn:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 357
    const-class v0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/String;)V
    .locals 0
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "replicaNodeName"    # Ljava/lang/String;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 362
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->replicaNodeName:Ljava/lang/String;

    .line 363
    return-void
.end method

.method static makeFeederDeathEvent(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;
    .locals 2
    .param p0, "nodeName"    # Ljava/lang/String;

    .line 366
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;-><init>(Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method getVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    if-eqz v0, :cond_0

    .line 371
    return-object v0

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method isFeederDeathEvent()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/MasterTransfer$VLSNProgress;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
