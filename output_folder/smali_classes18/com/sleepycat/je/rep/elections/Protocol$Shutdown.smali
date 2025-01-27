.class public Lcom/sleepycat/je/rep/elections/Protocol$Shutdown;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Shutdown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;

    .line 604
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Shutdown;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "responseLine"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 607
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Shutdown;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 609
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 610
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Shutdown;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/elections/Protocol;->SHUTDOWN:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Shutdown;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
