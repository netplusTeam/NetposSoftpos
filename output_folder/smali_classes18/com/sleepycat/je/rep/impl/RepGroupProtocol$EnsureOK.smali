.class public Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$OK;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnsureOK"
.end annotation


# instance fields
.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "request"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureNode;
    .param p3, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 363
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 364
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V

    .line 365
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 366
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 369
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 370
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 371
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;->nextPayloadToken()Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;->nextPayloadToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 373
    return-void
.end method


# virtual methods
.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->ENSURE_OK:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 3

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 387
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$EnsureOK;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 388
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    return-object v0
.end method
