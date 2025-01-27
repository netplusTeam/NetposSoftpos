.class abstract Lorg/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;
.super Lorg/jctools/queues/BaseMpscLinkedArrayQueuePad2;
.source "BaseMpscLinkedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseMpscLinkedArrayQueuePad2<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final C_INDEX_OFFSET:J


# instance fields
.field protected consumerBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected consumerIndex:J

.field protected consumerMask:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    const-class v0, Lorg/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->C_INDEX_OFFSET:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 70
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields<TE;>;"
    invoke-direct {p0}, Lorg/jctools/queues/BaseMpscLinkedArrayQueuePad2;-><init>()V

    return-void
.end method


# virtual methods
.method public final lvConsumerIndex()J
    .locals 3

    .line 81
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lorg/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->C_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final soConsumerIndex(J)V
    .locals 6
    .param p1, "newValue"    # J

    .line 86
    .local p0, "this":Lorg/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;, "Lorg/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields<TE;>;"
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/queues/BaseMpscLinkedArrayQueueConsumerFields;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 87
    return-void
.end method
