.class Lcom/itextpdf/signatures/SignatureUtil$SorterComparator;
.super Ljava/lang/Object;
.source "SignatureUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/SignatureUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SorterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/signatures/SignatureUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itextpdf/signatures/SignatureUtil$1;

    .line 435
    invoke-direct {p0}, Lcom/itextpdf/signatures/SignatureUtil$SorterComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 435
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/signatures/SignatureUtil$SorterComparator;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3
    .param p1, "o1"    # [Ljava/lang/Object;
    .param p2, "o2"    # [Ljava/lang/Object;

    .line 438
    const/4 v0, 0x1

    aget-object v1, p1, v0

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 439
    .local v1, "n1":I
    aget-object v0, p2, v0

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v2

    .line 440
    .local v0, "n2":I
    sub-int v2, v1, v0

    return v2
.end method
