.class Lcom/sleepycat/je/rep/NetworkRestore$Server;
.super Ljava/lang/Object;
.source "NetworkRestore.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/NetworkRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Server"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sleepycat/je/rep/NetworkRestore$Server;",
        ">;"
    }
.end annotation


# instance fields
.field private final load:I

.field private final node:Lcom/sleepycat/je/rep/ReplicationNode;

.field private final rangeEnd:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/ReplicationNode;Lcom/sleepycat/je/utilint/VLSN;I)V
    .locals 0
    .param p1, "node"    # Lcom/sleepycat/je/rep/ReplicationNode;
    .param p2, "rangeEnd"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "load"    # I

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lcom/sleepycat/je/rep/NetworkRestore$Server;->node:Lcom/sleepycat/je/rep/ReplicationNode;

    .line 445
    iput-object p2, p0, Lcom/sleepycat/je/rep/NetworkRestore$Server;->rangeEnd:Lcom/sleepycat/je/utilint/VLSN;

    .line 446
    iput p3, p0, Lcom/sleepycat/je/rep/NetworkRestore$Server;->load:I

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/NetworkRestore$Server;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/NetworkRestore$Server;

    .line 438
    iget-object v0, p0, Lcom/sleepycat/je/rep/NetworkRestore$Server;->rangeEnd:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/NetworkRestore$Server;)Lcom/sleepycat/je/rep/ReplicationNode;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/NetworkRestore$Server;

    .line 438
    iget-object v0, p0, Lcom/sleepycat/je/rep/NetworkRestore$Server;->node:Lcom/sleepycat/je/rep/ReplicationNode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/NetworkRestore$Server;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/NetworkRestore$Server;

    .line 438
    iget v0, p0, Lcom/sleepycat/je/rep/NetworkRestore$Server;->load:I

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/sleepycat/je/rep/NetworkRestore$Server;)I
    .locals 2
    .param p1, "o"    # Lcom/sleepycat/je/rep/NetworkRestore$Server;

    .line 454
    iget v0, p0, Lcom/sleepycat/je/rep/NetworkRestore$Server;->load:I

    iget v1, p1, Lcom/sleepycat/je/rep/NetworkRestore$Server;->load:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 438
    check-cast p1, Lcom/sleepycat/je/rep/NetworkRestore$Server;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/NetworkRestore$Server;->compareTo(Lcom/sleepycat/je/rep/NetworkRestore$Server;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/sleepycat/je/rep/NetworkRestore$Server;->node:Lcom/sleepycat/je/rep/ReplicationNode;

    invoke-interface {v0}, Lcom/sleepycat/je/rep/ReplicationNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
