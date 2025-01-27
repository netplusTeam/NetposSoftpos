.class public Lcom/sleepycat/je/rep/impl/TextProtocol$OK;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
.source "TextProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/TextProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OK"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p2, "request"    # Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    .line 715
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 716
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V

    .line 717
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 720
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 722
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 723
    return-void
.end method


# virtual methods
.method protected getMessagePrefix()Ljava/lang/String;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;->messagePrefixNocheck:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/TextProtocol;->OK_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 1

    .line 737
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
