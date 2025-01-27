.class public Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 258
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 263
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 264
    return-void
.end method


# virtual methods
.method protected getMessagePrefix()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;->messagePrefixNocheck:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->GROUP_REQ:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$GroupRequest;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
