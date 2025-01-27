.class public Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
.super Lcom/sleepycat/je/utilint/InternalException;
.source "BinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolException"
.end annotation


# instance fields
.field private final cl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final unexpectedMessage:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/lang/Class;)V
    .locals 0
    .param p1, "unexpectedMessage"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;)V"
        }
    .end annotation

    .line 1128
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;>;"
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/InternalException;-><init>()V

    .line 1129
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->unexpectedMessage:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 1130
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->cl:Ljava/lang/Class;

    .line 1131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1134
    invoke-direct {p0, p1}, Lcom/sleepycat/je/utilint/InternalException;-><init>(Ljava/lang/String;)V

    .line 1135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->unexpectedMessage:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 1136
    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->cl:Ljava/lang/Class;

    .line 1137
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1141
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->unexpectedMessage:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->cl:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->unexpectedMessage:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 1143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->unexpectedMessage:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1151
    :cond_0
    invoke-super {p0}, Lcom/sleepycat/je/utilint/InternalException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1141
    :goto_0
    return-object v0
.end method

.method public getUnexpectedMessage()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->unexpectedMessage:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    return-object v0
.end method
