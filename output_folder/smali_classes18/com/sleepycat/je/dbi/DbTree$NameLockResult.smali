.class Lcom/sleepycat/je/dbi/DbTree$NameLockResult;
.super Ljava/lang/Object;
.source "DbTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DbTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameLockResult"
.end annotation


# instance fields
.field dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field nameCursor:Lcom/sleepycat/je/dbi/CursorImpl;

.field nameLN:Lcom/sleepycat/je/tree/NameLN;

.field repContext:Lcom/sleepycat/je/log/ReplicationContext;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/dbi/DbTree$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/dbi/DbTree$1;

    .line 1010
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DbTree$NameLockResult;-><init>()V

    return-void
.end method
