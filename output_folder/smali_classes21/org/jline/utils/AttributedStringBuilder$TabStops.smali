.class Lorg/jline/utils/AttributedStringBuilder$TabStops;
.super Ljava/lang/Object;
.source "AttributedStringBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/utils/AttributedStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabStops"
.end annotation


# instance fields
.field private lastSize:I

.field private lastStop:I

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jline/utils/AttributedStringBuilder;


# direct methods
.method public constructor <init>(Lorg/jline/utils/AttributedStringBuilder;I)V
    .locals 0
    .param p2, "tabs"    # I

    .line 426
    iput-object p1, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->this$0:Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->tabs:Ljava/util/List;

    .line 423
    const/4 p1, 0x0

    iput p1, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->lastStop:I

    .line 424
    iput p1, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->lastSize:I

    .line 427
    iput p2, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->lastSize:I

    .line 428
    return-void
.end method

.method public constructor <init>(Lorg/jline/utils/AttributedStringBuilder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 430
    .local p2, "tabs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->this$0:Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->tabs:Ljava/util/List;

    .line 423
    const/4 p1, 0x0

    iput p1, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->lastStop:I

    .line 424
    iput p1, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->lastSize:I

    .line 431
    iput-object p2, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->tabs:Ljava/util/List;

    .line 432
    const/4 p1, 0x0

    .line 433
    .local p1, "p":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 434
    .local v1, "s":I
    if-gt v1, p1, :cond_0

    .line 435
    goto :goto_0

    .line 437
    :cond_0
    iput v1, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->lastStop:I

    .line 438
    sub-int v2, v1, p1

    iput v2, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->lastSize:I

    .line 439
    move p1, v1

    .line 440
    .end local v1    # "s":I
    goto :goto_0

    .line 441
    :cond_1
    return-void
.end method


# virtual methods
.method defined()Z
    .locals 1

    .line 444
    iget v0, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->lastSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method spaces(I)I
    .locals 3
    .param p1, "lastLineLength"    # I

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "out":I
    iget v1, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->lastStop:I

    if-lt p1, v1, :cond_0

    .line 450
    iget v2, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->lastSize:I

    sub-int v1, p1, v1

    rem-int/2addr v1, v2

    sub-int v0, v2, v1

    goto :goto_1

    .line 452
    :cond_0
    iget-object v1, p0, Lorg/jline/utils/AttributedStringBuilder$TabStops;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 453
    .local v2, "s":I
    if-le v2, p1, :cond_1

    .line 454
    sub-int v0, v2, p1

    .line 455
    goto :goto_1

    .line 457
    .end local v2    # "s":I
    :cond_1
    goto :goto_0

    .line 459
    :cond_2
    :goto_1
    return v0
.end method
