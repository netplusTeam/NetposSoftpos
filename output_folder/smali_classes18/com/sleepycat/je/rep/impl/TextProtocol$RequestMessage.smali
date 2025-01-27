.class public abstract Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$Message;
.source "TextProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/TextProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "RequestMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 840
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

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

    .line 843
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 844
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 845
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 857
    if-ne p0, p1, :cond_0

    .line 858
    const/4 v0, 0x1

    return v0

    .line 860
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 861
    return v0

    .line 863
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    if-nez v1, :cond_2

    .line 864
    return v0

    .line 866
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 871
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->getOpId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected wireFormatPrefix()Ljava/lang/String;
    .locals 2

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getMessagePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->access$000(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
