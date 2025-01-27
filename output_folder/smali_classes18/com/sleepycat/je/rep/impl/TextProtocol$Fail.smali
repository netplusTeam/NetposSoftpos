.class public Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
.source "TextProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/TextProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Fail"
.end annotation


# instance fields
.field private final message:Ljava/lang/String;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p2, "request"    # Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .param p3, "message"    # Ljava/lang/String;

    .line 754
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 755
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V

    .line 756
    invoke-direct {p0, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->message:Ljava/lang/String;

    .line 757
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p2, "message"    # Ljava/lang/String;

    .line 744
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 745
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->message:Ljava/lang/String;

    .line 746
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 760
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 761
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 763
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->nextPayloadToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->message:Ljava/lang/String;

    .line 764
    return-void
.end method

.method private getOuterType()Lcom/sleepycat/je/rep/impl/TextProtocol;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    return-object v0
.end method

.method private sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 831
    const-string v0, "\n"

    const-string v1, "  "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 782
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 783
    return v0

    .line 785
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 786
    return v2

    .line 788
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;

    if-nez v1, :cond_2

    .line 789
    return v2

    .line 791
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;

    .line 792
    .local v1, "other":Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->getOuterType()Lcom/sleepycat/je/rep/impl/TextProtocol;

    move-result-object v3

    invoke-direct {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->getOuterType()Lcom/sleepycat/je/rep/impl/TextProtocol;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 793
    return v2

    .line 795
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->message:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 796
    iget-object v3, v1, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->message:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 797
    return v2

    .line 799
    :cond_4
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 800
    return v2

    .line 802
    :cond_5
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->message:Ljava/lang/String;

    return-object v0
.end method

.method protected getMessagePrefix()Ljava/lang/String;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->messagePrefixNocheck:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/TextProtocol;->FAIL_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 772
    const/16 v0, 0x1f

    .line 773
    .local v0, "prime":I
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->hashCode()I

    move-result v1

    .line 774
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->getOuterType()Lcom/sleepycat/je/rep/impl/TextProtocol;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 775
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->message:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 776
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    .line 777
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 2

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
