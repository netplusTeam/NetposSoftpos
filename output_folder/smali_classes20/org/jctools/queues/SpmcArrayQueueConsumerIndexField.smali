.class abstract Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField;
.super Lorg/jctools/queues/SpmcArrayQueueL2Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/SpmcArrayQueueL2Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field protected static final C_INDEX_OFFSET:J


# instance fields
.field private volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    const-class v0, Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField;->C_INDEX_OFFSET:J

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 76
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField;, "Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/SpmcArrayQueueL2Pad;-><init>(I)V

    .line 77
    return-void
.end method


# virtual methods
.method protected final casConsumerIndex(JJ)Z
    .locals 8
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .line 86
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField;, "Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public final lvConsumerIndex()J
    .locals 2

    .line 81
    .local p0, "this":Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField;, "Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/SpmcArrayQueueConsumerIndexField;->consumerIndex:J

    return-wide v0
.end method
