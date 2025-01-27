.class Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;
.super Ljava/lang/RuntimeException;
.source "Proposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Proposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HigherNumberedProposal"
.end annotation


# instance fields
.field final acceptor:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "acceptor"    # Ljava/net/InetSocketAddress;

    .line 501
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;->acceptor:Ljava/net/InetSocketAddress;

    .line 503
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "More recent proposal at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;->acceptor:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
