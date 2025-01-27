.class Lcom/sleepycat/je/cleaner/FileProcessor$RootDoWork;
.super Ljava/lang/Object;
.source "FileProcessor.java"

# interfaces
.implements Lcom/sleepycat/je/tree/WithRootLatched;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/FileProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootDoWork"
.end annotation


# instance fields
.field private final db:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private final inClone:Lcom/sleepycat/je/tree/IN;

.field private final logLsn:J


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;J)V
    .locals 0
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "inClone"    # Lcom/sleepycat/je/tree/IN;
    .param p3, "logLsn"    # J

    .line 1894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1895
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/FileProcessor$RootDoWork;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1896
    iput-object p2, p0, Lcom/sleepycat/je/cleaner/FileProcessor$RootDoWork;->inClone:Lcom/sleepycat/je/tree/IN;

    .line 1897
    iput-wide p3, p0, Lcom/sleepycat/je/cleaner/FileProcessor$RootDoWork;->logLsn:J

    .line 1898
    return-void
.end method


# virtual methods
.method public doWork(Lcom/sleepycat/je/tree/ChildReference;)Lcom/sleepycat/je/tree/IN;
    .locals 5
    .param p1, "root"    # Lcom/sleepycat/je/tree/ChildReference;

    .line 1902
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1903
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/ChildReference;->getLsn()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor$RootDoWork;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1904
    invoke-virtual {p1, v1, v0}, Lcom/sleepycat/je/tree/ChildReference;->fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sleepycat/je/cleaner/FileProcessor$RootDoWork;->inClone:Lcom/sleepycat/je/tree/IN;

    .line 1905
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1915
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/ChildReference;->getLsn()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sleepycat/je/cleaner/FileProcessor$RootDoWork;->logLsn:J

    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v1

    if-gtz v1, :cond_1

    .line 1916
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/FileProcessor$RootDoWork;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    invoke-virtual {p1, v1, v0}, Lcom/sleepycat/je/tree/ChildReference;->fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 1917
    .local v0, "rootIN":Lcom/sleepycat/je/tree/IN;
    sget-object v1, Lcom/sleepycat/je/cleaner/Cleaner;->UPDATE_GENERATION:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->latch(Lcom/sleepycat/je/CacheMode;)V

    .line 1918
    return-object v0

    .line 1920
    .end local v0    # "rootIN":Lcom/sleepycat/je/tree/IN;
    :cond_1
    return-object v0

    .line 1906
    :cond_2
    :goto_0
    return-object v0
.end method
