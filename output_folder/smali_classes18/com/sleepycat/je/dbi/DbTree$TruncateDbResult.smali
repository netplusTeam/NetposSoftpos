.class public Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;
.super Ljava/lang/Object;
.source "DbTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DbTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TruncateDbResult"
.end annotation


# instance fields
.field public final newDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field final oldDB:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field public final recordCount:J


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 0
    .param p1, "oldDB"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "newDb"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "recordCount"    # J

    .line 1399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1400
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;->oldDB:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1401
    iput-object p2, p0, Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;->newDb:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 1402
    iput-wide p3, p0, Lcom/sleepycat/je/dbi/DbTree$TruncateDbResult;->recordCount:J

    .line 1403
    return-void
.end method
