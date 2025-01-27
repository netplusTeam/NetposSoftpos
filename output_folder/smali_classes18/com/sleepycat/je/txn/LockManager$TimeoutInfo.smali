.class Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;
.super Ljava/lang/Object;
.source "LockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/txn/LockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeoutInfo"
.end annotation


# instance fields
.field final message:Ljava/lang/String;

.field final owners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation
.end field

.field final waiters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;)V"
        }
    .end annotation

    .line 1173
    .local p2, "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    .local p3, "waiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1174
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;->message:Ljava/lang/String;

    .line 1175
    iput-object p2, p0, Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;->owners:Ljava/util/Set;

    .line 1176
    iput-object p3, p0, Lcom/sleepycat/je/txn/LockManager$TimeoutInfo;->waiters:Ljava/util/List;

    .line 1177
    return-void
.end method
