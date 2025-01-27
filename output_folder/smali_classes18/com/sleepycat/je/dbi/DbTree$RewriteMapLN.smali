.class Lcom/sleepycat/je/dbi/DbTree$RewriteMapLN;
.super Ljava/lang/Object;
.source "DbTree.java"

# interfaces
.implements Lcom/sleepycat/je/tree/WithRootLatched;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DbTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RewriteMapLN"
.end annotation


# instance fields
.field private final cursor:Lcom/sleepycat/je/dbi/CursorImpl;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/CursorImpl;)V
    .locals 0
    .param p1, "cursor"    # Lcom/sleepycat/je/dbi/CursorImpl;

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DbTree$RewriteMapLN;->cursor:Lcom/sleepycat/je/dbi/CursorImpl;

    .line 854
    return-void
.end method


# virtual methods
.method public doWork(Lcom/sleepycat/je/tree/ChildReference;)Lcom/sleepycat/je/tree/IN;
    .locals 7
    .param p1, "root"    # Lcom/sleepycat/je/tree/ChildReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 859
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {v2, v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 860
    .local v2, "dataDbt":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DbTree$RewriteMapLN;->cursor:Lcom/sleepycat/je/dbi/CursorImpl;

    sget-object v6, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/dbi/CursorImpl;->updateCurrentRecord(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/dbi/ExpirationInfo;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/log/ReplicationContext;)Lcom/sleepycat/je/OperationResult;

    .line 864
    const/4 v0, 0x0

    return-object v0
.end method
