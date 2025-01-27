.class Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
.super Ljava/lang/Object;
.source "PackedOffsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/PackedOffsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Iterator"
.end annotation


# instance fields
.field private index:I

.field private priorVal:J

.field final synthetic this$0:Lcom/sleepycat/je/cleaner/PackedOffsets;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/cleaner/PackedOffsets;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/cleaner/PackedOffsets;

    .line 122
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->this$0:Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/cleaner/PackedOffsets;Lcom/sleepycat/je/cleaner/PackedOffsets$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/cleaner/PackedOffsets;
    .param p2, "x1"    # Lcom/sleepycat/je/cleaner/PackedOffsets$1;

    .line 117
    invoke-direct {p0, p1}, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;-><init>(Lcom/sleepycat/je/cleaner/PackedOffsets;)V

    return-void
.end method


# virtual methods
.method hasNext()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->this$0:Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/PackedOffsets;->access$100(Lcom/sleepycat/je/cleaner/PackedOffsets;)[S

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->index:I

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->this$0:Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-static {v1}, Lcom/sleepycat/je/cleaner/PackedOffsets;->access$100(Lcom/sleepycat/je/cleaner/PackedOffsets;)[S

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method next()J
    .locals 7

    .line 130
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->priorVal:J

    .line 131
    .local v0, "val":J
    const/4 v2, 0x0

    .line 132
    .local v2, "shift":I
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->this$0:Lcom/sleepycat/je/cleaner/PackedOffsets;

    invoke-static {v3}, Lcom/sleepycat/je/cleaner/PackedOffsets;->access$100(Lcom/sleepycat/je/cleaner/PackedOffsets;)[S

    move-result-object v3

    iget v4, p0, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->index:I

    aget-short v3, v3, v4

    int-to-long v3, v3

    .line 133
    .local v3, "s":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 134
    const-wide/16 v5, -0x1

    sub-long/2addr v5, v3

    shl-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 131
    .end local v3    # "s":J
    add-int/lit8 v2, v2, 0xf

    goto :goto_0

    .line 136
    .restart local v3    # "s":J
    :cond_0
    shl-long v5, v3, v2

    add-long/2addr v0, v5

    .line 137
    nop

    .line 140
    .end local v2    # "shift":I
    .end local v3    # "s":J
    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->priorVal:J

    .line 141
    return-wide v0
.end method
