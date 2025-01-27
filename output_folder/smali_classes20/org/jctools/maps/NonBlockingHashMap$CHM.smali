.class final Lorg/jctools/maps/NonBlockingHashMap$CHM;
.super Ljava/lang/Object;
.source "NonBlockingHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingHashMap;
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
            "Lorg/jctools/maps/NonBlockingHashMap$CHM;",
            ">;"
        }
    .end annotation
.end field

.field private static final _copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingHashMap$CHM;",
            ">;"
        }
    .end annotation
.end field

.field private static final _newkvsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingHashMap$CHM;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final _resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lorg/jctools/maps/NonBlockingHashMap$CHM;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile _copyDone:J

.field volatile _copyIdx:J

.field volatile _newkvs:[Ljava/lang/Object;

.field volatile _resizers:J

.field private final _size:Lorg/jctools/maps/ConcurrentAutoTable;

.field private final _slots:Lorg/jctools/maps/ConcurrentAutoTable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 813
    const-class v0, Lorg/jctools/maps/NonBlockingHashMap$CHM;

    const-class v1, Lorg/jctools/maps/NonBlockingHashMap;

    .line 839
    const-class v1, [Ljava/lang/Object;

    .line 840
    const-string v2, "_newkvs"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 862
    nop

    .line 863
    const-string v1, "_resizers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1007
    nop

    .line 1008
    const-string v1, "_copyIdx"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1014
    nop

    .line 1015
    const-string v1, "_copyDone"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1014
    return-void
.end method

.method constructor <init>(Lorg/jctools/maps/ConcurrentAutoTable;)V
    .locals 2
    .param p1, "size"    # Lorg/jctools/maps/ConcurrentAutoTable;

    .line 867
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$CHM;, "Lorg/jctools/maps/NonBlockingHashMap$CHM<TTypeK;TTypeV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_copyIdx:J

    .line 1013
    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_copyDone:J

    .line 868
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 869
    new-instance v0, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v0}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 870
    return-void
.end method

.method static synthetic access$000(Lorg/jctools/maps/NonBlockingHashMap$CHM;Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap$CHM;
    .param p1, "x1"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .line 813
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->copy_slot_and_check(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/jctools/maps/NonBlockingHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap$CHM;

    .line 813
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jctools/maps/NonBlockingHashMap$CHM;Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap$CHM;
    .param p1, "x1"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p2, "x2"    # [Ljava/lang/Object;

    .line 813
    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->resize(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/jctools/maps/NonBlockingHashMap$CHM;II)Z
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap$CHM;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 813
    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->tableFull(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/jctools/maps/NonBlockingHashMap$CHM;)Lorg/jctools/maps/ConcurrentAutoTable;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap$CHM;

    .line 813
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jctools/maps/NonBlockingHashMap$CHM;Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap$CHM;
    .param p1, "x1"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # Z

    .line 813
    invoke-direct {p0, p1, p2, p3}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->help_copy_impl(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Z)V

    return-void
.end method

.method private final copy_check_and_promote(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;I)V
    .locals 10
    .param p1, "topmap"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p2, "oldkvs"    # [Ljava/lang/Object;
    .param p3, "workdone"    # I

    .line 1098
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$CHM;, "Lorg/jctools/maps/NonBlockingHashMap$CHM<TTypeK;TTypeV;>;"
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingHashMap;->access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v0

    if-ne v0, p0, :cond_4

    .line 1099
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingHashMap;->access$800([Ljava/lang/Object;)I

    move-result v0

    .line 1101
    .local v0, "oldlen":I
    iget-wide v1, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_copyDone:J

    .line 1102
    .local v1, "copyDone":J
    int-to-long v3, p3

    add-long/2addr v3, v1

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 1103
    if-lez p3, :cond_1

    .line 1104
    :goto_0
    sget-object v4, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_copyDoneUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v5, p3

    add-long v8, v1, v5

    move-object v5, p0

    move-wide v6, v1

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1105
    iget-wide v1, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_copyDone:J

    .line 1106
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

    .line 1113
    :cond_1
    int-to-long v3, p3

    add-long/2addr v3, v1

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1114
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMap;->access$1100(Lorg/jctools/maps/NonBlockingHashMap;)[Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_2

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 1116
    invoke-static {p1, p2, v3}, Lorg/jctools/maps/NonBlockingHashMap;->access$1200(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1, v3, v4}, Lorg/jctools/maps/NonBlockingHashMap;->access$902(Lorg/jctools/maps/NonBlockingHashMap;J)J

    .line 1119
    :cond_2
    return-void

    .line 1102
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1098
    .end local v0    # "oldlen":I
    .end local v1    # "copyDone":J
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private copy_slot(Lorg/jctools/maps/NonBlockingHashMap;I[Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7
    .param p1, "topmap"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p2, "idx"    # I
    .param p3, "oldkvs"    # [Ljava/lang/Object;
    .param p4, "newkvs"    # [Ljava/lang/Object;

    .line 1138
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$CHM;, "Lorg/jctools/maps/NonBlockingHashMap$CHM<TTypeK;TTypeV;>;"
    :goto_0
    invoke-static {p3, p2}, Lorg/jctools/maps/NonBlockingHashMap;->access$1300([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "key":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1139
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    invoke-static {p3, p2, v2, v0}, Lorg/jctools/maps/NonBlockingHashMap;->access$1400([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1144
    :cond_0
    invoke-static {p3, p2}, Lorg/jctools/maps/NonBlockingHashMap;->access$1500([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 1145
    .local v0, "oldval":Ljava/lang/Object;
    :goto_1
    instance-of v3, v0, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    const/4 v4, 0x1

    if-nez v3, :cond_5

    .line 1146
    if-eqz v0, :cond_2

    sget-object v3, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    invoke-direct {v3, v0}, Lorg/jctools/maps/NonBlockingHashMap$Prime;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    :goto_2
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMap;->access$1600()Lorg/jctools/maps/NonBlockingHashMap$Prime;

    move-result-object v3

    .line 1147
    .local v3, "box":Lorg/jctools/maps/NonBlockingHashMap$Prime;
    :goto_3
    invoke-static {p3, p2, v0, v3}, Lorg/jctools/maps/NonBlockingHashMap;->access$1700([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1154
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMap;->access$1600()Lorg/jctools/maps/NonBlockingHashMap$Prime;

    move-result-object v5

    if-ne v3, v5, :cond_3

    .line 1155
    return v4

    .line 1158
    :cond_3
    move-object v0, v3

    .line 1159
    goto :goto_4

    .line 1161
    :cond_4
    invoke-static {p3, p2}, Lorg/jctools/maps/NonBlockingHashMap;->access$1500([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 1162
    .end local v3    # "box":Lorg/jctools/maps/NonBlockingHashMap$Prime;
    goto :goto_1

    .line 1163
    :cond_5
    :goto_4
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMap;->access$1600()Lorg/jctools/maps/NonBlockingHashMap$Prime;

    move-result-object v3

    const/4 v5, 0x0

    if-ne v0, v3, :cond_6

    return v5

    .line 1170
    :cond_6
    move-object v3, v0

    check-cast v3, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    iget-object v3, v3, Lorg/jctools/maps/NonBlockingHashMap$Prime;->_V:Ljava/lang/Object;

    .line 1171
    .local v3, "old_unboxed":Ljava/lang/Object;
    sget-object v6, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v3, v6, :cond_9

    .line 1172
    invoke-static {p1, p4, v1, v3, v2}, Lorg/jctools/maps/NonBlockingHashMap;->access$1800(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    :goto_5
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMap;->access$1600()Lorg/jctools/maps/NonBlockingHashMap$Prime;

    move-result-object v2

    if-eq v0, v2, :cond_7

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMap;->access$1600()Lorg/jctools/maps/NonBlockingHashMap$Prime;

    move-result-object v2

    invoke-static {p3, p2, v0, v2}, Lorg/jctools/maps/NonBlockingHashMap;->access$1700([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1180
    invoke-static {p3, p2}, Lorg/jctools/maps/NonBlockingHashMap;->access$1500([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 1182
    :cond_7
    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMap;->access$1600()Lorg/jctools/maps/NonBlockingHashMap$Prime;

    move-result-object v2

    if-eq v0, v2, :cond_8

    goto :goto_6

    :cond_8
    move v4, v5

    :goto_6
    return v4

    .line 1171
    :cond_9
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private final copy_slot_and_check(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "topmap"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p2, "oldkvs"    # [Ljava/lang/Object;
    .param p3, "idx"    # I
    .param p4, "should_help"    # Ljava/lang/Object;

    .line 1085
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$CHM;, "Lorg/jctools/maps/NonBlockingHashMap$CHM<TTypeK;TTypeV;>;"
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingHashMap;->access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 1086
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 1089
    .local v0, "newkvs":[Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 1090
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    invoke-direct {p0, p1, p3, p2, v1}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->copy_slot(Lorg/jctools/maps/NonBlockingHashMap;I[Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1091
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->copy_check_and_promote(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;I)V

    .line 1093
    :cond_0
    if-nez p4, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lorg/jctools/maps/NonBlockingHashMap;->access$1000(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1089
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1085
    .end local v0    # "newkvs":[Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private final help_copy_impl(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Z)V
    .locals 12
    .param p1, "topmap"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p2, "oldkvs"    # [Ljava/lang/Object;
    .param p3, "copy_all"    # Z

    .line 1022
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$CHM;, "Lorg/jctools/maps/NonBlockingHashMap$CHM<TTypeK;TTypeV;>;"
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingHashMap;->access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v0

    if-ne v0, p0, :cond_8

    .line 1023
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 1024
    .local v0, "newkvs":[Ljava/lang/Object;
    if-eqz v0, :cond_7

    .line 1025
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingHashMap;->access$800([Ljava/lang/Object;)I

    move-result v1

    .line 1026
    .local v1, "oldlen":I
    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1029
    .local v2, "MIN_COPY_WORK":I
    const/4 v3, -0x1

    .line 1030
    .local v3, "panic_start":I
    const/16 v4, -0x270f

    .line 1031
    .local v4, "copyidx":I
    :goto_0
    iget-wide v5, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_copyDone:J

    int-to-long v7, v1

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    .line 1042
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 1043
    iget-wide v6, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_copyIdx:J

    long-to-int v4, v6

    .line 1044
    :goto_1
    sget-object v6, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_copyIdxUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v8, v4

    add-int v7, v4, v2

    int-to-long v10, v7

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1045
    iget-wide v6, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_copyIdx:J

    long-to-int v4, v6

    goto :goto_1

    .line 1046
    :cond_0
    shl-int/lit8 v6, v1, 0x1

    if-lt v4, v6, :cond_1

    .line 1047
    move v3, v4

    .line 1051
    :cond_1
    const/4 v6, 0x0

    .line 1052
    .local v6, "workdone":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v2, :cond_3

    .line 1053
    add-int v8, v4, v7

    add-int/lit8 v9, v1, -0x1

    and-int/2addr v8, v9

    invoke-direct {p0, p1, v8, p2, v0}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->copy_slot(Lorg/jctools/maps/NonBlockingHashMap;I[Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1054
    add-int/lit8 v6, v6, 0x1

    .line 1052
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1055
    .end local v7    # "i":I
    :cond_3
    if-lez v6, :cond_4

    .line 1056
    invoke-direct {p0, p1, p2, v6}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->copy_check_and_promote(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;I)V

    .line 1061
    :cond_4
    add-int/2addr v4, v2

    .line 1064
    if-nez p3, :cond_5

    if-ne v3, v5, :cond_5

    .line 1065
    return-void

    .line 1066
    .end local v6    # "workdone":I
    :cond_5
    goto :goto_0

    .line 1069
    :cond_6
    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v5}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->copy_check_and_promote(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;I)V

    .line 1070
    return-void

    .line 1024
    .end local v1    # "oldlen":I
    .end local v2    # "MIN_COPY_WORK":I
    .end local v3    # "panic_start":I
    .end local v4    # "copyidx":I
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1022
    .end local v0    # "newkvs":[Ljava/lang/Object;
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private final resize(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 25
    .param p1, "topmap"    # Lorg/jctools/maps/NonBlockingHashMap;
    .param p2, "kvs"    # [Ljava/lang/Object;

    .line 897
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$CHM;, "Lorg/jctools/maps/NonBlockingHashMap$CHM<TTypeK;TTypeV;>;"
    move-object/from16 v7, p0

    invoke-static/range {p2 .. p2}, Lorg/jctools/maps/NonBlockingHashMap;->access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v0

    if-ne v0, v7, :cond_e

    .line 900
    iget-object v0, v7, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 901
    .local v0, "newkvs":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 902
    return-object v0

    .line 905
    :cond_0
    invoke-static/range {p2 .. p2}, Lorg/jctools/maps/NonBlockingHashMap;->access$800([Ljava/lang/Object;)I

    move-result v8

    .line 906
    .local v8, "oldlen":I
    invoke-virtual/range {p0 .. p0}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->size()I

    move-result v9

    .line 907
    .local v9, "sz":I
    move v1, v9

    .line 911
    .local v1, "newsz":I
    shr-int/lit8 v2, v8, 0x2

    const-wide/16 v10, 0x2

    if-lt v9, v2, :cond_2

    .line 912
    shl-int/lit8 v1, v8, 0x1

    .line 915
    const-wide/16 v2, 0x4

    int-to-long v4, v9

    mul-long/2addr v4, v2

    shr-int/lit8 v2, v8, 0x14

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x3

    goto :goto_0

    :cond_1
    move-wide v2, v10

    :goto_0
    int-to-long v12, v8

    mul-long/2addr v2, v12

    cmp-long v2, v4, v2

    if-ltz v2, :cond_2

    .line 916
    shl-int/lit8 v1, v8, 0x2

    .line 929
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 930
    .local v12, "tm":J
    if-gt v1, v8, :cond_3

    .line 931
    invoke-static/range {p1 .. p1}, Lorg/jctools/maps/NonBlockingHashMap;->access$900(Lorg/jctools/maps/NonBlockingHashMap;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v2, v12, v2

    if-gtz v2, :cond_3

    .line 932
    shl-int/lit8 v1, v8, 0x1

    .line 936
    :cond_3
    if-ge v1, v8, :cond_4

    move v1, v8

    :cond_4
    move v14, v1

    .line 940
    .end local v1    # "newsz":I
    .local v14, "newsz":I
    const/4 v1, 0x3

    .local v1, "log2":I
    :goto_1
    const/4 v15, 0x1

    shl-int v2, v15, v1

    if-ge v2, v14, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 941
    :cond_5
    const-wide/16 v16, 0x1

    shl-long v2, v16, v1

    shl-long/2addr v2, v15

    add-long/2addr v2, v10

    .line 944
    .local v2, "len":J
    long-to-int v4, v2

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_7

    .line 945
    const/16 v1, 0x1e

    .line 946
    shl-long v4, v16, v1

    add-long v2, v4, v10

    .line 947
    int-to-long v4, v9

    const/4 v6, 0x2

    shr-long v18, v2, v6

    shr-long v20, v2, v15

    add-long v18, v18, v20

    cmp-long v4, v4, v18

    if-gtz v4, :cond_6

    move/from16 v18, v1

    move-wide v5, v2

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Table is full."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 944
    :cond_7
    move/from16 v18, v1

    move-wide v5, v2

    .line 953
    .end local v1    # "log2":I
    .end local v2    # "len":J
    .local v5, "len":J
    .local v18, "log2":I
    :goto_2
    iget-wide v1, v7, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_resizers:J

    move-wide/from16 v19, v1

    .line 954
    .local v19, "r":J
    :goto_3
    sget-object v1, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_resizerUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    add-long v21, v19, v16

    move-object/from16 v2, p0

    move-wide/from16 v3, v19

    move-wide/from16 v23, v5

    .end local v5    # "len":J
    .local v23, "len":J
    move-wide/from16 v5, v21

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-nez v1, :cond_8

    .line 955
    iget-wide v1, v7, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_resizers:J

    move-wide/from16 v19, v1

    move-wide/from16 v5, v23

    .end local v19    # "r":J
    .local v1, "r":J
    goto :goto_3

    .line 959
    .end local v1    # "r":J
    .restart local v19    # "r":J
    :cond_8
    shl-long v1, v16, v18

    shl-long/2addr v1, v15

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    const/4 v3, 0x3

    shl-long/2addr v1, v3

    const/16 v3, 0x14

    shr-long/2addr v1, v3

    .line 960
    .local v1, "megs":J
    cmp-long v3, v19, v10

    if-ltz v3, :cond_a

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_a

    .line 961
    iget-object v3, v7, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 962
    .end local v0    # "newkvs":[Ljava/lang/Object;
    .local v3, "newkvs":[Ljava/lang/Object;
    if-eqz v3, :cond_9

    .line 963
    return-object v3

    .line 969
    :cond_9
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 973
    :goto_4
    move-object v0, v3

    .end local v3    # "newkvs":[Ljava/lang/Object;
    .restart local v0    # "newkvs":[Ljava/lang/Object;
    :cond_a
    iget-object v0, v7, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 974
    if-eqz v0, :cond_b

    .line 975
    return-object v0

    .line 978
    :cond_b
    move-wide/from16 v3, v23

    .end local v23    # "len":J
    .local v3, "len":J
    long-to-int v5, v3

    new-array v0, v5, [Ljava/lang/Object;

    .line 979
    const/4 v5, 0x0

    new-instance v6, Lorg/jctools/maps/NonBlockingHashMap$CHM;

    iget-object v10, v7, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v6, v10}, Lorg/jctools/maps/NonBlockingHashMap$CHM;-><init>(Lorg/jctools/maps/ConcurrentAutoTable;)V

    aput-object v6, v0, v5

    .line 980
    shl-int v5, v15, v18

    new-array v5, v5, [I

    aput-object v5, v0, v15

    .line 983
    iget-object v5, v7, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-eqz v5, :cond_c

    .line 984
    iget-object v5, v7, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    return-object v5

    .line 988
    :cond_c
    invoke-virtual {v7, v0}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->CAS_newkvs([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 993
    invoke-virtual/range {p1 .. p1}, Lorg/jctools/maps/NonBlockingHashMap;->rehash()V

    goto :goto_5

    .line 995
    :cond_d
    iget-object v0, v7, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    .line 996
    :goto_5
    return-object v0

    .line 897
    .end local v0    # "newkvs":[Ljava/lang/Object;
    .end local v1    # "megs":J
    .end local v3    # "len":J
    .end local v8    # "oldlen":I
    .end local v9    # "sz":I
    .end local v12    # "tm":J
    .end local v14    # "newsz":I
    .end local v18    # "log2":I
    .end local v19    # "r":J
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private final tableFull(II)Z
    .locals 4
    .param p1, "reprobe_cnt"    # I
    .param p2, "len"    # I

    .line 882
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$CHM;, "Lorg/jctools/maps/NonBlockingHashMap$CHM<TTypeK;TTypeV;>;"
    const/16 v0, 0xa

    if-lt p1, v0, :cond_1

    .line 885
    invoke-static {p2}, Lorg/jctools/maps/NonBlockingHashMap;->access$600(I)I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    .line 887
    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->estimate_get()J

    move-result-wide v0

    shr-int/lit8 v2, p2, 0x1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 882
    :goto_0
    return v0
.end method


# virtual methods
.method CAS_newkvs([Ljava/lang/Object;)Z
    .locals 2
    .param p1, "newkvs"    # [Ljava/lang/Object;

    .line 843
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$CHM;, "Lorg/jctools/maps/NonBlockingHashMap$CHM<TTypeK;TTypeV;>;"
    :cond_0
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 844
    sget-object v0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvsUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    const/4 v0, 0x1

    return v0

    .line 846
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 2

    .line 816
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$CHM;, "Lorg/jctools/maps/NonBlockingHashMap$CHM<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_size:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public slots()I
    .locals 2

    .line 829
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$CHM;, "Lorg/jctools/maps/NonBlockingHashMap$CHM<TTypeK;TTypeV;>;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_slots:Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
