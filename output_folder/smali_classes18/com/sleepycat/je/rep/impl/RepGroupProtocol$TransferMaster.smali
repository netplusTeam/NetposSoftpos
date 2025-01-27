.class public Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransferMaster"
.end annotation


# instance fields
.field private final force:Z

.field private final nodeNameList:Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

.field private final timeout:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "nodeNameList"    # Ljava/lang/String;
    .param p3, "timeout"    # J
    .param p5, "force"    # Z

    .line 216
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 217
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 218
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->nodeNameList:Ljava/lang/String;

    .line 219
    iput-wide p3, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->timeout:J

    .line 220
    iput-boolean p5, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->force:Z

    .line 221
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "requestLine"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->nodeNameList:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->timeout:J

    .line 229
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->force:Z

    .line 230
    return-void
.end method


# virtual methods
.method public getForceFlag()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->force:Z

    return v0
.end method

.method public getNodeNameList()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->nodeNameList:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->TRANSFER_MASTER:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->timeout:J

    return-wide v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 4

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->nodeNameList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->timeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$TransferMaster;->force:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
