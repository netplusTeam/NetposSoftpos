.class public Lcom/sleepycat/je/cleaner/OffsetList;
.super Ljava/lang/Object;
.source "OffsetList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final SEGMENT_CAPACITY:I = 0x64

.field static final TOO_BIG_FOR_SELF_CHECK:I = 0x64


# instance fields
.field private head:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

.field private size:I

.field private tail:Lcom/sleepycat/je/cleaner/OffsetList$Segment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    invoke-direct {v0}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/OffsetList;->head:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    .line 53
    iput-object v0, p0, Lcom/sleepycat/je/cleaner/OffsetList;->tail:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    .line 54
    return-void
.end method


# virtual methods
.method public add(JZ)Z
    .locals 4
    .param p1, "value"    # J
    .param p3, "checkDupOffsets"    # Z

    .line 62
    if-eqz p3, :cond_1

    iget v0, p0, Lcom/sleepycat/je/cleaner/OffsetList;->size:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/cleaner/OffsetList;->contains(J)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dup Offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 66
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/OffsetList;->tail:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    .line 73
    .local v0, "oldTail":Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/OffsetList;->tail:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->add(J)Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/cleaner/OffsetList;->tail:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    .line 74
    iget v2, p0, Lcom/sleepycat/je/cleaner/OffsetList;->size:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sleepycat/je/cleaner/OffsetList;->size:I

    .line 75
    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method contains(J)Z
    .locals 4
    .param p1, "offset"    # J

    .line 138
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/OffsetList;->head:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    .local v0, "seg":Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    :goto_0
    if-eqz v0, :cond_2

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 140
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->get(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 141
    const/4 v2, 0x1

    return v2

    .line 139
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->next()Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    move-result-object v0

    goto :goto_0

    .line 146
    .end local v0    # "seg":Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method merge(Lcom/sleepycat/je/cleaner/OffsetList;)Z
    .locals 7
    .param p1, "other"    # Lcom/sleepycat/je/cleaner/OffsetList;

    .line 87
    const/4 v0, 0x1

    .line 88
    .local v0, "oneSegFreed":Z
    iget-object v1, p1, Lcom/sleepycat/je/cleaner/OffsetList;->head:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    .line 90
    .local v1, "seg":Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->next()Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    move-result-object v2

    .line 91
    .local v2, "next":Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    if-eqz v2, :cond_0

    .line 93
    iget-object v3, p0, Lcom/sleepycat/je/cleaner/OffsetList;->head:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->setNext(Lcom/sleepycat/je/cleaner/OffsetList$Segment;)V

    .line 94
    iput-object v1, p0, Lcom/sleepycat/je/cleaner/OffsetList;->head:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    .line 95
    move-object v1, v2

    .line 106
    .end local v2    # "next":Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    goto :goto_0

    .line 98
    .restart local v2    # "next":Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 99
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->get(I)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/sleepycat/je/cleaner/OffsetList;->add(JZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    const/4 v0, 0x0

    .line 98
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104
    .end local v3    # "i":I
    :cond_2
    nop

    .line 107
    .end local v2    # "next":Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    return v0
.end method

.method public size()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/sleepycat/je/cleaner/OffsetList;->size:I

    return v0
.end method

.method public toArray()[J
    .locals 6

    .line 117
    iget v0, p0, Lcom/sleepycat/je/cleaner/OffsetList;->size:I

    new-array v0, v0, [J

    .line 118
    .local v0, "a":[J
    const/4 v1, 0x0

    .line 120
    .local v1, "next":I
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/OffsetList;->head:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    .local v2, "seg":Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    :goto_0
    if-eqz v2, :cond_2

    .line 121
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 122
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 123
    goto :goto_2

    .line 125
    :cond_0
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->get(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->next()Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    move-result-object v2

    goto :goto_0

    .line 130
    .end local v2    # "seg":Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    :cond_2
    :goto_2
    return-object v0
.end method
