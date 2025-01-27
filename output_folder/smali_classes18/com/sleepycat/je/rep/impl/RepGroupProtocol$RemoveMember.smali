.class public Lcom/sleepycat/je/rep/impl/RepGroupProtocol$RemoveMember;
.super Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;
.source "RepGroupProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoveMember"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "nodeName"    # Ljava/lang/String;

    .line 172
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$RemoveMember;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;
    .param p2, "requestLine"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$RemoveMember;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    return-void
.end method


# virtual methods
.method public bridge synthetic getNodeName()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$RemoveMember;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/impl/RepGroupProtocol;->REMOVE_MEMBER:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method public bridge synthetic wireFormat()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/RepGroupProtocol$CommonRequest;->wireFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
