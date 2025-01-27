.class Lcom/sleepycat/collections/CurrentTransaction$Trans;
.super Ljava/lang/Object;
.source "CurrentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/collections/CurrentTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Trans"
.end annotation


# instance fields
.field private config:Lcom/sleepycat/je/TransactionConfig;

.field private parent:Lcom/sleepycat/collections/CurrentTransaction$Trans;

.field private txn:Lcom/sleepycat/je/Transaction;


# direct methods
.method private constructor <init>(Lcom/sleepycat/collections/CurrentTransaction$Trans;Lcom/sleepycat/je/TransactionConfig;)V
    .locals 0
    .param p1, "parent"    # Lcom/sleepycat/collections/CurrentTransaction$Trans;
    .param p2, "config"    # Lcom/sleepycat/je/TransactionConfig;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/sleepycat/collections/CurrentTransaction$Trans;->parent:Lcom/sleepycat/collections/CurrentTransaction$Trans;

    .line 359
    iput-object p2, p0, Lcom/sleepycat/collections/CurrentTransaction$Trans;->config:Lcom/sleepycat/je/TransactionConfig;

    .line 360
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/collections/CurrentTransaction$Trans;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/collections/CurrentTransaction$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/collections/CurrentTransaction$Trans;
    .param p2, "x1"    # Lcom/sleepycat/je/TransactionConfig;
    .param p3, "x2"    # Lcom/sleepycat/collections/CurrentTransaction$1;

    .line 350
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/collections/CurrentTransaction$Trans;-><init>(Lcom/sleepycat/collections/CurrentTransaction$Trans;Lcom/sleepycat/je/TransactionConfig;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/Transaction;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/collections/CurrentTransaction$Trans;

    .line 350
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction$Trans;->txn:Lcom/sleepycat/je/Transaction;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sleepycat/collections/CurrentTransaction$Trans;Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/Transaction;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/collections/CurrentTransaction$Trans;
    .param p1, "x1"    # Lcom/sleepycat/je/Transaction;

    .line 350
    iput-object p1, p0, Lcom/sleepycat/collections/CurrentTransaction$Trans;->txn:Lcom/sleepycat/je/Transaction;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/je/TransactionConfig;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/collections/CurrentTransaction$Trans;

    .line 350
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction$Trans;->config:Lcom/sleepycat/je/TransactionConfig;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sleepycat/collections/CurrentTransaction$Trans;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/collections/CurrentTransaction$Trans;
    .param p1, "x1"    # Lcom/sleepycat/je/TransactionConfig;

    .line 350
    iput-object p1, p0, Lcom/sleepycat/collections/CurrentTransaction$Trans;->config:Lcom/sleepycat/je/TransactionConfig;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sleepycat/collections/CurrentTransaction$Trans;)Lcom/sleepycat/collections/CurrentTransaction$Trans;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/collections/CurrentTransaction$Trans;

    .line 350
    iget-object v0, p0, Lcom/sleepycat/collections/CurrentTransaction$Trans;->parent:Lcom/sleepycat/collections/CurrentTransaction$Trans;

    return-object v0
.end method
