.class public Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;
.super Ljava/lang/Object;
.source "SortedLSNTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "INEntry"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final in:Lcom/sleepycat/je/tree/IN;

.field final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    const-class v0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/tree/IN;I)V
    .locals 1
    .param p1, "in"    # Lcom/sleepycat/je/tree/IN;
    .param p2, "index"    # I

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    if-eqz p1, :cond_1

    .line 177
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iput-object p1, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;->in:Lcom/sleepycat/je/tree/IN;

    .line 179
    iput p2, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;->index:I

    .line 180
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/SizeofMarker;)V
    .locals 1
    .param p1, "marker"    # Lcom/sleepycat/je/utilint/SizeofMarker;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;->in:Lcom/sleepycat/je/tree/IN;

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$INEntry;->index:I

    .line 185
    return-void
.end method


# virtual methods
.method getDelta()Ljava/lang/Object;
    .locals 1

    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method getDeltaLsn()J
    .locals 2

    .line 192
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method getMemorySize()J
    .locals 2

    .line 196
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHMAP_ENTRY_OVERHEAD:I

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->INENTRY_OVERHEAD:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
