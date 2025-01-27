.class Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;
.super Ljava/lang/Object;
.source "InsufficientLogException.java"

# interfaces
.implements Lcom/sleepycat/je/rep/ReplicationNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/InsufficientLogException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogFileSource"
.end annotation


# instance fields
.field private final hostname:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final port:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/InsufficientLogException;

.field private final type:Lcom/sleepycat/je/rep/NodeType;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/InsufficientLogException;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nodeTypeName"    # Ljava/lang/String;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I

    .line 400
    iput-object p1, p0, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;->this$0:Lcom/sleepycat/je/rep/InsufficientLogException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;->name:Ljava/lang/String;

    .line 402
    invoke-static {p3}, Lcom/sleepycat/je/rep/NodeType;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/NodeType;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;->type:Lcom/sleepycat/je/rep/NodeType;

    .line 403
    iput-object p4, p0, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;->hostname:Ljava/lang/String;

    .line 404
    iput p5, p0, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;->port:I

    .line 405
    return-void
.end method


# virtual methods
.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 430
    iget v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;->port:I

    return v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 420
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;->hostname:Ljava/lang/String;

    iget v2, p0, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getType()Lcom/sleepycat/je/rep/NodeType;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/sleepycat/je/rep/InsufficientLogException$LogFileSource;->type:Lcom/sleepycat/je/rep/NodeType;

    return-object v0
.end method
