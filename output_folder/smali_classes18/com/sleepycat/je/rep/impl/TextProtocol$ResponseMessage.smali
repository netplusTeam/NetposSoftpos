.class public abstract Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$Message;
.source "TextProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/TextProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ResponseMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 587
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 588
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 589
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p2, "request"    # Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    .line 596
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 597
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getSendVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->setSendVersion(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 601
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 603
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 604
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 616
    if-ne p0, p1, :cond_0

    .line 617
    const/4 v0, 0x1

    return v0

    .line 619
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 620
    return v0

    .line 622
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    if-nez v1, :cond_2

    .line 623
    return v0

    .line 625
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->getOpId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected wireFormatPrefix()Ljava/lang/String;
    .locals 2

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getMessagePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->access$000(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
