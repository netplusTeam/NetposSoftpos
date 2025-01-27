.class final Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
.super Ljava/lang/Object;
.source "NonBlockingIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CHM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeK:",
        "Ljava/lang/Object;",
        "TypeV:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final _copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;",
            ">;"
        }
    .end annotation
.end field

.field private static final _copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;",
            ">;"
        }
    .end annotation
.end field

.field private static final _resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile _copyDone:J

.field volatile _copyIdx:J

.field volatile _newkvs:[Ljava/lang/Object;

.field private final _newkvsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile _resizers:J

.field private final _size:Lorg/jctools/maps/ConcurrentAutoTable;

.field private final _slots:Lorg/jctools/maps/ConcurrentAutoTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 687
    const-class v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    const-class v1, Lorg/jctools/maps/NonBlockingIdentityHashMap;

    .line 735
    nop

    .line 736
    const-string v1, "_resizers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 866
    nop

    .line 867
    const-string v1, "_copyIdx"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 873
    nop

    .line 874
    const-string v1, "_copyDone"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 873
    return-void
.end method

.method constructor <init>(Lorg/jctools/maps/ConcurrentAutoTable;)V
    .locals 3
    .param p1, "size"    # Lorg/jctools/maps/ConcurrentAutoTable;

    .line 740
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM<TTypeK;TTypeV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    const-class v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    const-class v1, [Ljava/lang/Object;

    .line 714
    const-string v2, "_newkvs"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 865
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyIdx:J

    .line 872
    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyDone:J

    .line 741
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 742
    new-instance v0, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v0}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 743
    return-void
.end method

.method static synthetic access$000(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    .param p1, "x1"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .line 687
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->copy_slot_and_check(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    .line 687
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    .param p1, "x1"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p2, "x2"    # [Ljava/lang/Object;

    .line 687
    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->resize(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;II)Z
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 687
    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->tableFull(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    .line 687
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    .param p1, "x1"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # Z

    .line 687
    invoke-direct {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->help_copy_impl(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Z)V

    return-void
.end method

.method private final copy_check_and_promote(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;I)V
    .locals 10
    .param p1, "topmap"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p2, "oldkvs"    # [Ljava/lang/Object;
    .param p3, "workdone"    # I

    .line 958
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM<TTypeK;TTypeV;>;"
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v0

    if-ne v0, p0, :cond_4

    .line 959
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$800([Ljava/lang/Object;)I

    move-result v0

    .line 961
    .local v0, "oldlen":I
    iget-wide v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyDone:J

    .line 962
    .local v1, "copyDone":J
    int-to-long v3, p3

    add-long/2addr v3, v1

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 963
    if-lez p3, :cond_1

    .line 964
    :goto_0
    sget-object v4, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v5, p3

    add-long v8, v1, v5

    move-object v5, p0

    move-wide v6, v1

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 965
    iget-wide v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyDone:J

    .line 966
    int-to-long v3, p3

    add-long/2addr v3, v1

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 975
    :cond_1
    int-to-long v3, p3

    add-long/2addr v3, v1

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 976
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1100(Lorg/jctools/maps/NonBlockingIdentityHashMap;)[Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_2

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 978
    invoke-static {p1, p2, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1200(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 979
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$902(Lorg/jctools/maps/NonBlockingIdentityHashMap;J)J

    .line 984
    :cond_2
    return-void

    .line 962
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 958
    .end local v0    # "oldlen":I
    .end local v1    # "copyDone":J
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private copy_slot(Lorg/jctools/maps/NonBlockingIdentityHashMap;I[Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p1, "topmap"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p2, "idx"    # I
    .param p3, "oldkvs"    # [Ljava/lang/Object;
    .param p4, "newkvs"    # [Ljava/lang/Object;

    .line 1004
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM<TTypeK;TTypeV;>;"
    :goto_0
    invoke-static {p3, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1300([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "key":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1005
    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1400()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, p2, v2, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1500([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1010
    :cond_0
    invoke-static {p3, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1600([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 1011
    .local v0, "oldval":Ljava/lang/Object;
    :goto_1
    instance-of v3, v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    const/4 v4, 0x1

    if-nez v3, :cond_5

    .line 1012
    if-eqz v0, :cond_2

    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1400()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    invoke-direct {v3, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    :goto_2
    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1700()Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    move-result-object v3

    .line 1013
    .local v3, "box":Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;
    :goto_3
    invoke-static {p3, p2, v0, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1800([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1020
    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1700()Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    move-result-object v5

    if-ne v3, v5, :cond_3

    .line 1021
    return v4

    .line 1024
    :cond_3
    move-object v0, v3

    .line 1025
    goto :goto_4

    .line 1027
    :cond_4
    invoke-static {p3, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1600([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 1028
    .end local v3    # "box":Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;
    goto :goto_1

    .line 1029
    :cond_5
    :goto_4
    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1700()Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    move-result-object v3

    const/4 v5, 0x0

    if-ne v0, v3, :cond_6

    return v5

    .line 1038
    :cond_6
    move-object v3, v0

    check-cast v3, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    iget-object v3, v3, Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;->_V:Ljava/lang/Object;

    .line 1039
    .local v3, "old_unboxed":Ljava/lang/Object;
    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1400()Ljava/lang/Object;

    move-result-object v6

    if-eq v3, v6, :cond_9

    .line 1040
    invoke-static {p1, p4, v1, v3, v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1900(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    move v4, v5

    :goto_5
    move v2, v4

    .line 1047
    .local v2, "copied_into_new":Z
    :goto_6
    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1700()Lorg/jctools/maps/NonBlockingIdentityHashMap$Prime;

    move-result-object v4

    invoke-static {p3, p2, v0, v4}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1800([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1048
    invoke-static {p3, p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1600([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    .line 1050
    :cond_8
    return v2

    .line 1039
    .end local v2    # "copied_into_new":Z
    :cond_9
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private final copy_slot_and_check(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "topmap"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p2, "oldkvs"    # [Ljava/lang/Object;
    .param p3, "idx"    # I
    .param p4, "should_help"    # Ljava/lang/Object;

    .line 945
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM<TTypeK;TTypeV;>;"
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 946
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 949
    .local v0, "newkvs":[Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 950
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    invoke-direct {p0, p1, p3, p2, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->copy_slot(Lorg/jctools/maps/NonBlockingIdentityHashMap;I[Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 951
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->copy_check_and_promote(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;I)V

    .line 953
    :cond_0
    if-nez p4, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1000(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 949
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 945
    .end local v0    # "newkvs":[Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private final help_copy_impl(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Z)V
    .locals 15
    .param p1, "topmap"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p2, "oldkvs"    # [Ljava/lang/Object;
    .param p3, "copy_all"    # Z

    .line 881
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM<TTypeK;TTypeV;>;"
    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static/range {p2 .. p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v0

    if-ne v0, v6, :cond_9

    .line 882
    iget-object v9, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 883
    .local v9, "newkvs":[Ljava/lang/Object;
    if-eqz v9, :cond_8

    .line 884
    invoke-static/range {p2 .. p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$800([Ljava/lang/Object;)I

    move-result v10

    .line 885
    .local v10, "oldlen":I
    const/16 v0, 0x400

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 888
    .local v11, "MIN_COPY_WORK":I
    const/4 v0, -0x1

    .line 889
    .local v0, "panic_start":I
    const/16 v1, -0x270f

    move v12, v0

    .line 890
    .end local v0    # "panic_start":I
    .local v1, "copyidx":I
    .local v12, "panic_start":I
    :goto_0
    iget-wide v2, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyDone:J

    int-to-long v4, v10

    cmp-long v0, v2, v4

    if-gez v0, :cond_7

    .line 901
    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    .line 902
    iget-wide v2, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyIdx:J

    long-to-int v0, v2

    move v14, v0

    .line 903
    .end local v1    # "copyidx":I
    .local v14, "copyidx":I
    :goto_1
    shl-int/lit8 v0, v10, 0x1

    if-ge v14, v0, :cond_0

    sget-object v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v2, v14

    add-int v1, v14, v11

    int-to-long v4, v1

    .line 904
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    iget-wide v0, v6, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_copyIdx:J

    long-to-int v14, v0

    goto :goto_1

    .line 906
    :cond_0
    shl-int/lit8 v0, v10, 0x1

    if-lt v14, v0, :cond_1

    .line 907
    move v0, v14

    move v12, v0

    move v1, v14

    .end local v12    # "panic_start":I
    .restart local v0    # "panic_start":I
    goto :goto_2

    .line 906
    .end local v0    # "panic_start":I
    .restart local v12    # "panic_start":I
    :cond_1
    move v1, v14

    .line 911
    .end local v14    # "copyidx":I
    .restart local v1    # "copyidx":I
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 912
    .local v0, "workdone":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v11, :cond_4

    .line 913
    add-int v3, v1, v2

    add-int/lit8 v4, v10, -0x1

    and-int/2addr v3, v4

    invoke-direct {p0, v7, v3, v8, v9}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->copy_slot(Lorg/jctools/maps/NonBlockingIdentityHashMap;I[Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 914
    add-int/lit8 v0, v0, 0x1

    .line 912
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 915
    .end local v2    # "i":I
    :cond_4
    if-lez v0, :cond_5

    .line 916
    invoke-direct {p0, v7, v8, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->copy_check_and_promote(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;I)V

    .line 921
    :cond_5
    add-int/2addr v1, v11

    .line 924
    if-nez p3, :cond_6

    if-ne v12, v13, :cond_6

    .line 925
    return-void

    .line 926
    .end local v0    # "workdone":I
    :cond_6
    goto :goto_0

    .line 929
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v7, v8, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->copy_check_and_promote(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;I)V

    .line 930
    return-void

    .line 883
    .end local v1    # "copyidx":I
    .end local v10    # "oldlen":I
    .end local v11    # "MIN_COPY_WORK":I
    .end local v12    # "panic_start":I
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 881
    .end local v9    # "newkvs":[Ljava/lang/Object;
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private final resize(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 19
    .param p1, "topmap"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;
    .param p2, "kvs"    # [Ljava/lang/Object;

    .line 769
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM<TTypeK;TTypeV;>;"
    move-object/from16 v7, p0

    invoke-static/range {p2 .. p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v0

    if-ne v0, v7, :cond_c

    .line 772
    iget-object v0, v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 773
    .local v0, "newkvs":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 774
    return-object v0

    .line 777
    :cond_0
    invoke-static/range {p2 .. p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$800([Ljava/lang/Object;)I

    move-result v8

    .line 778
    .local v8, "oldlen":I
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->size()I

    move-result v9

    .line 779
    .local v9, "sz":I
    move v1, v9

    .line 783
    .local v1, "newsz":I
    shr-int/lit8 v2, v8, 0x2

    if-lt v9, v2, :cond_1

    .line 784
    shl-int/lit8 v1, v8, 0x1

    .line 785
    shr-int/lit8 v2, v8, 0x1

    if-lt v9, v2, :cond_1

    .line 786
    shl-int/lit8 v1, v8, 0x2

    .line 795
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 796
    .local v10, "tm":J
    const-wide/16 v2, 0x0

    .line 797
    .local v2, "q":J
    if-gt v1, v8, :cond_3

    .line 798
    invoke-static/range {p1 .. p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$900(Lorg/jctools/maps/NonBlockingIdentityHashMap;)J

    move-result-wide v4

    const-wide/16 v12, 0x2710

    add-long/2addr v4, v12

    cmp-long v4, v10, v4

    if-gtz v4, :cond_3

    iget-object v4, v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 799
    invoke-virtual {v4}, Lorg/jctools/maps/ConcurrentAutoTable;->estimate_get()J

    move-result-wide v4

    move-wide v2, v4

    shl-int/lit8 v6, v9, 0x1

    int-to-long v12, v6

    cmp-long v4, v4, v12

    if-ltz v4, :cond_2

    .line 800
    shl-int/lit8 v1, v8, 0x1

    move-wide v12, v2

    goto :goto_0

    .line 799
    :cond_2
    move-wide v12, v2

    goto :goto_0

    .line 803
    :cond_3
    move-wide v12, v2

    .end local v2    # "q":J
    .local v12, "q":J
    :goto_0
    if-ge v1, v8, :cond_4

    move v1, v8

    :cond_4
    move v14, v1

    .line 807
    .end local v1    # "newsz":I
    .local v14, "newsz":I
    const/4 v1, 0x3

    move v15, v1

    .local v15, "log2":I
    :goto_1
    const/16 v16, 0x1

    shl-int v1, v16, v15

    if-ge v1, v14, :cond_5

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 812
    :cond_5
    iget-wide v1, v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_resizers:J

    move-wide/from16 v17, v1

    .line 813
    .local v17, "r":J
    :goto_2
    sget-object v1, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v2, 0x1

    add-long v5, v17, v2

    move-object/from16 v2, p0

    move-wide/from16 v3, v17

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-nez v1, :cond_6

    .line 814
    iget-wide v1, v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_resizers:J

    move-wide/from16 v17, v1

    .end local v17    # "r":J
    .local v1, "r":J
    goto :goto_2

    .line 818
    .end local v1    # "r":J
    .restart local v17    # "r":J
    :cond_6
    shl-int v1, v16, v15

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x4

    shl-int/lit8 v1, v1, 0x3

    shr-int/lit8 v1, v1, 0x14

    .line 819
    .local v1, "megs":I
    const-wide/16 v2, 0x2

    cmp-long v2, v17, v2

    if-ltz v2, :cond_8

    if-lez v1, :cond_8

    .line 820
    iget-object v2, v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 821
    .end local v0    # "newkvs":[Ljava/lang/Object;
    .local v2, "newkvs":[Ljava/lang/Object;
    if-eqz v2, :cond_7

    .line 822
    return-object v2

    .line 828
    :cond_7
    mul-int/lit8 v0, v1, 0x8

    int-to-long v3, v0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 832
    :goto_3
    move-object v0, v2

    .end local v2    # "newkvs":[Ljava/lang/Object;
    .restart local v0    # "newkvs":[Ljava/lang/Object;
    :cond_8
    iget-object v0, v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 833
    if-eqz v0, :cond_9

    .line 834
    return-object v0

    .line 837
    :cond_9
    shl-int v2, v16, v15

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    .line 838
    const/4 v2, 0x0

    new-instance v3, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    iget-object v4, v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v3, v4}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;-><init>(Lorg/jctools/maps/ConcurrentAutoTable;)V

    aput-object v3, v0, v2

    .line 839
    shl-int v2, v16, v15

    new-array v2, v2, [I

    aput-object v2, v0, v16

    .line 842
    iget-object v2, v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 843
    iget-object v2, v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    return-object v2

    .line 847
    :cond_a
    invoke-virtual {v7, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->CAS_newkvs([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 852
    invoke-virtual/range {p1 .. p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->rehash()V

    goto :goto_4

    .line 854
    :cond_b
    iget-object v0, v7, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 855
    :goto_4
    return-object v0

    .line 769
    .end local v0    # "newkvs":[Ljava/lang/Object;
    .end local v1    # "megs":I
    .end local v8    # "oldlen":I
    .end local v9    # "sz":I
    .end local v10    # "tm":J
    .end local v12    # "q":J
    .end local v14    # "newsz":I
    .end local v15    # "log2":I
    .end local v17    # "r":J
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private final tableFull(II)Z
    .locals 4
    .param p1, "reprobe_cnt"    # I
    .param p2, "len"    # I

    .line 755
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM<TTypeK;TTypeV;>;"
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 759
    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->estimate_get()J

    move-result-wide v0

    invoke-static {p2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$600(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 755
    :goto_0
    return v0
.end method


# virtual methods
.method CAS_newkvs([Ljava/lang/Object;)Z
    .locals 2
    .param p1, "newkvs"    # [Ljava/lang/Object;

    .line 717
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM<TTypeK;TTypeV;>;"
    :cond_0
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 718
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    const/4 v0, 0x1

    return v0

    .line 720
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 2

    .line 690
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public slots()I
    .locals 2

    .line 703
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
