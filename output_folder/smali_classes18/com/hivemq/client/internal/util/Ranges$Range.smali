.class Lcom/hivemq/client/internal/util/Ranges$Range;
.super Ljava/lang/Object;
.source "Ranges.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/util/Ranges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field end:I

.field next:Lcom/hivemq/client/internal/util/Ranges$Range;

.field start:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    .line 124
    iput p2, p0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    .line 125
    return-void
.end method

.method constructor <init>(IILcom/hivemq/client/internal/util/Ranges$Range;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "next"    # Lcom/hivemq/client/internal/util/Ranges$Range;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    .line 129
    iput p2, p0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    .line 130
    iput-object p3, p0, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    .line 131
    return-void
.end method
