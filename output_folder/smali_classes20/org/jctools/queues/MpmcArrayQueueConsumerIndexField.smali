.class abstract Lorg/jctools/queues/MpmcArrayQueueConsumerIndexField;
.super Lorg/jctools/queues/MpmcArrayQueueL2Pad;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/MpmcArrayQueueL2Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final C_INDEX_OFFSET:J


# instance fields
.field private volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const-class v0, Lorg/jctools/queues/MpmcArrayQueueConsumerIndexField;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/queues/MpmcArrayQueueConsumerIndexField;->C_INDEX_OFFSET:J

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 79
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueueConsumerIndexField;, "Lorg/jctools/queues/MpmcArrayQueueConsumerIndexField<TE;>;"
    invoke-direct {p0, p1}, Lorg/jctools/queues/MpmcArrayQueueL2Pad;-><init>(I)V

    .line 80
    return-void
.end method


# virtual methods
.method protected final casConsumerIndex(JJ)Z
    .locals 8
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .line 90
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueueConsumerIndexField;, "Lorg/jctools/queues/MpmcArrayQueueConsumerIndexField<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/queues/MpmcArrayQueueConsumerIndexField;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public final lvConsumerIndex()J
    .locals 2

    .line 85
    .local p0, "this":Lorg/jctools/queues/MpmcArrayQueueConsumerIndexField;, "Lorg/jctools/queues/MpmcArrayQueueConsumerIndexField<TE;>;"
    iget-wide v0, p0, Lorg/jctools/queues/MpmcArrayQueueConsumerIndexField;->consumerIndex:J

    return-wide v0
.end method
