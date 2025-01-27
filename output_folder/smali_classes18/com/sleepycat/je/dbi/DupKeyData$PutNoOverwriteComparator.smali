.class public Lcom/sleepycat/je/dbi/DupKeyData$PutNoOverwriteComparator;
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
    name = "PutNoOverwriteComparator"
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

    .line 353
    .local p1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DupKeyData$PutNoOverwriteComparator;->btreeComparator:Ljava/util/Comparator;

    .line 355
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 348
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/dbi/DupKeyData$PutNoOverwriteComparator;->compare([B[B)I

    move-result p1

    return p1
.end method

.method public compare([B[B)I
    .locals 1
    .param p1, "twoPartKey1"    # [B
    .param p2, "twoPartKey2"    # [B

    .line 359
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DupKeyData$PutNoOverwriteComparator;->btreeComparator:Ljava/util/Comparator;

    invoke-static {p1, p2, v0}, Lcom/sleepycat/je/dbi/DupKeyData;->compareMainKey([B[BLjava/util/Comparator;)I

    move-result v0

    return v0
.end method
