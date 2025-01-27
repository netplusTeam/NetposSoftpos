.class public Lcom/sleepycat/je/cleaner/OffsetList$Segment;
.super Ljava/lang/Object;
.source "OffsetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/OffsetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Segment"
.end annotation


# instance fields
.field private index:I

.field private next:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->values:[I

    .line 162
    return-void
.end method


# virtual methods
.method add(J)Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    .locals 5
    .param p1, "value"    # J

    .line 169
    iget v0, p0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->index:I

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->values:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    .line 175
    long-to-int v2, p1

    aput v2, v1, v0

    .line 176
    add-int/2addr v0, v3

    iput v0, p0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->index:I

    .line 177
    return-object p0

    .line 185
    :cond_0
    new-instance v0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    invoke-direct {v0}, Lcom/sleepycat/je/cleaner/OffsetList$Segment;-><init>()V

    .line 186
    .local v0, "seg":Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    iget-object v1, v0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->values:[I

    const/4 v2, 0x0

    long-to-int v4, p1

    aput v4, v1, v2

    .line 187
    iput v3, v0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->index:I

    .line 188
    iput-object v0, p0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->next:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    .line 189
    return-object v0
.end method

.method get(I)J
    .locals 4
    .param p1, "i"    # I

    .line 197
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->values:[I

    aget v0, v0, p1

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    return-wide v0
.end method

.method next()Lcom/sleepycat/je/cleaner/OffsetList$Segment;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->next:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    return-object v0
.end method

.method setNext(Lcom/sleepycat/je/cleaner/OffsetList$Segment;)V
    .locals 0
    .param p1, "next"    # Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    .line 211
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->next:Lcom/sleepycat/je/cleaner/OffsetList$Segment;

    .line 212
    return-void
.end method

.method size()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/sleepycat/je/cleaner/OffsetList$Segment;->index:I

    return v0
.end method
