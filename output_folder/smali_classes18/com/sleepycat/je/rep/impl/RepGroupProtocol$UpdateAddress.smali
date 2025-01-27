.class public Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;
.super Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateAddress"
.end annotation


# instance fields
.field private final newHostName:Ljava/lang/String;

.field private final newPort:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "nodeName"    # Ljava/lang/String;
    .param p3, "newHostName"    # Ljava/lang/String;
    .param p4, "newPort"    # I

    .line 288
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;)V

    .line 290
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->newHostName:Ljava/lang/String;

    .line 291
    iput p4, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->newPort:I

    .line 292
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

    .line 295
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->newHostName:Ljava/lang/String;

    .line 299
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->nextPayloadToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->newPort:I

    .line 300
    return-void
.end method


# virtual methods
.method public getNewHostName()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->newHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewPort()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->newPort:I

    return v0
.end method

.method public bridge synthetic getNodeName()Ljava/lang/String;
    .locals 1

    .line 282
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->UPDATE_ADDRESS:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->wireFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->newHostName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$UpdateAddress;->newPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
