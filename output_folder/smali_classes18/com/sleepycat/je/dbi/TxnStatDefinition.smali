.class public Lcom/sleepycat/je/dbi/TxnStatDefinition;
.super Ljava/lang/Object;
.source "TxnStatDefinition.java"


# static fields
.field public static final TXN_ABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final TXN_ACTIVE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final TXN_ACTIVE_TXNS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final TXN_BEGINS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final TXN_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final TXN_XAABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final TXN_XACOMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final TXN_XAPREPARES:Lcom/sleepycat/je/utilint/StatDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nActive"

    const-string v2, "Number of transactions that are currently active."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_ACTIVE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 28
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBegins"

    const-string v2, "Number of transactions that have begun."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_BEGINS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 32
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nAborts"

    const-string v2, "Number of transactions that have aborted."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_ABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 36
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCommits"

    const-string v2, "Number of transactions that have committed."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 40
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nXAAborts"

    const-string v2, "Number of XA transactions that have aborted."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_XAABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 44
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nXAPrepares"

    const-string v2, "Number of XA transactions that have been prepared."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_XAPREPARES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 49
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nXACommits"

    const-string v2, "Number of XA transactions that have committed."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_XACOMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 53
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "activeTxns"

    const-string v2, "Array of active transactions. Each element of the array is an object of type Transaction.Active."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/TxnStatDefinition;->TXN_ACTIVE_TXNS:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
