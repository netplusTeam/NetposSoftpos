.class Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteTreeWalker;
.super Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
.source "ExtinctionScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/ExtinctionScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObsoleteTreeWalker"
.end annotation


# instance fields
.field private final rootIN:Lcom/sleepycat/je/tree/IN;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;JZLcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;Lcom/sleepycat/je/tree/IN;)V
    .locals 7
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "rootLsn"    # J
    .param p4, "fetchLNSize"    # Z
    .param p5, "callback"    # Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;
    .param p6, "rootIN"    # Lcom/sleepycat/je/tree/IN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2060
    const/4 v0, 0x1

    new-array v2, v0, [Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    new-array v3, v0, [J

    aput-wide p2, v3, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;-><init>([Lcom/sleepycat/je/dbi/DatabaseImpl;[JLcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;Ljava/util/List;Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;)V

    .line 2066
    iput-boolean p4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteTreeWalker;->accumulateLNs:Z

    .line 2067
    iput-object p6, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteTreeWalker;->rootIN:Lcom/sleepycat/je/tree/IN;

    .line 2073
    const-wide/32 v0, 0x3200000

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteTreeWalker;->setInternalMemoryLimit(J)V

    .line 2074
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;JZLcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;Lcom/sleepycat/je/tree/IN;Lcom/sleepycat/je/cleaner/ExtinctionScanner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "x1"    # J
    .param p4, "x2"    # Z
    .param p5, "x3"    # Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;
    .param p6, "x4"    # Lcom/sleepycat/je/tree/IN;
    .param p7, "x5"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 2049
    invoke-direct/range {p0 .. p6}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteTreeWalker;-><init>(Lcom/sleepycat/je/dbi/DatabaseImpl;JZLcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;Lcom/sleepycat/je/tree/IN;)V

    return-void
.end method


# virtual methods
.method public getResidentRootIN(Lcom/sleepycat/je/dbi/DatabaseImpl;)Lcom/sleepycat/je/tree/IN;
    .locals 1
    .param p1, "ignore"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2079
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteTreeWalker;->rootIN:Lcom/sleepycat/je/tree/IN;

    if-eqz v0, :cond_0

    .line 2080
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->latchShared()V

    .line 2082
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteTreeWalker;->rootIN:Lcom/sleepycat/je/tree/IN;

    return-object v0
.end method
