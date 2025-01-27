.class public Lcom/itextpdf/layout/font/RangeBuilder;
.super Ljava/lang/Object;
.source "RangeBuilder.java"


# static fields
.field private static final fullRangeSingleton:Lcom/itextpdf/layout/font/Range;


# instance fields
.field private ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/font/Range$SubRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/itextpdf/layout/font/Range$FullRange;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/Range$FullRange;-><init>()V

    sput-object v0, Lcom/itextpdf/layout/font/RangeBuilder;->fullRangeSingleton:Lcom/itextpdf/layout/font/Range;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/font/RangeBuilder;->ranges:Ljava/util/List;

    .line 71
    return-void
.end method

.method public constructor <init>(C)V
    .locals 0
    .param p1, "ch"    # C

    .line 108
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/font/RangeBuilder;-><init>(I)V

    .line 109
    return-void
.end method

.method public constructor <init>(CC)V
    .locals 0
    .param p1, "low"    # C
    .param p2, "high"    # C

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/font/RangeBuilder;-><init>(II)V

    .line 100
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "n"    # I

    .line 89
    invoke-direct {p0, p1, p1}, Lcom/itextpdf/layout/font/RangeBuilder;-><init>(II)V

    .line 90
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/font/RangeBuilder;->ranges:Ljava/util/List;

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/font/RangeBuilder;->addRange(II)Lcom/itextpdf/layout/font/RangeBuilder;

    .line 81
    return-void
.end method

.method static getFullRange()Lcom/itextpdf/layout/font/Range;
    .locals 1

    .line 63
    sget-object v0, Lcom/itextpdf/layout/font/RangeBuilder;->fullRangeSingleton:Lcom/itextpdf/layout/font/Range;

    return-object v0
.end method


# virtual methods
.method public addRange(C)Lcom/itextpdf/layout/font/RangeBuilder;
    .locals 1
    .param p1, "ch"    # C

    .line 154
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/font/RangeBuilder;->addRange(I)Lcom/itextpdf/layout/font/RangeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addRange(CC)Lcom/itextpdf/layout/font/RangeBuilder;
    .locals 1
    .param p1, "low"    # C
    .param p2, "high"    # C

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/font/RangeBuilder;->addRange(II)Lcom/itextpdf/layout/font/RangeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addRange(I)Lcom/itextpdf/layout/font/RangeBuilder;
    .locals 1
    .param p1, "n"    # I

    .line 144
    invoke-virtual {p0, p1, p1}, Lcom/itextpdf/layout/font/RangeBuilder;->addRange(II)Lcom/itextpdf/layout/font/RangeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addRange(II)Lcom/itextpdf/layout/font/RangeBuilder;
    .locals 2
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 119
    if-lt p2, p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/itextpdf/layout/font/RangeBuilder;->ranges:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/layout/font/Range$SubRange;

    invoke-direct {v1, p1, p2}, Lcom/itextpdf/layout/font/Range$SubRange;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-object p0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'from\' shall be less than \'to\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create()Lcom/itextpdf/layout/font/Range;
    .locals 2

    .line 164
    new-instance v0, Lcom/itextpdf/layout/font/Range;

    iget-object v1, p0, Lcom/itextpdf/layout/font/RangeBuilder;->ranges:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/font/Range;-><init>(Ljava/util/List;)V

    return-object v0
.end method
