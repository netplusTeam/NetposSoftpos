.class public Lcom/sleepycat/je/rep/elections/Protocol$Result;
.super Lcom/sleepycat/je/rep/elections/Protocol$Accept;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Protocol;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p3, "value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 692
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Result;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 693
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/elections/Protocol$Accept;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V

    .line 694
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "requestLine"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 697
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Result;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 698
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/elections/Protocol$Accept;-><init>(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 699
    return-void
.end method


# virtual methods
.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Result;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/elections/Protocol;->RESULT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method
