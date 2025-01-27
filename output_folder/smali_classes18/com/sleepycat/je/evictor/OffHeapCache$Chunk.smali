.class Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;
.super Ljava/lang/Object;
.source "OffHeapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/OffHeapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Chunk"
.end annotation


# instance fields
.field final memIds:[J

.field final next:[I

.field final owners:[Lcom/sleepycat/je/tree/IN;

.field final prev:[I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    const v0, 0x19000

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->memIds:[J

    .line 368
    new-array v1, v0, [Lcom/sleepycat/je/tree/IN;

    iput-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->owners:[Lcom/sleepycat/je/tree/IN;

    .line 369
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->prev:[I

    .line 370
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$Chunk;->next:[I

    .line 371
    return-void
.end method
