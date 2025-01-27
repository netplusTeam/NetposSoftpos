.class public Lcom/sleepycat/je/dbi/DupKeyData$NextNoDupComparator;
.super Ljava/lang/Object;
.source "DupKeyData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DupKeyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NextNoDupComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final btreeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;)V"
        }
    .end annotation

    .line 330
    .local p1, "btreeComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DupKeyData$NextNoDupComparator;->btreeComparator:Ljava/util/Comparator;

    .line 332
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 326
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData$NextNoDupComparator;->compare([B[B)I

    move-result p1

    return p1
.end method

.method public compare([B[B)I
    .locals 2
    .param p1, "twoPartKey1"    # [B
    .param p2, "twoPartKey2"    # [B

    .line 336
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DupKeyData$NextNoDupComparator;->btreeComparator:Ljava/util/Comparator;

    invoke-static {p1, p2, v0}, Lcom/sleepycat/je/dbi/DupKeyData;->compareMainKey([B[BLjava/util/Comparator;)I

    move-result v0

    .line 338
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method
