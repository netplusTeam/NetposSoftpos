.class public Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnsureNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 322
    const-class v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 325
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 326
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->isMonitor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 328
    return-void

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 331
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 333
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 334
    nop

    .line 335
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->sendVersion:Ljava/lang/String;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->access$000(Ljava/lang/String;)I

    move-result v1

    .line 334
    invoke-static {v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->hexDeserializeNode(Ljava/lang/String;I)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 336
    return-void
.end method


# virtual methods
.method protected getMessagePrefix()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->messagePrefixNocheck:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->ENSURE_NODE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 3

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->node:Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;->sendVersion:Ljava/lang/String;

    .line 356
    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->access$000(Ljava/lang/String;)I

    move-result v2

    .line 355
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->serializeHex(Lcom/sleepycat/je/rep/impl/RepNodeImpl;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    return-object v0
.end method
