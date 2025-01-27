.class public Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
.super Ljava/lang/Exception;
.source "MasterStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/MasterStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MasterSyncException"
.end annotation


# instance fields
.field private final savedGroupMasterId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final savedNodeMasterId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/MasterStatus;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/stream/MasterStatus;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/MasterStatus;

    .line 167
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;->this$0:Lcom/sleepycat/je/rep/stream/MasterStatus;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 168
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;->savedGroupMasterId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 169
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;->savedNodeMasterId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 170
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Master change. Node master id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;->savedNodeMasterId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Group master id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;->savedGroupMasterId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
